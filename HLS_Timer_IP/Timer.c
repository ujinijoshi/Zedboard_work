
//*******************************************************************************/
#include "Timer.h"
#include "ap_utils.h"

void Timer (
		bit *PPS,		   //Hw trigger from GPS PPS signal
		bit *pps_en,//pause start timer
		volatile data_32t num_clks, //control hoping rate
		volatile data_32t hop_rate, //control pps trigger sync
		volatile bool *trigger_out, //send for Fast Tuner
		volatile bool *pps_edge //send for Fast Tuner

  )
{
	//#pragma HLS INTERFACE s_axilite port=return
	//#pragma HLS PIPELINE II=1 enable_flush
	//#pragma HLS INTERFACE ap_ctrl_none port=return

	static  data_32t ticks =1;
	static  data_32t trigger_count =0;
	static  byte_t   state = 0;
	static uint2 detect_register=0;
	volatile uint2 pps_reg=0;
	//volatile bool pps_edge=0;



	#pragma HLS RESET variable=state
	#pragma HLS RESET variable=ticks
	#pragma HLS RESET variable=trigger_out
	#pragma HLS RESET variable=trigger_count

	  pps_reg = *PPS;
	  detect_register = pps_reg >> 1;

	 *pps_edge = (detect_register & 0x01) && !(detect_register & 0x02);

switch(state)
      {
		case 0: // pause state

			*trigger_out = 0;
			ticks = 0;
			trigger_count=0;

			while(*PPS == false ){
				ap_wait();

			}
			state++;
			break;

		case 1: // start state

			*trigger_out = 0;
			ticks = 0;
			if(trigger_count == hop_rate-1){
				trigger_count=0;
				state = 0;
				break;
			}
			else
				while(ticks != num_clks)
				{
					ap_wait();
					ticks++;
				}
				*trigger_out = 1;
				trigger_count++;

				break;
      }
}

