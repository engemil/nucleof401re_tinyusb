# Implementing Nucleo F401RE to TinyUSB Repo

These notes are for me trying to implement the Nucleo F401RE boad into TinyUSB repository.

These notes are based on:
- https://github.com/hathach/tinyusb/blob/master/docs/reference/getting_started.rst



## NOTES

- Install GCC: `sudo apt install gcc-arm-none-eabi`
- Add the `stm32f401renucleo`-folder in the TinyUSB repo at `hw/bsp/stm32f/stm32f401renucleo`
- Open the following example in the terminal: `cd xamples/device/cdc_msc`
- Install all dependencies: `make BOARD=stm32f401renucleo get-deps`
- Compile the code: `make BOARD=stm32f401renucleo all`
- Installed STM32CubeProgrammer from https://www.st.com/en/development-tools/stm32cubeprog.html
    - The "STM32_Programmer_CLI" will be stored in: `/home/engemil/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/`
    - The install script will add `STM32_PRG_PATH`-variable for you in your `~/.bashrc`-file
        - Test it with: `echo $STM32_PRG_PATH`
    - To test if the Programmer CLI is installed correctly:`$STM32_PRG_PATH/STM32_Programmer_CLI --version`
- Then I updated the file: `/examples/build_systems/make/rules.mk`:
    - line-116: `$(STM32_PRG_PATH)/STM32_Programmer_CLI --connect port=swd --write $< --go`
- Flash the example to my board: `make BOARD=stm32f401renucleo flash`



**TODOs:**
- Verify that one example works (e.g. Devices msg_cmc..)
- Send a pull request to the tinyusb repo, to support stm32f401renucleo

- Install STM32 Cube and setup a project based on this blog: https://ejaaskel.dev/making-usb-device-with-stm32-tinyusb/ (to see if I implemented STM32F401RE Nucleo correctly!)
	- Set up project and test with my hardware!
	- Read the Project files and understand how it can be moved?





