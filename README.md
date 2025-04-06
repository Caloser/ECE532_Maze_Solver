# ECE532_Maze_Solver

## Design Tree
``` C
ECE532_Maze_Solver
├── README.md
├── maze_solver
│   ├── maze_solver.tcl  // tcl script to generate block design
│   ├── maze_solver.xpr
│   ├── maze_solver.sdk
│   │   ├── midterm_demo_wrapper_hw_platform_0  // MicroBlaze Hardware Files
│   │   ├── maze_solver  // MicroBlaze Files
│   │   |   └── src
│   │   |       ├── helloworld.c
│   │   |       ├── lscript.ld
│   │   |       ├── platform.c
│   │   |       ├── platform.h
│   │   |       └── platform_config.h
│   │   └── maze_solver_bsp  // MicroBlaze Project Files
│   └── maze_solver.srcs  // custom verilog files
│       ├── constrs_1/imports/bfs_with_vga
│       |   └── vga_magic_constr.xdc
│       └── sources_1/imports/imports
│           ├── bfs_with_vga
│           |   └── vga_truncator.v
│           ├── new
│           |   ├── iobuf.v
│           |   └── ov7670_to_axis.v
│           └── src
│               └── camera_read.v
├── bfs_ip/lee/lee.srcs/sources_1  // custom IP
│   ├── bfs_maze_solver.v
│   └── bfs_top.v
├── image_proc_ips
|   ├── dilation/dilation.srcs/sources_1/new  // custom IP
|   |   ├── dilation.v
|   |   ├── dilationTopLevel.v
|   |   ├── lineBufferDilation.v
|   |   └── lineControlDilation.v
|   ├── erosion/erosion.srcs/sources_1/new  // custom IP
|   |   ├── erosion.v
|   |   ├── erosionTopLevel.v
|   |   ├── lineBufferErosion.v
|   |   └── lineControlErosion.v
|   └── greyscaleThreshold3/greyscaleThreshold3.srcs/sources_1/new  // custom IP
|       └── greyscaleThreshold3.v
└── python_scripts
    ├── gen_maze.py
    └── maze_serdes.py
```
The above tree diagram shows the location of the projects main files and folders. Only the most important files are being shown.

The maze_solver project can be opened with the maze_solver.xpr. Note you will need to re-package the IPs in “lee” (the name of the BFS IP), “greyscaleThreshold3”, “erosion” and “dilation” and you will need to fix the File Groups path to where the files are located on your machine. You can also create a new project and run maze_solver.tcl which generates the same block diagram. Note you will still need to re-package the IPs and include them in the project by going to Tools->Settings->IP->Repository and adding paths to the previously mentioned IPs.

All MicroBlaze files are inside maze_solver/maze_solver.sdk which includes the hardware and C files to run the maze_solver program. When running the demo all blocks will first be configured by the MicroBlaze before it begins. The VGA screen will display the live camera feed with the modified maze through image processing and BFS with the walls in white, free space in black, solved path in green and distance gradient in blue. To pause the live feed press the center button and to resume press the right button.

The Verilog files for the project are inside maze_solver/maze_solver.srcs which are used to interface with the VGA and camera. The bfs_ip and image_proc_ips have their folders with the respective IPs sources and testbenches inside.

The “python_scripts folder” contains two scripts:
 - “gen_maze.py” generates a random maze image that can be captured by the camera.
 - “maze_serdes.py” generates mazes for use with the BFS testbench “bfs_maze_solver_tb.v”. It has two options:
    1. Serialize an inputted rectangular maze bitmap so it can be inputted into BRAM via $readmemb for use in the testbench, and also generates the golden output that is expected based on the input maze and start position.
    2. Deserialize the output data from the testbench into a rectangular bitmap form so it can be visually compared to an expected golden output.
