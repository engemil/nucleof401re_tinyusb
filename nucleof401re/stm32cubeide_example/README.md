# STM32F401RE TinyUSB Example


## Prequisites

- Download STM32CubeIDE from here: https://www.st.com/en/development-tools/stm32cubeide.html
	-  In my case `STM32CubeIDE-Lnx` for linux (verison 1.17.0)
- For Linux it is a .sh script file.
	- Make it executable: `sudo chmod +x ./<STM-INSTALL-FILENAME>.sh
	- Execute it: `./<STM-INSTALL-FILENAME>.sh`
- Open up **STM32CubeIDE** and create a project (**STM32 Project**):
	- Instead of MCU/MPU Selector, go to **Board Selector**. This way, you will be prompted to _initialize all peripherals with their default Mode ?_ and you answer **Yes**.

Now you have a STM32 Project for the Nucleo F401RE board, with the default pins configured for the board.

## Setup TinyUSB


- In the project folder make a folder called `Libs`. To keep our libraries (such as TinyUSB).

- Then clone the tinyUSB repo into the `Libs` folder:
	- Change directory to the Libs folder: `cd <path-to-project>/Libs`
	- Clone the repo: `git clone https://github.com/hathach/tinyusb.git`
- Next, right-click on the project in the project explorer and click on **properties**.
	- Under **C/C++ General** go to **Paths and Symbols**.
		- Under the **Includes** tab, add the following:
			- src folder: `/$(ProjName)/Libs/tinyusb/src`
			- hw folder: `/$(ProjName)/Libs/tinyusb/hw`
		- Under the **Source Location** tab, add the following:
			- path: `/stm32f401re_tinyusb_example/Libs/tinyusb/src` (where `stm32f401re_tinyusb_example` is your project folder name).

			
			