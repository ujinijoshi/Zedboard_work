
//***************************** Include Files *********************************/
#include <stdio.h>
#include "platform.h"
#include "xparameters.h"
#include "xgpio_l.h"
#include "xbram.h"

#include "xil_exception.h"
#include "xfir.h"



void fir_start(){
	Xil_Out32(XPAR_FIR_0_S_AXI_AXILITES_BASEADDR, 0x80);
	}



//******************************************************************************/
int main()
{
	//init_platform();
	u32 Data[100];
	u32 Addr;
	u32 Number_Clks = 300;
	u32 hope_rate = 90000;
	int i=0,status;

	/*
	 * Hopping rate formula X clks = 100Mhz / hope rate
	 */
	Number_Clks = (100000000 / hope_rate) - 3;
	printf("\Number Clocks is . . . %d \n",Number_Clks);
	/*
	 * Set the direction for all signals to be output to FIR IP
	 * set those registers before ap_start
	 */
	Xil_Out32(XPAR_AXI_GPIO_1_BASEADDR, 0x2); //gpio 1 tones_size
	Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR, Number_Clks); //gpio 2 Timer Num_Clks
	Xil_Out32(XPAR_AXI_GPIO_3_BASEADDR, 0x0); //gpio 3 PPS signal for Timer

	Xil_Out32(XPAR_AXI_GPIO_4_BASEADDR, hope_rate); //gpio 3 PPS signal for Timer

	sleep(10);
	/*
	 * FIR IP
	 * Set bit 0  - ap_start	 ---> 01
	 * set bit 7  - auto_restart ---> 08
	*/

	for (Addr = XPAR_BRAM_0_BASEADDR;
			     Addr < XPAR_BRAM_0_BASEADDR+100; Addr+=4)
	{
				XBram_Out32(Addr,i);
				i++;
	}
	//initialization 3 start triggers (switch() in HLS)
	for(i=0;i<4;i++)
	{
	status = Xil_In32(XPAR_FIR_0_S_AXI_AXILITES_BASEADDR) >> 4;
	//if status is in auto mode (0x8) then dont start ip
	printf("\rPrev ap_start is . . . %x \n",status);
		if(status != 0x8)
		{
			Xil_Out32(XPAR_FIR_0_S_AXI_AXILITES_BASEADDR, 0x01);
		}
	sleep(1);
	}

	//sleep(3);


	fir_start();

	usleep(2);
	//scanf("Press Enter to continue . . .");
	Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0xf); //gpio 3 start signal for Timer
	//Xil_Out32(XPAR_AXI_GPIO_2_BASEADDR, Number_Clks); //gpio 2 Timer Num_Clks

	//Xil_Out32(XPAR_AXI_GPIO_3_BASEADDR, 0x1); //gpio 3 PPS signal for Timer
	//Xil_Out32(XPAR_AXI_GPIO_3_BASEADDR, 0x0); //gpio 3 PPS signal for Timer
	usleep(20);
	//Xil_Out32(XPAR_AXI_GPIO_0_BASEADDR, 0x0); //gpio 3 start signal for Timer

	sleep(3); //wait for pps
	return 0;
}


