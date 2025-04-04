/*
 * helloworld.c: maze_solver
 */

/***************************** Include Files *********************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xiic_l.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xil_mem.h"
#include "xaxidma.h"
#include "xaxivdma.h"

/************************** Constant Definitions *****************************/

// vga definitions
#define NUM_VGA_ROWS 480
#define NUM_VGA_COLS 640

#define NUM_MAZE_COLS 320
#define NUM_MAZE_ROWS 240
#define MAZE_SIZE NUM_MAZE_COLS*NUM_MAZE_ROWS

#define RED 0xfc0000
#define GREEN 0xfc00
#define BLUE 0xfc
#define WHITE 0xfcfcfc
#define BLACK 0x0

#define LIGHT_BLUE 0x5bcefa
#define PINK 0xf5a9b8

#define MAX_DEST_THRESH_r 1
#define MAX_DEST_THRESH_g 6
#define MAX_DEST_THRESH_b 9
#define MIN_DEST_THRESH_r 0
#define MIN_DEST_THRESH_g 5
#define MIN_DEST_THRESH_b 8
#define MAX_START_THRESH_r 10
#define MAX_START_THRESH_g 1
#define MAX_START_THRESH_b 1
#define MIN_START_THRESH_r 8
#define MIN_START_THRESH_g 0
#define MIN_START_THRESH_b 0
#define WALL_THRESH 96

// memory addresses
volatile unsigned int* membase = (unsigned int*) XPAR_MIG7SERIES_0_BASEADDR;
volatile unsigned int* i2cbase = (unsigned int*) XPAR_AXI_IIC_0_BASEADDR;
volatile u32* gpiobase = (u32*) XPAR_AXI_GPIO_OUT_BASEADDR;
volatile u32* vdmabase0 = (u32*) XPAR_AXI_VDMA_0_BASEADDR;
//volatile u32* vdmabase1 = (u32*) XPAR_AXI_VDMA_1_BASEADDR;
volatile unsigned int* btn_base = (unsigned int*) XPAR_GPIO_0_BASEADDR;


/************************** Function Prototypes ******************************/

u32 checkHalted(u32 baseAddress, u32 offset);
void dmaReset();
u8 waitButton();

/************************** Variable Definitions *****************************/

// instance of DMA
XAxiDma_Config * myDmaConfig;
XAxiDma myDma;

// maze image
u32* raw_maze_image;
u32* maze_distance;

int row, col;
u32 colour;
int btn_value;

/******************************************************************************
*
* Description: main function to read in maze from camera, display it on VGA
*              send it through image processing and BFS IPs and display the
*              solved path on VGA.
*
* Arguments:
*
* Returns: XST_SUCCESS if successful, otherwise XST_FAILURE.
*
*
******************************************************************************/
int main()
{
    int status;

	init_platform();

	raw_maze_image = (u32*)malloc(sizeof(u32) * MAZE_SIZE);
	maze_distance = (u32*)malloc(sizeof(u32) * (MAZE_SIZE + 2));

    print("program start\r\n");

	myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
  	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
  	if (status != XST_SUCCESS) {
  		xil_printf("DMA initialization failed %d\n", status);
  		return -1;
  	}
  	xil_printf("DMA initialization success\n");

	XAxiDma_IntrDisable(&myDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
  	XAxiDma_IntrDisable(&myDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  	// I2C setup
  	// ripped from multiple sources, made modifications to support RGB444 QVGA
    const u8 OV7670_reg[][2] = {
		// Array format: {<reg address>, <reg_value> }
//		{0x12, 0x80}, // reset
		{0x12, 0x14}, // COM7 RGB QVGA
		{0x11, 0x80}, // CLKRC is already default ???
		{0x0c, 0x00}, // COM3 is already default ???
		{0x3e, 0x00}, // COM14 is already default ???
		{0x04, 0x00}, // COM1 is already default ???
		{0x40, 0xd0}, // COM15
//		{0x40, 0xc0}, // COM15 this value makes all colour lost for some reason when using rgb444
		{0x3a, 0x04}, // TSLB magic value?
		{0x14, 0x18}, // COM9 max agc value x4?

		// matrix values ripped from github repo: https://github.com/westonb/OV7670-Verilog/tree/master
		{0x4f, 0xb3},
		{0x50, 0xb3},
		{0x51, 0x00},
		{0x52, 0x3d},
		{0x53, 0xa7},
		{0x54, 0xe4},
		{0x58, 0x9e},

		{0x3d, 0xc0}, // COM13
		{0x17, 0x14}, // HSTART
		{0x18, 0x02}, // HSTOP
		{0x32, 0x80}, // HREF already default ???
		{0x19, 0x03}, // VSTART already default ???
		{0x1a, 0x7b}, // VSTOP already default ???
		{0x03, 0x0a}, // VREF
		{0x0f, 0x41}, // COM6
		{0x1e, 0x00}, // MVFP ???
		{0x33, 0x0b}, // CHLF (magic)
		{0x3c, 0x78}, // COM12 ???
		{0x69, 0x00}, // GFIX already default ???
		{0x74, 0x00}, // REG74 already default ???

		{0xb0, 0x84}, // NEEDED FOR COLOUR, NOT DOCUMENTED
		{0xb1, 0x0c}, // ABLC1, ABLC enable ???
		{0xb2, 0x0e}, // ???
		{0xb3, 0x80}, // already default ???

		// scaling numbers
		{0x70, 0x3a}, // already default ???
		{0x71, 0x35}, // already default ???
		{0x72, 0x11}, // already default ???
		{0x73, 0xf0}, // ???
		{0xa2, 0x02}, // already default ???

		// gamma curve values, ripped from ECE342
		{0x7a, 0x20},
		{0x7b, 0x10},
		{0x7c, 0x1e},
		{0x7d, 0x35},
		{0x7e, 0x5a},
		{0x7f, 0x69},
		{0x80, 0x76},
		{0x81, 0x80},
		{0x82, 0x88},
		{0x83, 0x8f},
		{0x84, 0x96},
		{0x85, 0xa3},
		{0x86, 0xaf},
		{0x87, 0xc4},
		{0x88, 0xd7},
		{0x89, 0xe8},

		// AGC and AEC, ripped from ECE342
		{0x00, 0x00}, // already default ???
		{0x10, 0x00}, // AECH -> AEC[9:2]
		{0x0d, 0x40}, // COM4 ???
		{0x14, 0x18}, // COM9 AGC max 4x gain ???
		{0xa5, 0x05}, // BD50MAX 50hz banding step limit
		{0xab, 0x07}, // BD60MAX 60hz banding step limit
		{0x24, 0x95}, // AEW AGC/AEC upper limit
		{0x25, 0x33}, // AEB AGC/AEC lower limit
		{0x26, 0xe3}, // VPT AGC/AEC fast mode operating region
		{0x9f, 0x78}, // HAECC1
		{0xa0, 0x68}, // HAECC2
		{0xa1, 0x03}, // ???
		{0xa6, 0xd8}, // HAECC3
		{0xa7, 0xd8}, // HAECC4
		{0xa8, 0xf0}, // HAECC5 (default)
		{0xa9, 0x90}, // HAECC6
		{0xaa, 0x94}, // HAECC7 histogram-based aec

		// AWB values ripped from ECE342; later adjusted
		{0x43, 0x0a}, //
		{0x44, 0xf0}, //
		{0x45, 0x34}, //
		{0x46, 0x58}, //
		{0x47, 0x28}, //
		{0x48, 0x3a}, //
		{0x59, 0x88}, //
		{0x5a, 0x88}, //
		{0x5b, 0x44}, //
		{0x5c, 0x67}, //
		{0x5d, 0x49}, //
		{0x5e, 0x0e}, //
		{0x6c, 0x0a}, //
		{0x6d, 0x55}, //
		{0x6e, 0x11}, //
		{0x5f, 0x60}, // AWB B gain range: upper limit to 0x6f to reduce da ba dee effect
		{0x60, 0x40}, // AWB R gain range: upper limit to 0x4f to reduce sailor moon effect
		{0x61, 0x30}, // AWB G gain range: upper limit to 0x3f to reduce shrek effect
		//{0x6f, 0x9f},
		{0x6f, 0x6e}, // AWBCTR0 enable advanced AWB for colour temperature correction

		// THESE GAIN VALUES ARE AUTOMATICALLY WRITTEN WHEN AWB ENABLED
//		{0x6a, 0x40}, // AWB green channel gain
//		{0x01, 0x40}, // AWB blue channel gain
//		{0x02, 0x40}, // AWB red channel gain

		{0x13, 0xe7}, // COM8 enable AGC, AEC, and AWB; enable fast AGC/AEC, unlimited AEC step size, banding filter on (check 0x9d, 0x9e)

		// misc
		{0x8c, 0x02}, // RGB444 enable

		// Additional parameters, ripped from ECE342
//		{0x34, 0x11}, //
//		{0x3f, 0x00}, //
//		{0x75, 0x05}, //
//		{0x76, 0xe1}, //
//		{0x4c, 0x00}, //
//		{0x77, 0x01}, //
//		{0xb8, 0x0a}, //
		{0x41, 0x18}, // automatic denoise, AWB gain enable
//		{0x3b, 0x12}, //
//		{0xa4, 0x88}, //
//		{0x96, 0x00}, //
//		{0x97, 0x30}, //
//		{0x98, 0x20}, //
//		{0x99, 0x30}, //
//		{0x9a, 0x84}, //
//		{0x9b, 0x29}, //
//		{0x9c, 0x03}, //
//		{0x9d, 0x4c}, //
//		{0x9e, 0x3f}, //
//		{0x78, 0x04}, //
//		{0x0e, 0x61}, //
//		{0x0f, 0x4b}, //
//		{0x16, 0x02}, //
//		{0x1e, 0x00}, //
//		{0x21, 0x02}, //
//		{0x22, 0x91}, //
//		{0x29, 0x07}, //
//		{0x33, 0x0b}, //
//		{0x35, 0x0b}, //
//		{0x37, 0x1d}, //
//		{0x38, 0x71}, //
//		{0x39, 0x2a}, //
//		{0x3c, 0x78}, //
//		{0x4d, 0x40}, //
//		{0x4e, 0x20}, //
//		{0x69, 0x00}, //
//		{0x6b, 0x3a}, //
//		{0x74, 0x10}, //
//		{0x8d, 0x4f}, //
//		{0x8e, 0x00}, //
//		{0x8f, 0x00}, //
//		{0x90, 0x00}, //
//		{0x91, 0x00}, //
//		{0x96, 0x00}, //
//		{0x9a, 0x00}, //
//		{0xb1, 0x0c}, //
//		{0xb2, 0x0e}, //
//		{0xb3, 0x82}, //
//		{0x4b, 0x01},

		// INDICATE END OF ARRAY
		{0xff, 0xff}
    };

    // reset by writing to GPIO
    printf("reset camera\r\n");
	for(int i=0;i<10;i++){
		*(gpiobase) = 0x0;
	}
	for(int i=0;i<100000;i++){
		*(gpiobase) = 0x1;
	}

	u32 num_bytes;

	// 100 kHz i2c is busted apparently

	u8 wbuf[2];
	u8 rbuf[1];

	// sanity check, read from manufacturer ID reg

	wbuf[0] = 0xa; // reg addr
	printf("start i2c sanity check\r\n");
//	xil_printf("CR: %x\r\n", *(i2cbase + 0x100/4));
//	xil_printf("SR: %x\r\n", *(i2cbase + 0x104/4));
//	xil_printf("gie=%x\r\n", *(i2cbase + 0x1c/4));
//	xil_printf("isr=%x\r\n", *(i2cbase + 0x20/4));
//	xil_printf("ier=%x\r\n", *(i2cbase + 0x28/4));
//	xil_printf("txocy=%x\r\n", *(i2cbase + 0x114/4));
//	xil_printf("rxocy=%x\r\n", *(i2cbase + 0x118/4));
	num_bytes = XIic_Send((UINTPTR)i2cbase, 0x21, wbuf, 1, XIIC_STOP);
	xil_printf("sent %d bytes\r\n", num_bytes);
	num_bytes = XIic_Recv((UINTPTR)i2cbase, 0x21, rbuf, 1, XIIC_STOP);
	xil_printf("received %d bytes\r\n", num_bytes);
	xil_printf("recv data: 0x%x\r\n", rbuf[0]);
	if(rbuf[0] == 0x76) printf("sanity check passed!\r\n");
	else printf("SANITY CHECK FAILED\r\n");

	printf("config camera...\r\n");

	int i = 0;
	for(;;){
		wbuf[0] = OV7670_reg[i][0]; // addr
		wbuf[1] = OV7670_reg[i][1]; // val
		if(wbuf[0] == 0xff) break;

//		xil_printf("wait before write\r\n");
		while (XIic_WaitBusFree((UINTPTR)i2cbase) != XST_SUCCESS) {
		}
		num_bytes = XIic_Send((UINTPTR)i2cbase, 0x21, wbuf, 2, XIIC_STOP);
//		xil_printf("sent 0x%x to 0x%x (%d bytes)\r\n", wbuf[1], wbuf[0], num_bytes);

		// pause a bit before continuing, let the line stabilize
		for(int j=0;j<100000;j++){
		}

		i++;
	}

	i = 0;
	// final read to confirm values
	printf("final read to confirm values\r\n");
	for(;;){
		wbuf[0] = OV7670_reg[i][0]; // addr
		wbuf[1] = OV7670_reg[i][1]; // val
		if(wbuf[0] == 0xff) break;

//		xil_printf("wait before read\r\n");
		while (XIic_WaitBusFree((UINTPTR)i2cbase) != XST_SUCCESS) {
		}
		num_bytes = XIic_Send((UINTPTR)i2cbase, 0x21, wbuf, 1, XIIC_STOP);
		num_bytes = XIic_Recv((UINTPTR)i2cbase, 0x21, rbuf, 1, XIIC_STOP);
//		xil_printf("read data: 0x%x at addr: 0x%x (%d bytes)\r\n", rbuf[0], OV7670_reg[i][0], num_bytes);

		if (rbuf[0] != OV7670_reg[i][1]) { // verify written register values
//			if(i != 0){ // ignore the first reset write
				xil_printf("I2C ERROR: Mismatch at Addr: 0x%x, Correct: 0x%x, Read: 0x%x\r\n", OV7670_reg[i][0], OV7670_reg[i][1], rbuf[0]);
//			}
		}

		// pause a bit before continuing, let the line stabilize
		for(int j=0;j<100000;j++){
		}

		i++;
	}

	printf("done config camera!\r\n");

    // vga default output pattern
    colour = WHITE;
	for(row = 0; row < NUM_VGA_ROWS; row++){
		for(col = 0; col < NUM_VGA_COLS; col++){
			*(membase + 1024*row + col) = colour;
		}
	}

	// bare metal vdma
	xil_printf("debug: vdma0 registers before everything:\r\n");
	xil_printf("vdma0 park_ptr_reg: 0x%x\r\n", *(vdmabase0 + 0x28/4));
	xil_printf("vdma0 s2mm_dmacr: 0x%x\r\n", *(vdmabase0 + 0x30/4));
	xil_printf("vdma0 s2mm_dmasr: 0x%x\r\n", *(vdmabase0 + 0x34/4));
	xil_printf("vdma0 s2mm_frmstore: 0x%x\r\n", *(vdmabase0 + 0x48/4));
	xil_printf("vdma0 s2mm_vsize: 0d%d\r\n", *(vdmabase0 + 0xa0/4));
	xil_printf("vdma0 s2mm_hsize: 0d%d\r\n", *(vdmabase0 + 0xa4/4));
	xil_printf("vdma0 s2mm_frmdly_stride: 0x%x\r\n", *(vdmabase0 + 0xa8/4));
	xil_printf("vdma0 s2mm start addr: 0x%x\r\n\n", *(vdmabase0 + 0xac/4));

	// S2MM_DMACR 0x30
	// disable interrupts
	// disable FrameCntEn
	// disable SyncEn (Gen-Lock mode)
	// park mode
	// enable RS, start DMA operations
	*(vdmabase0 + 0x30/4) = 0x1;
//	*(vdmabase0 + 0x30/4) = 0x8B; // GENLOCK

	// S2MM_START_ADDRESS1 0xAC
	*(vdmabase0 + 0xac/4) = XPAR_MIG7SERIES_0_BASEADDR;

	// S2MM_START_ADDRESS2 0xB0
//	*(vdmabase0 + 0xb0/4) = XPAR_MIG7SERIES_0_BASEADDR + 0x200000;

	// S2MM_START_ADDRESS3 0xB4
//	*(vdmabase0 + 0xb4/4) = XPAR_MIG7SERIES_0_BASEADDR + 0x200000*2;

	// S2MM_FRMDLY_STRIDE 0xA8
	// frame delay <= S2MM_FRMSTORE
	*(vdmabase0 + 0xa8/4) = 1024*4;

	// S2MM_HSIZE 0xA4
	// rx: vsize # packets, each packet is hsize bytes long
	*(vdmabase0 + 0xa4/4) = (NUM_VGA_COLS/2)*4;

	// S2MM_VDMA_IRQ_MASK 0x3C
	// nothing to be done

	// S2MM_REG_INDEX 0x44
	// nothing to be done

	// PARK_PTR_REG 0x28
	// set WrFrmPtrRef = 0
//	*(vdmabase0 + 0x28/4) = 0x0;

	// S2MM_VSIZE 0xA0
	// IF S2MM_DMACR.RS = 1 => WRITING TO THIS WILL START THE DMA TRANSFER!!!
	*(vdmabase0 + 0xa0/4) = NUM_VGA_ROWS/2;

	// read vdma status registers
	xil_printf("debug: vdma0 registers after everything:\r\n");
	xil_printf("vdma0 park_ptr_reg: 0x%x\r\n", *(vdmabase0 + 0x28/4));
	xil_printf("vdma0 s2mm_dmacr: 0x%x\r\n", *(vdmabase0 + 0x30/4));
	xil_printf("vdma0 s2mm_dmasr: 0x%x\r\n", *(vdmabase0 + 0x34/4));
	xil_printf("vdma0 s2mm_reg_index: 0x%x\r\n", *(vdmabase0 + 0x44/4));
	xil_printf("vdma0 s2mm_vsize: 0d%d\r\n", *(vdmabase0 + 0xa0/4));
	xil_printf("vdma0 s2mm_hsize: 0d%d\r\n", *(vdmabase0 + 0xa4/4));
	xil_printf("vdma0 s2mm_frmdly_stride: 0x%x\r\n", *(vdmabase0 + 0xa8/4));
	xil_printf("vdma0 s2mm start addr: 0x%x\r\n\n", *(vdmabase0 + 0xac/4));


	while(1) {

//		waitButton();

		for(row=0; row<NUM_MAZE_ROWS; row++){
			for(col=0; col<NUM_MAZE_COLS; col++){
				colour = (u32)(*((membase + (1024)*row + col)));
				*(raw_maze_image + NUM_MAZE_COLS*row + col) = colour;
			}
		}

		dmaReset();
		Xil_DCacheFlushRange((UINTPTR)maze_distance, (MAZE_SIZE + 2)*sizeof(u32));
		Xil_DCacheFlushRange((UINTPTR)raw_maze_image, (MAZE_SIZE)*sizeof(u32));

		status = XAxiDma_SimpleTransfer(&myDma, (u32)maze_distance, (MAZE_SIZE + 2)*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		if (status != XST_SUCCESS) {
			xil_printf("DMA transfer failed %d\n", status );
			return -1;
		}

		status = XAxiDma_SimpleTransfer(&myDma, (u32)raw_maze_image, (MAZE_SIZE)*sizeof(u32), XAXIDMA_DMA_TO_DEVICE);
		if (status != XST_SUCCESS) {
			xil_printf("DMA transfer failed %d\n", status );
			return -1;
		}

		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4);
		while (status != 1)
			status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4);

		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34);
		while (status != 1)
			status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34);

		status = 0;
		while(status < 100000) status++;

		for(row=0; row<NUM_MAZE_ROWS; row++){
			for(col=0; col<NUM_MAZE_COLS; col++){
				colour = (u32)(*((maze_distance + NUM_MAZE_COLS*row + col)));
				*((membase + (1024)*(row + NUM_MAZE_ROWS) + col)) = colour;
			}
		}
	}

    cleanup_platform();
    return 0;
}


/******************************************************************************
*
* Description: This function checks if the register in AXI DMA is halted/complete
*
* Arguments: baseAddress is the address of the AXI DMA, and offset is the register
*            offset
*
* Returns: 0 if DMA is active, non 0 if DMA is halted.
*
******************************************************************************/
u32 checkHalted(u32 baseAddress, u32 offset) {
	u32 status;
	status = (XAxiDma_ReadReg(baseAddress,offset))&XAXIDMA_HALTED_MASK;
	return status;
}


/******************************************************************************
*
* Description: This function resets the DMAs
*
* Arguments:
*
* Returns:
*
******************************************************************************/
void dmaReset() {
	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_CR_OFFSET, (XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_CR_OFFSET) | XAXIDMA_CR_RESET_MASK));
	while ((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, XAXIDMA_CR_OFFSET) & XAXIDMA_CR_RESET_MASK) == XAXIDMA_CR_RESET_MASK) {}

	XAxiDma_WriteReg(XPAR_AXI_DMA_0_BASEADDR, 0x30, (XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x30) | XAXIDMA_CR_RESET_MASK));
	while ((XAxiDma_ReadReg(XPAR_AXI_DMA_0_BASEADDR, 0x30) & XAXIDMA_CR_RESET_MASK) == XAXIDMA_CR_RESET_MASK) {}
}


/******************************************************************************
*
* Description: Waits until any button is pressed then returns
*
* Arguments:
*
* Returns:
*
******************************************************************************/
u8 waitButton() {
	xil_printf("press button\n");
	while(1) {
		btn_value = *(btn_base);
		if(btn_value>>1 & 0b1) {
			xil_printf("up button\n");
			break;
		}
		if(btn_value>>2 & 0b1) {
			xil_printf("left button\n");
			break;
		}
		if(btn_value>>4 & 0b1) {
			xil_printf("down button\n");
			break;
		}
	}
	int status = 0;
	while(status < 1000000) status++;
	return btn_value;
}



