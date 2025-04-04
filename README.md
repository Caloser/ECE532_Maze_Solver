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
├── bfs_ip/lee/lee.srcs/sources_1
│   ├── bfs_maze_solver.v
│   ├── bfs_top.v
│   └── lee.v
└── image_proc_ips
    ├── dilation/dilation.srcs/sources_1/new
    |   ├── dilation.v
    |   ├── dilationTopLevel.v
    |   ├── lineBufferDilation.v
    |   └── lineControlDilation.v
    ├── erosion/erosion.srcs/sources_1/new
    |   ├── erosion.v
    |   ├── erosionTopLevel.v
    |   ├── lineBufferErosion.v
    |   └── lineControlErosion.v
    └── greyscaleThreshold3/greyscaleThreshold3.srcs/sources_1/new
        └── greyscaleThreshold3.v
```
The above tree diagram shows the location of the projects main files and folders. Only the most important files are being shown.

The maze_solver/maze_solver.tcl file can be used to generate the same block diagram as the projects.

All Microblaze files are inside maze_solver/maze_solver.sdk which includes the hardware and c files to run the maze_solver program. When running the demo all blocks will first be configured by the microblaze before it begins. The VGA screen will display the live camera feed with the modfied maze through image processing and BFS with the walls in white, free space in black, solved path in green and distance gradient in blue. To pause the live feed press the center button and to resume press the right button.

The verilog files for the project are inside maze_solver/maze_solver.srcs which are used to interface with the VGA and camera. The bfs_ip and image_proc_ips have their folders with the respect ips inside.
