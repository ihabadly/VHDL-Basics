# VHDL-Basics
Basic VHDL examples

## Install

These examples use [ModelSim and Quartus from Intel FPGA](http://fpgasoftware.intel.com/?edition=lite), [GIT](https://git-scm.com/download/win), [Visual Studio Code](https://code.visualstudio.com/download), make sure they are installed locally on your computer before proceeding.

## Usage

1. Grab a copy of this repository to your computer local folder (i.e. C:\projects):

    ```sh
    $ cd projects
    $ git clone https://github.com/ihabadly/vhdl-basics.git
    ```
2. Use Visual Studio Code (VSC) to edit and view design files:

    ```sh
    $ cd vhdl-basics
    $ code .
    ```
    Click on the count_bin.vhd file in the left pane to view its contents.
    
3. From the VSC View menu, choose Terminal, in the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile any of the design units, For example, to compile the binary counter design and its testbench:

    ```sh
    $ vcom count_bin.vhd
    $ vcom count_bin_tb.vhd
    ```
    
5. Simulate your design. For example, to simulate the binary counter testebench:

    ```sh
    $ vsim work.count_bin_tb
    ```
  
