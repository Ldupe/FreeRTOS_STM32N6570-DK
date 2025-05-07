#!/bin/bash

APP_NAME="FreeRTOS_STM32N6570-DK"

FSBL_BIN_FILE="./FSBL/Debug/${APP_NAME}_FSBL.bin"
APP_BIN_FILE="./Appli/Debug/${APP_NAME}_Appli.bin"

FLASH_FSBL_ADDRESS=0x70000000
FLASH_APP_ADDRESS=0x70100000

## Remove previously signed binaries
rm -f *.bin

## Detect OS and set paths accordingly
OS=$(uname -s)
case "$OS" in
    Linux*)
        PROGRAMMER="${HOME}/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_Programmer_CLI"
        SIGNING_TOOL="${HOME}/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_SigningTool_CLI"
        EXTERNAL_LOADER="${HOME}/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/ExternalLoader/MX66UW1G45G_STM32N6570-DK.stldr"
        ;;
    Darwin*) # macOS
        PROGRAMMER="/Applications/STMicroelectronics/STM32CubeProgrammer.app/Contents/MacOS/bin/STM32_Programmer_CLI"
        SIGNING_TOOL="/Applications/STMicroelectronics/STM32CubeProgrammer.app/Contents/MacOS/bin/STM32_SigningTool_CLI"
        EXTERNAL_LOADER="/Applications/STMicroelectronics/STM32CubeProgrammer.app/Contents/MacOS/bin/ExternalLoader/MX66UW1G45G_STM32N6570-DK.stldr"
        ;;
    CYGWIN*|MINGW*|MSYS*) # Windows (Git Bash, Cygwin, Msys)
        PROGRAMMER="C:/Program Files/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_Programmer_CLI.exe"
        SIGNING_TOOL="C:/Program Files/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/STM32_SigningTool_CLI.exe"
        EXTERNAL_LOADER="C:/Program Files/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/ExternalLoader/MX66UW1G45G_STM32N6570-DK.stldr"
        ;;
    *)
        echo "Unsupported OS: $OS"
        exit 1
        ;;
esac

## Required FSBL signing for BOOTROM jump (adds padding and header)
"$SIGNING_TOOL" -bin "$FSBL_BIN_FILE" -nk -of 0x80000000 -t fsbl -o FSBL-trusted.bin -hv 2.3 -dump FSBL-trusted.bin
## Required Appli signing for FSBL jump (adds padding and header)
"$SIGNING_TOOL" -bin "$APP_BIN_FILE" -nk -of 0x80000000 -t fsbl -o Appli-trusted.bin -hv 2.3 -dump Appli-trusted.bin

## Flash the device with the signed binaries in the NOR EXTERNAL FLASH
"$PROGRAMMER" -c port=SWD mode=HOTPLUG ap=1 -w FSBL-trusted.bin $FLASH_FSBL_ADDRESS -el "$EXTERNAL_LOADER"
"$PROGRAMMER" -c port=SWD mode=HOTPLUG ap=1 -w Appli-trusted.bin $FLASH_APP_ADDRESS -el "$EXTERNAL_LOADER"