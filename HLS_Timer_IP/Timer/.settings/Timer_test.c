
#include <stdio.h>
#include "ap_cint.h"
//#include "Timer.h"

int main() {

	 const volatile bool *PPS,*PPS_en=1;		   //Hw trigger from GPS PPS signal
	 unsigned int num_clks,hop_rate=10; //Used to control hoping rate
	 volatile bool *trigger_out,*pps_edge;

	 //send for Fast Tunner
	 num_clks = 100/hop_rate;


  int i;

  for (i=0;i<=12;i++) {

	// Execute the function with latest input
    //fir(&output,taps,tones_size,&trigger,timer,gap,&io_update);
	  PPS = 1;
     Timer(&PPS,&PPS_en,num_clks,hop_rate,&trigger_out,&pps_edge);
     sleep(1);
     printf("iteration : %d trigger_update: %d num_clks: %d\n",i,&trigger_out,num_clks);

  }

       return 0;
}
