#ifndef TIMER_H_
#define TIMER_H_


#include "ap_cint.h"


#define AXI_MASTER_WRITE_DELAY 0

typedef const volatile bool bit;
typedef unsigned char byte_t;
typedef unsigned long	data_64t;
typedef unsigned int	data_32t;
typedef unsigned short	data_16t;
// DDs need 1 register and 4 bytes of data for
// register programming

void Timer (

				bit *PPS,		   //Hw trigger from GPS PPS signal
				bit *pps_en,//pause start timer
				volatile data_32t num_clks, //control hoping rate
				volatile data_32t hop_rate, //control pps trigger sync
				volatile bool *trigger_out, //send for Fast Tuner
				volatile bool *pps_edge //send for Fast Tuner

		  );

#endif
