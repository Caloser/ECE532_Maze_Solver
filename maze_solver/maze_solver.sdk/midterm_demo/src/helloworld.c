/*
 * helloworld.c: midterm demo
 */

/***************************** Include Files *********************************/

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xstatus.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "xil_mem.h"
#include "xaxidma.h"

/************************** Constant Definitions *****************************/

#define UARTLITE_DEVICE_ID  XPAR_UARTLITE_0_DEVICE_ID

// colour definitions used in printing processed maze
#define RED 0xfc0000
#define GREEN 0xfc00
#define BLUE 0xfc
#define WHITE 0xfcfcfc
#define BLACK 0x0

// vga definitions
#define NUM_VGA_ROWS 480
#define NUM_VGA_COLS 640
#define ROW_PIXELS_PER_CELL 20
#define COL_PIXELS_PER_CELL 20

#define IMAGE_STATE 0
#define DISTANCE_STATE 1
#define MAZE_STATE 2

// memory addresses
volatile unsigned int* vga_base = (unsigned int*) 0x80000000;
volatile unsigned int* mem_base = (unsigned int*) 0x80200000;
volatile unsigned int* btn_base = (unsigned int*) 0x40000000;
volatile unsigned char* vga_base_byte = (unsigned char*) 0x80000000;
volatile unsigned char* mem_base_byte = (unsigned char*) 0x80200000;
volatile unsigned char* btn_base_byte = (unsigned char*) 0x40000000;

// max size in non-interrupt mode
#define RX_BUFF_SIZE  32

#define IMAGE_HEADER_SIZE 54
#define IMAGE_COL_SIZE 20
#define IMAGE_ROW_SIZE 20
#define IMAGE_SIZE IMAGE_COL_SIZE*IMAGE_ROW_SIZE*3
#define NUM_MAZE_COLS 20
#define NUM_MAZE_ROWS 20
#define MAZE_SIZE NUM_MAZE_COLS*NUM_MAZE_ROWS

/************************** Function Prototypes ******************************/

void colour_maze_cell(int maze_row, int maze_col, unsigned int colour, int delay);
void print_maze_vga(u8 state);
void print_maze_uart(u8 state);
int UARTLite_Init_SelfTest(u16 DeviceID);
int ReceiveImageData(u8 *RxDataBufferPointer);
u32 checkHalted(u32 baseAddress, u32 offset);
u8 waitButton();
void solve_path();
void dmaReset();

/************************** Variable Definitions *****************************/

// Rx buffers
u8 RxBuff[RX_BUFF_SIZE];

// instance of UART Lite core
XUartLite UartLite0;

// instance of DMA
XAxiDma_Config * myDmaConfig;
XAxiDma myDma;

// maze image
u8* raw_maze_image;
u32* maze_distance;
u8* maze;

int vga_row, vga_col;
int maze_row, maze_col;
int start_row, start_col;
int end_row, end_col;
int curr_row, curr_col;
unsigned int colour;


/******************************************************************************
*
* Description: main function to read in bmp maze from uart, display it on VGA
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

	raw_maze_image = (u8*)malloc(sizeof(u8) * IMAGE_SIZE);
	maze_distance = (u32*)malloc(sizeof(u32) * (MAZE_SIZE + 2));
	maze = (u8*)malloc(sizeof(u8) * MAZE_SIZE);

    status = UARTLite_Init_SelfTest(UARTLITE_DEVICE_ID);
    if (status != XST_SUCCESS) {
        xil_printf("UART Lite Init Fail\n\r");
        return status;
    }
    xil_printf("UART initialization and selftest success\n");

    myDmaConfig = XAxiDma_LookupConfigBaseAddr(XPAR_AXI_DMA_0_BASEADDR);
  	status = XAxiDma_CfgInitialize(&myDma, myDmaConfig);
  	if (status != XST_SUCCESS) {
  		xil_printf("DMA initialization failed %d\n", status);
  		return -1;
  	}
  	xil_printf("DMA initialization success\n");

  	XAxiDma_IntrDisable(&myDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
  	XAxiDma_IntrDisable(&myDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

  	while(1) {

  		xil_printf("Send file over UART\n\r");

		status = ReceiveImageData(RxBuff);
		if (status != XST_SUCCESS) {
			xil_printf("SendData Fail\n\r");
			return status;
		}

		xil_printf("UART Lite Rx successfull\n\r");

//		print_maze_uart(IMAGE_STATE);
		print_maze_vga(IMAGE_STATE);

		waitButton();

		xil_printf("About to start DMA transfer %d %d\n", checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4), checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34));

		status = XAxiDma_SimpleTransfer(&myDma, (u32)maze_distance, (MAZE_SIZE + 2)*sizeof(u32), XAXIDMA_DEVICE_TO_DMA);
		if (status != XST_SUCCESS) {
			xil_printf("DMA transfer failed %d\n", status );
			return -1;
		}
		status = XAxiDma_SimpleTransfer(&myDma, (u32)raw_maze_image, IMAGE_SIZE, XAXIDMA_DMA_TO_DEVICE);
		if (status != XST_SUCCESS) {
			xil_printf("DMA transfer failed %d\n", status );
			return -1;
		}

		xil_printf("DMA transfer started %d %d\n", checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4), checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34));

		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4);
		while (status != 1)
			status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x4);

		xil_printf("DMA transfer\n");

		status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34);
		while (status != 1)
			status = checkHalted(XPAR_AXI_DMA_0_BASEADDR, 0x34);

		xil_printf("DMA transfer success\n\n");

//		print_maze_uart(DISTANCE_STATE);
		status = 0;
		while(status < 1000000) status++;
		print_maze_vga(DISTANCE_STATE);

		waitButton();

		solve_path();

		dmaReset();

		Xil_DCacheFlushRange((UINTPTR)maze_distance, (MAZE_SIZE + 2)*sizeof(u32));
		Xil_DCacheFlushRange((UINTPTR)raw_maze_image, IMAGE_SIZE);

  	}

  	xil_printf("Bye\n");

    cleanup_platform();
    return 0;
}


/******************************************************************************
*
* Description: Colours in a block of a maze
*
* Arguments: maze_row and maze_col are coordinates, colour is colour to print
*            delay is counter to wait after print
*
* Returns:
*
******************************************************************************/
void colour_maze_cell(int maze_row, int maze_col, unsigned int colour, int delay) {
    for(vga_row=maze_row*ROW_PIXELS_PER_CELL; vga_row<maze_row*ROW_PIXELS_PER_CELL + ROW_PIXELS_PER_CELL; vga_row++) {
        for(vga_col=maze_col*COL_PIXELS_PER_CELL; vga_col<maze_col*COL_PIXELS_PER_CELL + COL_PIXELS_PER_CELL; vga_col++) {
            *(vga_base + 1024*vga_row + vga_col) = colour;
        }
    }
    int counter = 0;
    while(counter < delay) counter++;
}


/******************************************************************************
*
* Description: Prints the entire maze to VGA
*
* Arguments: state of what to print
*
* Returns:
*
******************************************************************************/
void print_maze_vga(u8 state) {
    // draw maze
    for(vga_row = 0; vga_row < NUM_VGA_ROWS; vga_row++){
    	maze_row = vga_row / ROW_PIXELS_PER_CELL;
        for(vga_col = 0; vga_col < NUM_VGA_COLS; vga_col++){
            maze_col = vga_col / COL_PIXELS_PER_CELL;
            if(maze_row < NUM_MAZE_ROWS && maze_col < NUM_MAZE_COLS) {
            	if (state == IMAGE_STATE) {
            		colour = (raw_maze_image[maze_row * NUM_MAZE_COLS * 3 + maze_col * 3]) | (raw_maze_image[maze_row * NUM_MAZE_COLS * 3 + maze_col * 3 + 1] << 8) | (raw_maze_image[maze_row * NUM_MAZE_COLS * 3 + maze_col * 3 + 2] << 16);
            	} else if (DISTANCE_STATE)
            		colour = (maze_distance[maze_row * NUM_MAZE_COLS + maze_col] == 511) ? WHITE : BLACK;
            	else if (MAZE_STATE)
            		colour = BLACK;
            } else {
                colour = BLACK;
            }
            *(vga_base + 1024*vga_row + vga_col) = colour;
        }
    }

    // draw start and destination positions
    if (state != IMAGE_STATE) {
    	start_row = *(maze_distance + MAZE_SIZE) / NUM_MAZE_COLS;
    	start_col = *(maze_distance + MAZE_SIZE) % NUM_MAZE_COLS;
    	end_row = *(maze_distance + MAZE_SIZE + 1) / NUM_MAZE_COLS;
    	end_col = *(maze_distance + MAZE_SIZE + 1) % NUM_MAZE_COLS;
		if (start_row >= 0 && start_row < NUM_MAZE_ROWS && start_col >= 0 && start_col < NUM_MAZE_COLS)
			colour_maze_cell(start_row, start_col, RED, 0);
		if (end_row >= 0 && end_row < NUM_MAZE_ROWS && end_col >= 0 && end_col < NUM_MAZE_COLS)
			colour_maze_cell(end_row, end_col, BLUE, 0);
    }
}


/******************************************************************************
*
* Description: Prints the solved path on vga
*
* Arguments:
*
* Returns:
*
******************************************************************************/
void solve_path() {
	curr_row = end_row;
	curr_col = end_col;
	colour_maze_cell(curr_row, curr_col, GREEN, 1000000);
	int curr_dist;
	while (!(curr_row == start_row && curr_col == start_col)) {
		curr_dist = maze_distance[curr_row * NUM_MAZE_COLS + curr_col];
		if (curr_row - 1 >= 0 && maze_distance[(curr_row - 1) * NUM_MAZE_COLS + curr_col] == curr_dist -1) {
			curr_row = curr_row - 1;
			colour_maze_cell(curr_row, curr_col, GREEN, 1000000);
			continue;
		}
		if (curr_row + 1 < NUM_MAZE_ROWS && maze_distance[(curr_row + 1) * NUM_MAZE_COLS + curr_col] == curr_dist -1) {
			curr_row = curr_row + 1;
			colour_maze_cell(curr_row, curr_col, GREEN, 1000000);
			continue;
		}
		if (curr_col - 1 >= 0 && maze_distance[curr_row * NUM_MAZE_COLS + (curr_col - 1)] == curr_dist -1) {
			curr_col = curr_col - 1;
			colour_maze_cell(curr_row, curr_col, GREEN, 1000000);
			continue;
		}
		if (curr_col + 1 < NUM_MAZE_COLS && maze_distance[curr_row * NUM_MAZE_COLS + (curr_col + 1)] == curr_dist -1) {
			curr_col = curr_col + 1;
			colour_maze_cell(curr_row, curr_col, GREEN, 1000000);
			continue;
		}
		xil_printf("No path?\n");
		break;
	}
}


/******************************************************************************
*
* Description: Prints the entire maze to UART
*
* Arguments: state of what to print
*
* Returns:
*
******************************************************************************/
void print_maze_uart(u8 state) {
    // draw maze
    unsigned int i, j;
    if (state == IMAGE_STATE) {
        for (i = 0; i < IMAGE_ROW_SIZE; i++) {
            for (j = 0; j < IMAGE_COL_SIZE*3; j = j + 3) {
                xil_printf("0x%2x 0x%2x 0x%2x   ", *(raw_maze_image + i * IMAGE_COL_SIZE * 3 + j + 2), *(raw_maze_image + i * IMAGE_COL_SIZE * 3 + j + 1), *(raw_maze_image + i * IMAGE_COL_SIZE * 3 + j));
            }
            xil_printf("\n\r");
        }
    } else if (state == DISTANCE_STATE) {
        for (i = 0; i < IMAGE_ROW_SIZE; i++) {
            for (j = 0; j < IMAGE_COL_SIZE; j++) {
                xil_printf("%4d  ", *(maze_distance + i * IMAGE_COL_SIZE + j));
            }
            xil_printf("\n\r");
        }
        xil_printf("%d  %d\n\r", *(maze_distance + IMAGE_ROW_SIZE * IMAGE_COL_SIZE), *(maze_distance + IMAGE_ROW_SIZE * IMAGE_COL_SIZE + 1));
    } else if (state == MAZE_STATE) {
        for (i = 0; i < IMAGE_ROW_SIZE; i++) {
            for (j = 0; j < IMAGE_COL_SIZE; j++) {
                xil_printf("0x%2x  ", *(maze + i * IMAGE_COL_SIZE + j));
            }
            xil_printf("\n\r");
        }
    }
}


/******************************************************************************
*
* Description: Initializes UART Lite and does a self test
*
* Arguments: DeviceID is the DeviceId is the Device ID of the UartLite and is the
*		         XPAR_<uartlite_instance>_DEVICE_ID value from xparameters.h.
*
* Returns: XST_SUCCESS if successful, otherwise XST_FAILURE.
*
******************************************************************************/
int UARTLite_Init_SelfTest(u16 DeviceID) {
  int Status;

  // perform initialization tests
  Status = XUartLite_Initialize(&UartLite0, DeviceID);
  if (Status != XST_SUCCESS)
  {
    return XST_FAILURE;
  }

  // perform self-test tests
  Status = XUartLite_SelfTest(&UartLite0);
  if (Status != XST_SUCCESS)
  {
    return XST_FAILURE;
  }

  return XST_SUCCESS;
}


/******************************************************************************
*
* Description: This function receives image data and sends to DDR memory
*
* Arguments: DataBufferPointer is the pointer the 16 byte buffer
*
* Returns: XST_SUCCESS if successful, otherwise XST_FAILURE.
*
******************************************************************************/
int ReceiveImageData(u8 *RxDataBufferPointer) {
  unsigned int RxBytesTotal = 0;
  unsigned int RxBytes = 0;

  // max data sent per function call is 16 bytes (size of FIFOs)
  while (RxBytesTotal < IMAGE_HEADER_SIZE) {
	  RxBytes = XUartLite_Recv(&UartLite0, RxDataBufferPointer, RX_BUFF_SIZE);
	  RxBytesTotal += RxBytes;
  }

  RxBytesTotal -= IMAGE_HEADER_SIZE;
  Xil_MemCpy((void*)raw_maze_image, (void*)RxDataBufferPointer, RxBytes - RxBytesTotal);

  while (RxBytesTotal < IMAGE_SIZE)
  {
    RxBytes = XUartLite_Recv(&UartLite0, RxDataBufferPointer, RX_BUFF_SIZE);
    if (RxBytes > 0) {
    	Xil_MemCpy((void*)(raw_maze_image + RxBytesTotal), (void*)RxDataBufferPointer, RxBytes);
    }
    RxBytesTotal += RxBytes;
  }

  xil_printf("Read %d\n\r", RxBytesTotal);

  // make sure all data was sent out
  if (RxBytesTotal != IMAGE_SIZE)
  {
   return XST_FAILURE;
  }

  return XST_SUCCESS;
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
	int btn_value = 0;
	xil_printf("press button\n");
	while(1) {
		btn_value = *(btn_base);
		if(btn_value & 0b1) {
			xil_printf("center button\n");
			break;
		}
		if(btn_value>>1 & 0b1) {
			xil_printf("up button\n");
			break;
		}
		if(btn_value>>2 & 0b1) {
			xil_printf("left button\n");
			break;
		}
		if(btn_value>>3 & 0b1) {
			xil_printf("right button\n");
			break;
		}
		if(btn_value>>4 & 0b1) {
			xil_printf("down button\n");
			break;
		}
	}
	return btn_value;
}

