// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Tue May 03 10:46:58 2016
// Host        : TOM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/Peter/Documents/15_16Sophomore/EECE2030/designProject2/designProject2.sim/sim_1/synth/func/tb_top_designProject2_func_synth.v
// Design      : top_designProject2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module clocks
   (clk_1,
    clk,
    clr_IBUF);
  output clk_1;
  input clk;
  input clr_IBUF;

  wire O;
  wire clk;
  wire clk_1;
  wire clk_1_i_1_n_0;
  wire clk_1_i_2_n_0;
  wire clk_1_i_3_n_0;
  wire clk_1_i_4_n_0;
  wire clk_1_i_5_n_0;
  wire clk_1_i_6_n_0;
  wire clr_IBUF;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[0]_i_6_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [27:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [3:3]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFG" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    IBUF_OSC_CLK
       (.I(clk),
        .O(O));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    clk_1_i_1
       (.I0(clk_1_i_2_n_0),
        .I1(clk_1_i_3_n_0),
        .I2(clk_1_i_4_n_0),
        .I3(clk_1_i_5_n_0),
        .I4(clk_1_i_6_n_0),
        .I5(clk_1),
        .O(clk_1_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    clk_1_i_2
       (.I0(count_reg[14]),
        .I1(count_reg[13]),
        .I2(count_reg[7]),
        .I3(count_reg[8]),
        .I4(count_reg[19]),
        .I5(count_reg[20]),
        .O(clk_1_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    clk_1_i_3
       (.I0(count_reg[12]),
        .I1(count_reg[6]),
        .I2(count_reg[15]),
        .I3(count_reg[17]),
        .I4(count_reg[4]),
        .I5(count_reg[5]),
        .O(clk_1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    clk_1_i_4
       (.I0(count_reg[24]),
        .I1(count_reg[25]),
        .I2(count_reg[26]),
        .I3(count_reg[27]),
        .I4(count_reg[22]),
        .I5(count_reg[23]),
        .O(clk_1_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    clk_1_i_5
       (.I0(count_reg[10]),
        .I1(count_reg[9]),
        .I2(count_reg[11]),
        .I3(count_reg[16]),
        .I4(count_reg[21]),
        .I5(count_reg[18]),
        .O(clk_1_i_5_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    clk_1_i_6
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .O(clk_1_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_1_reg
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(clk_1_i_1_n_0),
        .Q(clk_1));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[0]_i_3 
       (.I0(count_reg[3]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[0]_i_4 
       (.I0(count_reg[2]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[0]_i_5 
       (.I0(count_reg[1]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1555555555555555)) 
    \count[0]_i_6 
       (.I0(count_reg[0]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[20]_i_3 
       (.I0(count_reg[22]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[20]_i_4 
       (.I0(count_reg[21]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[20]_i_5 
       (.I0(count_reg[20]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[24]_i_2 
       (.I0(count_reg[27]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[24]_i_3 
       (.I0(count_reg[26]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[24]_i_4 
       (.I0(count_reg[25]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[24]_i_5 
       (.I0(count_reg[24]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[4]_i_3 
       (.I0(count_reg[6]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[4]_i_4 
       (.I0(count_reg[5]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[4]_i_5 
       (.I0(count_reg[4]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .I1(clk_1_i_2_n_0),
        .I2(clk_1_i_3_n_0),
        .I3(clk_1_i_4_n_0),
        .I4(clk_1_i_5_n_0),
        .I5(clk_1_i_6_n_0),
        .O(\count[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count[0]_i_2_n_0 }),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 ,\count[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\NLW_count_reg[24]_i_1_CO_UNCONNECTED [3],\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(O),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]));
endmodule

module dff
   (led_OBUF,
    sw_IBUF,
    clk_1,
    clr_IBUF,
    o_data);
  output [1:0]led_OBUF;
  input [1:0]sw_IBUF;
  input clk_1;
  input clr_IBUF;
  input o_data;

  wire clk_1;
  wire clr_IBUF;
  wire [1:0]led_OBUF;
  wire o_data;
  wire o_data1_in;
  wire [1:0]sw_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0B8A)) 
    \led_OBUF[0]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(o_data1_in),
        .I2(o_data),
        .I3(sw_IBUF[0]),
        .O(led_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h55D0)) 
    \led_OBUF[1]_inst_i_1 
       (.I0(sw_IBUF[1]),
        .I1(sw_IBUF[0]),
        .I2(o_data1_in),
        .I3(o_data),
        .O(led_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    o_data_reg
       (.C(clk_1),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(sw_IBUF[0]),
        .Q(o_data1_in));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module dff_0
   (o_data,
    sw_IBUF,
    clk_1,
    clr_IBUF);
  output o_data;
  input [0:0]sw_IBUF;
  input clk_1;
  input clr_IBUF;

  wire clk_1;
  wire clr_IBUF;
  wire o_data;
  wire [0:0]sw_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    o_data_reg
       (.C(clk_1),
        .CE(1'b1),
        .CLR(clr_IBUF),
        .D(sw_IBUF),
        .Q(o_data));
endmodule

(* NotValidForBitStream *)
module top_designProject2
   (clk,
    sw,
    clr,
    led);
  input clk;
  input [1:0]sw;
  input clr;
  output [1:0]led;

  (* IBUF_LOW_PWR *) wire clk;
  wire clk_1;
  wire clr;
  wire clr_IBUF;
  wire [1:0]led;
  wire [1:0]led_OBUF;
  wire o_data;
  wire [1:0]sw;
  wire [1:0]sw_IBUF;

  clocks CLOCK
       (.clk(clk),
        .clk_1(clk_1),
        .clr_IBUF(clr_IBUF));
  dff X1PrevState
       (.clk_1(clk_1),
        .clr_IBUF(clr_IBUF),
        .led_OBUF(led_OBUF),
        .o_data(o_data),
        .sw_IBUF(sw_IBUF));
  dff_0 X2PrevState
       (.clk_1(clk_1),
        .clr_IBUF(clr_IBUF),
        .o_data(o_data),
        .sw_IBUF(sw_IBUF[1]));
  IBUF clr_IBUF_inst
       (.I(clr),
        .O(clr_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
