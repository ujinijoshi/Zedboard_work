#include "ap_int.h"

bool edge2pulse(bool signal){

	#pragma HLS INTERFACE ap_ctrl_none port=return

	static ap_int<3> reg=0;
	reg= reg << 1;
	reg.bit(0)=signal;
	if(reg.bit(2) & !reg.bit(1)) return true;
	else return false;
}
