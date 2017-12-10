@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto 9f14212152794d0d80ae9ba4253f7259 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_top_4bitSubtractor_behav xil_defaultlib.tb_top_4bitSubtractor -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
