#include <ap_int.h>

struct axis {
	ap_uint<32> data;
	ap_uint<1>  last;
};

void hls_decimate(struct axis *input, struct axis *output, ap_uint<16> factor) {
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=input,output
	#pragma HLS INTERFACE s_axilite port=factor bundle=config
	#pragma HLS DATAFLOW

	static int counter;

	if (counter == 0)
		*output = *input;

	if (input->last) {
		counter++;

		if (counter == factor)
			counter = 0;
	}
}
