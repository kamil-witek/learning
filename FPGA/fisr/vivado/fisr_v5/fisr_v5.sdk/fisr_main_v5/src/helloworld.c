/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "fisr_controller_v2.h"
#include "xil_io.h"
#include "xgpio.h"
#include <math.h>

#define FISR_ADDRESS 	XPAR_FISR_CONTROLLER_V2_0_S00_AXI_BASEADDR
#define UART			XPAR_UARTLITE_0_BASEADDR
#define GPIO			XPAR_AXI_GPIO_0_DEVICE_ID
#define OUT_CHANNEL     1
#define REF_CHANNEL     2
#define DIR_OUTPUT      0x00

#define N_VAL 5

float fisr(float x){
	return 1/sqrt(x);
}

void delay(){
	volatile int j;
	for(j=0 ; j<200 ; j++){

	}
}

int main()
{
    init_platform();
    print("H");

    XGpio gpio;
    XGpio_Initialize(&gpio, GPIO);
    XGpio_SetDataDirection(&gpio, OUT_CHANNEL, DIR_OUTPUT);		// set direction as output
    XGpio_SetDataDirection(&gpio, REF_CHANNEL, DIR_OUTPUT);


	float x_tab[N_VAL] = {1.0, 2.0, 3.0, 4.0, 5.0};				// example values of which inverse square root will be calculated
	float y_tab[N_VAL];											// fpga response
	float y_tab_ref[N_VAL];										// float calculations


	int i = 0;
	for(i=0 ; i<N_VAL ; i++){
		float x = x_tab[i];

		uint32_t x_int  = *(uint32_t*)&x;
		FISR_CONTROLLER_V2_mWriteReg (FISR_ADDRESS, 0, x_int);				// write data to accelerator block
		uint32_t y_int  = FISR_CONTROLLER_V2_mReadReg (FISR_ADDRESS, 4);	// read data from accelerator block
		y_tab[i]     	= *(float*)&y_int;									// convert new bits into float
		XGpio_DiscreteWrite(&gpio, OUT_CHANNEL, (int)(y_tab[i]*100));

		y_tab_ref[i] 	= fisr(x);
		XGpio_DiscreteWrite(&gpio, REF_CHANNEL, (int)(y_tab_ref[i]*100));
		XGpio_DiscreteWrite(&gpio, OUT_CHANNEL, 0);							// reset displayed output values
		XGpio_DiscreteWrite(&gpio, REF_CHANNEL, 0);
	}


    cleanup_platform();
    return 0;
}
