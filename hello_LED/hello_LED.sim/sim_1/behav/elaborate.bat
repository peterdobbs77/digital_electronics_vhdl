@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto cfb957ebd6be42e7b490ad09a9c85bde -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_top_hello_led_behav xil_defaultlib.tb_top_hello_led -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
