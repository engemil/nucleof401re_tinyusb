# Raspberry Pi Pico TinyUSB Example

This is notes on how to setup Raspberry Pi Pico (rp2040) with a TinyUSB example.

These notes are made for Ubuntu (Linux), and are based on: https://github.com/hathach/tinyusb/blob/master/docs/reference/getting_started.rst

## Prerequisites

- Raspberry Pi Pico
- Debugger
    - Another raspberry pi pico acting as a CMSIS-DAP debug probe
    - Raspberry pi pico debug probe
    - Segger J-Link
    - DAPLink-compatible adapter
    - ST-Link V2/2-1 (converted to CMSIS-DAP firmare)
- USB Cable
- Visual Studio Code

## Setup Needed Software

- Setup the needed software on Ubuntu
    - Install cmake: `sudo apt install cmake -y`
    - Install Python3: `sudo apt install python3 -y`
    - (Todo: other python related stuff?)
    - Install pyOCD: `sudo apt install python3-pyocd -y`
- Setup Raspberry Pi Pico SDK for your computer:
    - Store it somewhere you remember: `cd ~/Documents`
    - Clone the Pico SDK repo: `git clone https://github.com/raspberrypi/pico-sdk.git`
    - Add an environment variable needed: `export PICO_SDK_PATH=~/Documents/pico-sdk`
        - Check that it works with: `echo $PICO_SDK_PATH`
        - Let's add some rules for 

## Setup a TinyUSB Example

Since TinyUSB repo contains some examples, we will use one of those.

- Clone the TinyUSB repo: `gut clone https://github.com/hathach/tinyusb.git`
- Go into the project: `cd tinyusb`
- Let's go to an example: `cd /examples/device/cdc_msc`

- We need to get some dependencies: `make BOARD=raspberry_pi_pico get-deps`
- Compile the example: `make BOARD=raspberry_pi_pico all`

(MISSING NOTES: Connecting the Raspberry Pi Pico with a debug probe)

- Flash the example onto the board: `make BOARD=raspberry_pi_pico flash`
    - For Raspberry Pi Pico, the project is set up to use PyOCD.
    - **Note:** some examples especially those that uses Vendor class (e.g webUSB) may requires udev permission on Linux (and/or macOS) to access usb device. 
        - Copy the .rules file inside the TinyUSB repo: `cp examples/device/99-tinyusb.rules /etc/udev/rules.d/`
        - Reload udevadm: `sudo udevadm control --reload-rules && sudo udevadm trigger`


(MISSING NOTES: Wrap up the example)