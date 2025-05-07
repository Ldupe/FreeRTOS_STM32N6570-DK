# FreeRTOS Template project for STM32N6570-DK


This repository provides a template project integrating **FreeRTOS** for you to get started with  **STM32N6** using the board from the [STM32N6570-DK Discovery kit](https://www.st.com/en/evaluation-tools/stm32n6570-dk.html).

## STM32N6 specificities

STM32N6 devices are Flashless MCUs that provide several memory units to load your FW into. Because of this specificity, the procedure to create projects, flash and debug them is different than with other STM32 boards.

### Memory usage
STM32N6 devices allow you to load and execute your code in different memory units :
* Load and execute the FW from internal memory SRAM
* Load in one External Memory Unit (several types available) and execute the FW from internal memory SRAM
* Load and execute the FW from one External Memory Unit (XiP Execute in Place)

In this repository we used the most common and easier to work with setup :
we will flash our binaries in the External Flash NOR memory unit amd execute from the SRAM.

### Projects structure
STM32N6 Projects available structures are the following :
* FSBL only : a First Stage Boot Loader that integrates your FW, assuming the FW is simple and lightweight
* FSBL + Application : FSBL is used to set up the application running depending on its location and can integrate minor tasks. The application is your FW.
* FSBL + Non Secure Application + Secure Application : same as previous adding a dedicated project and memory location to protect the Secure Application project content.

In this repository we used the most common and easier to work with project structure for N6 boards, the FSBL + Application.  
In our project :
* The FSBL is used to configure the System Clock
* The App integrates FreeRTOS, and implements a FreeRTOS tasks that toggles an LED.

### FW execution workflow

* After a Reset, the integrated BootROM of the board executes.
* If the FSBL was loaded in an external flash, BootROM copies it from there into the SRAM.

    This project :  copies the FSBL from the External flash 0x70000000 into the SRAM 0x034000000

* Jump from the BootROM into the FSBL and FSBL executes.
* If an application project was loaded in an external memory, then :
    * if running from external memory, sets up the execute in place
    * otherwise copies the Application from the External memory into the SRAM.

    This project :  copies the Application from the External flash 0x70100000 into the SRAM 0x034000000.
    * Jump from the FSBL into the Application
    * The Application executes

## Prerequisites

### Softwares
To be able to use **STM32N6** board, you will need the following software tools with equal or newer versions :
* [STM32CubeMX](http://www.st.com/stm32cubemx) v6.13.0
* [STM32CubeIDE](https://www.st.com/stm32cubeide) v1.17.0
* [STM32CubeProgrammer](http://www.st.com/stm32cubeprog) v2.18.0

To clone this repo you will need [GitBash](https://git-scm.com/downloads).

### CMSIS packs
If you want to be able to modify the [STM32CubeMX](http://www.st.com/stm32cubemx) .ioc file of this project and be able to re-generate the code, you will need to download and install the follwing pack on CubeMX.
* [ARM.CMSIS-FreeRTOS.11.1.0.pack](https://keilpack.azureedge.net/pack/ARM.CMSIS-FreeRTOS.11.1.0.pack)


## Running the project on your N6 board

### Clone the repository
Open a GitBash window in the location your want to import the project in and run the following commands :

```bash
git clone https://github.com/Ldupe/FreeRTOS_STM32N6570-DK.git
git submodule update --init --recursive
```
### Build the project

* Import the project folder *FreeRTOS_STM32N6570-DK* in [STM32CubeIDE](https://www.st.com/stm32cubeide).
* You should obtain one project containing the two subprojects *Appli* and *FSBL*. Build both of them.

### Flash the project

STM32N6 boards requires binaries to be signed and flashed in a specific way. To do so :
* Place the board BOOT switches in DEV_BOOT mode  :
* Hit the Reset button for the switch new position to be taken into account.
* Open a GitBash window in the *FreeRTOS_STM32N6570-DK* folder.  
  Run the following command in GitBash to run the *flash.sh* script that will sign and flash both the FSBL and Appli binaries into your board :

    ```bash
    sh flash.sh
    ```

    **Script Troubleshoot**
    * Try powercycling the board, make sure the switches are in DEV_BOOT mode, hit Reset anf run the script again.  
    This error happens often and there is currently no available fix.
    * Make sure that the binary generation is enabled in both the FSBL and Appli project configuration :  
    Properties > C/C++ Build > Settings > MCU/MPU Post build outputs > Check "Convert to binary file" box

* Place the board BOOT switches in FLASH_BOOT mode  :
* Hit the Reset button for the switch new position to be taken into account.

The project should start running. You should see the Green LED1 toggling at the bottom left of the [STM32N6570-DK](https://www.st.com/en/evaluation-tools/stm32n6570-dk.html) board.




## Debugging the project
* Start the debug session using STM32CubeIDE.
* Use a serial terminal to monitor the debug output.






## edit the project
* Dowload [ARM.CMSIS-FreeRTOS.11.1.0.pack](https://keilpack.azureedge.net/pack/ARM.CMSIS-FreeRTOS.11.1.0.pack) and install it using STM32CubeMX.
* Open the 'stm32n6570_dk_freertos.ioc' file with [STM32CubeMX](http://www.st.com/stm32cubemx)
* Open it with [STM32CubeIDE](https://www.st.com/stm32cubeide) build the project FSBL and Appli projects .
