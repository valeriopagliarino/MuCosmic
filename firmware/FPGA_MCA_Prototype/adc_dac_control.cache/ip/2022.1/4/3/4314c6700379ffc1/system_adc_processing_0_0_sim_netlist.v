// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Mar  9 15:17:43 2023
// Host        : VALERIOPAGLFEF1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_adc_processing_0_0_sim_netlist.v
// Design      : system_adc_processing_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_processing
   (led_out,
    adc_dat_a_i,
    clk);
  output [7:0]led_out;
  input [7:0]adc_dat_a_i;
  input clk;

  wire [7:0]adc_dat_a_i;
  wire clk;
  wire \clk_counter[0]_i_2_n_0 ;
  wire [26:1]clk_counter_reg;
  wire \clk_counter_reg[0]_i_1_n_0 ;
  wire \clk_counter_reg[0]_i_1_n_1 ;
  wire \clk_counter_reg[0]_i_1_n_2 ;
  wire \clk_counter_reg[0]_i_1_n_3 ;
  wire \clk_counter_reg[0]_i_1_n_4 ;
  wire \clk_counter_reg[0]_i_1_n_5 ;
  wire \clk_counter_reg[0]_i_1_n_6 ;
  wire \clk_counter_reg[0]_i_1_n_7 ;
  wire \clk_counter_reg[12]_i_1_n_0 ;
  wire \clk_counter_reg[12]_i_1_n_1 ;
  wire \clk_counter_reg[12]_i_1_n_2 ;
  wire \clk_counter_reg[12]_i_1_n_3 ;
  wire \clk_counter_reg[12]_i_1_n_4 ;
  wire \clk_counter_reg[12]_i_1_n_5 ;
  wire \clk_counter_reg[12]_i_1_n_6 ;
  wire \clk_counter_reg[12]_i_1_n_7 ;
  wire \clk_counter_reg[16]_i_1_n_0 ;
  wire \clk_counter_reg[16]_i_1_n_1 ;
  wire \clk_counter_reg[16]_i_1_n_2 ;
  wire \clk_counter_reg[16]_i_1_n_3 ;
  wire \clk_counter_reg[16]_i_1_n_4 ;
  wire \clk_counter_reg[16]_i_1_n_5 ;
  wire \clk_counter_reg[16]_i_1_n_6 ;
  wire \clk_counter_reg[16]_i_1_n_7 ;
  wire \clk_counter_reg[20]_i_1_n_0 ;
  wire \clk_counter_reg[20]_i_1_n_1 ;
  wire \clk_counter_reg[20]_i_1_n_2 ;
  wire \clk_counter_reg[20]_i_1_n_3 ;
  wire \clk_counter_reg[20]_i_1_n_4 ;
  wire \clk_counter_reg[20]_i_1_n_5 ;
  wire \clk_counter_reg[20]_i_1_n_6 ;
  wire \clk_counter_reg[20]_i_1_n_7 ;
  wire \clk_counter_reg[24]_i_1_n_2 ;
  wire \clk_counter_reg[24]_i_1_n_3 ;
  wire \clk_counter_reg[24]_i_1_n_5 ;
  wire \clk_counter_reg[24]_i_1_n_6 ;
  wire \clk_counter_reg[24]_i_1_n_7 ;
  wire \clk_counter_reg[4]_i_1_n_0 ;
  wire \clk_counter_reg[4]_i_1_n_1 ;
  wire \clk_counter_reg[4]_i_1_n_2 ;
  wire \clk_counter_reg[4]_i_1_n_3 ;
  wire \clk_counter_reg[4]_i_1_n_4 ;
  wire \clk_counter_reg[4]_i_1_n_5 ;
  wire \clk_counter_reg[4]_i_1_n_6 ;
  wire \clk_counter_reg[4]_i_1_n_7 ;
  wire \clk_counter_reg[8]_i_1_n_0 ;
  wire \clk_counter_reg[8]_i_1_n_1 ;
  wire \clk_counter_reg[8]_i_1_n_2 ;
  wire \clk_counter_reg[8]_i_1_n_3 ;
  wire \clk_counter_reg[8]_i_1_n_4 ;
  wire \clk_counter_reg[8]_i_1_n_5 ;
  wire \clk_counter_reg[8]_i_1_n_6 ;
  wire \clk_counter_reg[8]_i_1_n_7 ;
  wire \clk_counter_reg_n_0_[0] ;
  wire clk_led;
  wire clk_led_i_10_n_0;
  wire clk_led_i_11_n_0;
  wire clk_led_i_1_n_0;
  wire clk_led_i_2_n_0;
  wire clk_led_i_4_n_0;
  wire clk_led_i_5_n_0;
  wire clk_led_i_6_n_0;
  wire clk_led_i_7_n_0;
  wire clk_led_i_8_n_0;
  wire clk_led_i_9_n_0;
  wire [7:0]led_out;
  wire p_0_in;
  wire [3:2]\NLW_clk_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_clk_counter_reg[24]_i_1_O_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \clk_counter[0]_i_2 
       (.I0(\clk_counter_reg_n_0_[0] ),
        .O(\clk_counter[0]_i_2_n_0 ));
  FDRE \clk_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_7 ),
        .Q(\clk_counter_reg_n_0_[0] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\clk_counter_reg[0]_i_1_n_0 ,\clk_counter_reg[0]_i_1_n_1 ,\clk_counter_reg[0]_i_1_n_2 ,\clk_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\clk_counter_reg[0]_i_1_n_4 ,\clk_counter_reg[0]_i_1_n_5 ,\clk_counter_reg[0]_i_1_n_6 ,\clk_counter_reg[0]_i_1_n_7 }),
        .S({clk_counter_reg[3:1],\clk_counter[0]_i_2_n_0 }));
  FDRE \clk_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_5 ),
        .Q(clk_counter_reg[10]),
        .R(1'b0));
  FDRE \clk_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_4 ),
        .Q(clk_counter_reg[11]),
        .R(1'b0));
  FDRE \clk_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_7 ),
        .Q(clk_counter_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[12]_i_1 
       (.CI(\clk_counter_reg[8]_i_1_n_0 ),
        .CO({\clk_counter_reg[12]_i_1_n_0 ,\clk_counter_reg[12]_i_1_n_1 ,\clk_counter_reg[12]_i_1_n_2 ,\clk_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[12]_i_1_n_4 ,\clk_counter_reg[12]_i_1_n_5 ,\clk_counter_reg[12]_i_1_n_6 ,\clk_counter_reg[12]_i_1_n_7 }),
        .S(clk_counter_reg[15:12]));
  FDRE \clk_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_6 ),
        .Q(clk_counter_reg[13]),
        .R(1'b0));
  FDRE \clk_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_5 ),
        .Q(clk_counter_reg[14]),
        .R(1'b0));
  FDRE \clk_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[12]_i_1_n_4 ),
        .Q(clk_counter_reg[15]),
        .R(1'b0));
  FDRE \clk_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_7 ),
        .Q(clk_counter_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[16]_i_1 
       (.CI(\clk_counter_reg[12]_i_1_n_0 ),
        .CO({\clk_counter_reg[16]_i_1_n_0 ,\clk_counter_reg[16]_i_1_n_1 ,\clk_counter_reg[16]_i_1_n_2 ,\clk_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[16]_i_1_n_4 ,\clk_counter_reg[16]_i_1_n_5 ,\clk_counter_reg[16]_i_1_n_6 ,\clk_counter_reg[16]_i_1_n_7 }),
        .S(clk_counter_reg[19:16]));
  FDRE \clk_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_6 ),
        .Q(clk_counter_reg[17]),
        .R(1'b0));
  FDRE \clk_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_5 ),
        .Q(clk_counter_reg[18]),
        .R(1'b0));
  FDRE \clk_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[16]_i_1_n_4 ),
        .Q(clk_counter_reg[19]),
        .R(1'b0));
  FDRE \clk_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_6 ),
        .Q(clk_counter_reg[1]),
        .R(1'b0));
  FDRE \clk_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_7 ),
        .Q(clk_counter_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[20]_i_1 
       (.CI(\clk_counter_reg[16]_i_1_n_0 ),
        .CO({\clk_counter_reg[20]_i_1_n_0 ,\clk_counter_reg[20]_i_1_n_1 ,\clk_counter_reg[20]_i_1_n_2 ,\clk_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[20]_i_1_n_4 ,\clk_counter_reg[20]_i_1_n_5 ,\clk_counter_reg[20]_i_1_n_6 ,\clk_counter_reg[20]_i_1_n_7 }),
        .S(clk_counter_reg[23:20]));
  FDRE \clk_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_6 ),
        .Q(clk_counter_reg[21]),
        .R(1'b0));
  FDRE \clk_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_5 ),
        .Q(clk_counter_reg[22]),
        .R(1'b0));
  FDRE \clk_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[20]_i_1_n_4 ),
        .Q(clk_counter_reg[23]),
        .R(1'b0));
  FDRE \clk_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_7 ),
        .Q(clk_counter_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[24]_i_1 
       (.CI(\clk_counter_reg[20]_i_1_n_0 ),
        .CO({\NLW_clk_counter_reg[24]_i_1_CO_UNCONNECTED [3:2],\clk_counter_reg[24]_i_1_n_2 ,\clk_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_clk_counter_reg[24]_i_1_O_UNCONNECTED [3],\clk_counter_reg[24]_i_1_n_5 ,\clk_counter_reg[24]_i_1_n_6 ,\clk_counter_reg[24]_i_1_n_7 }),
        .S({1'b0,clk_counter_reg[26:24]}));
  FDRE \clk_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_6 ),
        .Q(clk_counter_reg[25]),
        .R(1'b0));
  FDRE \clk_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[24]_i_1_n_5 ),
        .Q(clk_counter_reg[26]),
        .R(1'b0));
  FDRE \clk_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_5 ),
        .Q(clk_counter_reg[2]),
        .R(1'b0));
  FDRE \clk_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[0]_i_1_n_4 ),
        .Q(clk_counter_reg[3]),
        .R(1'b0));
  FDRE \clk_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_7 ),
        .Q(clk_counter_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[4]_i_1 
       (.CI(\clk_counter_reg[0]_i_1_n_0 ),
        .CO({\clk_counter_reg[4]_i_1_n_0 ,\clk_counter_reg[4]_i_1_n_1 ,\clk_counter_reg[4]_i_1_n_2 ,\clk_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[4]_i_1_n_4 ,\clk_counter_reg[4]_i_1_n_5 ,\clk_counter_reg[4]_i_1_n_6 ,\clk_counter_reg[4]_i_1_n_7 }),
        .S(clk_counter_reg[7:4]));
  FDRE \clk_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_6 ),
        .Q(clk_counter_reg[5]),
        .R(1'b0));
  FDRE \clk_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_5 ),
        .Q(clk_counter_reg[6]),
        .R(1'b0));
  FDRE \clk_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[4]_i_1_n_4 ),
        .Q(clk_counter_reg[7]),
        .R(1'b0));
  FDRE \clk_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_7 ),
        .Q(clk_counter_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \clk_counter_reg[8]_i_1 
       (.CI(\clk_counter_reg[4]_i_1_n_0 ),
        .CO({\clk_counter_reg[8]_i_1_n_0 ,\clk_counter_reg[8]_i_1_n_1 ,\clk_counter_reg[8]_i_1_n_2 ,\clk_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\clk_counter_reg[8]_i_1_n_4 ,\clk_counter_reg[8]_i_1_n_5 ,\clk_counter_reg[8]_i_1_n_6 ,\clk_counter_reg[8]_i_1_n_7 }),
        .S(clk_counter_reg[11:8]));
  FDRE \clk_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\clk_counter_reg[8]_i_1_n_6 ),
        .Q(clk_counter_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hA8)) 
    clk_led_i_1
       (.I0(clk_led_i_2_n_0),
        .I1(clk_led),
        .I2(p_0_in),
        .O(clk_led_i_1_n_0));
  LUT6 #(
    .INIT(64'h00001115FFFFFFFF)) 
    clk_led_i_10
       (.I0(clk_counter_reg[5]),
        .I1(clk_counter_reg[4]),
        .I2(clk_counter_reg[2]),
        .I3(clk_counter_reg[3]),
        .I4(clk_counter_reg[6]),
        .I5(clk_counter_reg[8]),
        .O(clk_led_i_10_n_0));
  LUT6 #(
    .INIT(64'hFFFEEEEE00000000)) 
    clk_led_i_11
       (.I0(clk_counter_reg[5]),
        .I1(clk_counter_reg[4]),
        .I2(clk_counter_reg[1]),
        .I3(clk_counter_reg[2]),
        .I4(clk_counter_reg[3]),
        .I5(clk_counter_reg[6]),
        .O(clk_led_i_11_n_0));
  LUT5 #(
    .INIT(32'h00000010)) 
    clk_led_i_2
       (.I0(clk_counter_reg[25]),
        .I1(clk_counter_reg[26]),
        .I2(clk_led_i_4_n_0),
        .I3(clk_counter_reg[24]),
        .I4(clk_counter_reg[23]),
        .O(clk_led_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    clk_led_i_3
       (.I0(clk_counter_reg[25]),
        .I1(clk_counter_reg[26]),
        .I2(clk_led_i_5_n_0),
        .I3(clk_counter_reg[22]),
        .I4(clk_counter_reg[24]),
        .I5(clk_counter_reg[23]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h7577FFFFFFFFFFFF)) 
    clk_led_i_4
       (.I0(clk_counter_reg[20]),
        .I1(clk_counter_reg[19]),
        .I2(clk_led_i_6_n_0),
        .I3(clk_counter_reg[18]),
        .I4(clk_counter_reg[21]),
        .I5(clk_counter_reg[22]),
        .O(clk_led_i_4_n_0));
  LUT6 #(
    .INIT(64'hA888000000000000)) 
    clk_led_i_5
       (.I0(clk_counter_reg[21]),
        .I1(clk_counter_reg[18]),
        .I2(clk_led_i_7_n_0),
        .I3(clk_counter_reg[16]),
        .I4(clk_counter_reg[19]),
        .I5(clk_counter_reg[20]),
        .O(clk_led_i_5_n_0));
  LUT6 #(
    .INIT(64'h55557757FFFFFFFF)) 
    clk_led_i_6
       (.I0(clk_counter_reg[17]),
        .I1(clk_counter_reg[14]),
        .I2(clk_counter_reg[13]),
        .I3(clk_led_i_8_n_0),
        .I4(clk_counter_reg[15]),
        .I5(clk_counter_reg[16]),
        .O(clk_led_i_6_n_0));
  LUT6 #(
    .INIT(64'hAAAAA88800000000)) 
    clk_led_i_7
       (.I0(clk_counter_reg[15]),
        .I1(clk_counter_reg[14]),
        .I2(clk_led_i_9_n_0),
        .I3(clk_counter_reg[11]),
        .I4(clk_counter_reg[13]),
        .I5(clk_counter_reg[17]),
        .O(clk_led_i_7_n_0));
  LUT6 #(
    .INIT(64'h11115515FFFFFFFF)) 
    clk_led_i_8
       (.I0(clk_counter_reg[11]),
        .I1(clk_counter_reg[10]),
        .I2(clk_counter_reg[7]),
        .I3(clk_led_i_10_n_0),
        .I4(clk_counter_reg[9]),
        .I5(clk_counter_reg[12]),
        .O(clk_led_i_8_n_0));
  LUT6 #(
    .INIT(64'hFEEEAAAA00000000)) 
    clk_led_i_9
       (.I0(clk_counter_reg[10]),
        .I1(clk_counter_reg[8]),
        .I2(clk_counter_reg[7]),
        .I3(clk_led_i_11_n_0),
        .I4(clk_counter_reg[9]),
        .I5(clk_counter_reg[12]),
        .O(clk_led_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_led_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_led_i_1_n_0),
        .Q(clk_led),
        .R(1'b0));
  FDRE \led_out_reg[0] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[0]),
        .Q(led_out[0]),
        .R(1'b0));
  FDRE \led_out_reg[1] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[1]),
        .Q(led_out[1]),
        .R(1'b0));
  FDRE \led_out_reg[2] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[2]),
        .Q(led_out[2]),
        .R(1'b0));
  FDRE \led_out_reg[3] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[3]),
        .Q(led_out[3]),
        .R(1'b0));
  FDRE \led_out_reg[4] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[4]),
        .Q(led_out[4]),
        .R(1'b0));
  FDRE \led_out_reg[5] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[5]),
        .Q(led_out[5]),
        .R(1'b0));
  FDRE \led_out_reg[6] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[6]),
        .Q(led_out[6]),
        .R(1'b0));
  FDRE \led_out_reg[7] 
       (.C(clk_led),
        .CE(1'b1),
        .D(adc_dat_a_i[7]),
        .Q(led_out[7]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_adc_processing_0_0,adc_processing,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "adc_processing,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (adc_dat_a_i,
    adc_dat_b_i,
    clk,
    led_out);
  input [13:0]adc_dat_a_i;
  input [13:0]adc_dat_b_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0" *) input clk;
  output [7:0]led_out;

  wire [13:0]adc_dat_a_i;
  wire clk;
  wire [7:0]led_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_adc_processing inst
       (.adc_dat_a_i(adc_dat_a_i[7:0]),
        .clk(clk),
        .led_out(led_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
