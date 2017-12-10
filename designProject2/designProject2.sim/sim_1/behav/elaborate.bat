@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto d0fa9c4138904a3cba804bb8c4731a0f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_top_designProject2_behav xil_defaultlib.tb_top_designProject2 -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
