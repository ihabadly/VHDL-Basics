# VHDL-Basics
Basic VHDL examples

## Install

This module uses [ModelSim Intel FPGA](), [GIT](https://git-scm.com/download/win), [Visual Studio Code](), make sure they are installed locally on your computer before proceeding.

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
    From VSC View menu, choose Terminal.  
    
3. In the VCS Terminal, create a "work" library:

    ```sh
    $ vlib work
    ```
    
4. Compile any of the design units, for example, to compile the binary counter example use the file "count_bin.vhd":

    ```sh
    $ vcom count_bin.vhd
    ```
    
5. Simulate your design, for example the binary counter:

    ```sh
    $ vsim work.count_bin
    ```
  
