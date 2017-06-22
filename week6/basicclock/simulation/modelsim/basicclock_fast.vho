-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/04/2017 16:22:20"

-- 
-- Device: Altera EP2C8T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rtc IS
    PORT (
	led_rst : OUT std_logic;
	clk : IN std_logic;
	segout : OUT std_logic;
	led_clk_x : OUT std_logic;
	digout : OUT std_logic_vector(3 DOWNTO 0)
	);
END rtc;

-- Design Ports Information
-- led_rst	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segout	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_clk_x	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[3]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[2]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rtc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_segout : std_logic;
SIGNAL ww_led_clk_x : std_logic;
SIGNAL ww_digout : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|led_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|cnt[3]~30_combout\ : std_logic;
SIGNAL \inst|cnt[4]~32_combout\ : std_logic;
SIGNAL \inst|cnt[6]~36_combout\ : std_logic;
SIGNAL \inst|cnt[10]~44_combout\ : std_logic;
SIGNAL \inst|cnt[19]~62_combout\ : std_logic;
SIGNAL \inst|cnt[22]~68_combout\ : std_logic;
SIGNAL \inst|cnt[25]~75\ : std_logic;
SIGNAL \inst|cnt[26]~76_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~1_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|seg~6_combout\ : std_logic;
SIGNAL \inst2|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|seg~7_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ : std_logic;
SIGNAL \inst|digit1[1]~12_combout\ : std_logic;
SIGNAL \inst|digit1[2]~13_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|tictoc~0_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|led_clk~0_combout\ : std_logic;
SIGNAL \inst2|led_clk~regout\ : std_logic;
SIGNAL \inst2|led_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|cnt[1]~2_combout\ : std_logic;
SIGNAL \inst2|cnt[2]~3_combout\ : std_logic;
SIGNAL \inst2|cnt~0_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|cnt[1]~26_combout\ : std_logic;
SIGNAL \inst|cnt[1]~27\ : std_logic;
SIGNAL \inst|cnt[2]~28_combout\ : std_logic;
SIGNAL \inst|cnt[2]~29\ : std_logic;
SIGNAL \inst|cnt[3]~31\ : std_logic;
SIGNAL \inst|cnt[4]~33\ : std_logic;
SIGNAL \inst|cnt[5]~34_combout\ : std_logic;
SIGNAL \inst|cnt[5]~35\ : std_logic;
SIGNAL \inst|cnt[6]~37\ : std_logic;
SIGNAL \inst|cnt[7]~38_combout\ : std_logic;
SIGNAL \inst|cnt[7]~39\ : std_logic;
SIGNAL \inst|cnt[8]~41\ : std_logic;
SIGNAL \inst|cnt[9]~42_combout\ : std_logic;
SIGNAL \inst|cnt[9]~43\ : std_logic;
SIGNAL \inst|cnt[10]~45\ : std_logic;
SIGNAL \inst|cnt[11]~46_combout\ : std_logic;
SIGNAL \inst|cnt[11]~47\ : std_logic;
SIGNAL \inst|cnt[12]~48_combout\ : std_logic;
SIGNAL \inst|cnt[12]~49\ : std_logic;
SIGNAL \inst|cnt[13]~50_combout\ : std_logic;
SIGNAL \inst|cnt[13]~51\ : std_logic;
SIGNAL \inst|cnt[14]~52_combout\ : std_logic;
SIGNAL \inst|cnt[14]~53\ : std_logic;
SIGNAL \inst|cnt[15]~54_combout\ : std_logic;
SIGNAL \inst|cnt[15]~55\ : std_logic;
SIGNAL \inst|cnt[16]~56_combout\ : std_logic;
SIGNAL \inst|cnt[16]~57\ : std_logic;
SIGNAL \inst|cnt[17]~59\ : std_logic;
SIGNAL \inst|cnt[18]~60_combout\ : std_logic;
SIGNAL \inst|cnt[17]~58_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|cnt[18]~61\ : std_logic;
SIGNAL \inst|cnt[19]~63\ : std_logic;
SIGNAL \inst|cnt[20]~65\ : std_logic;
SIGNAL \inst|cnt[21]~66_combout\ : std_logic;
SIGNAL \inst|cnt[21]~67\ : std_logic;
SIGNAL \inst|cnt[22]~69\ : std_logic;
SIGNAL \inst|cnt[23]~70_combout\ : std_logic;
SIGNAL \inst|cnt[23]~71\ : std_logic;
SIGNAL \inst|cnt[24]~73\ : std_logic;
SIGNAL \inst|cnt[25]~74_combout\ : std_logic;
SIGNAL \inst|cnt[24]~72_combout\ : std_logic;
SIGNAL \inst|cnt[20]~64_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|cnt[8]~40_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|seconds~1_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|seconds~0_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|seconds~3_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|seconds~2_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|digit3[2]~12_combout\ : std_logic;
SIGNAL \inst2|cnt~1_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|digout~12_combout\ : std_logic;
SIGNAL \inst2|digout~8_combout\ : std_logic;
SIGNAL \inst2|digout~9_combout\ : std_logic;
SIGNAL \inst2|digout~10_combout\ : std_logic;
SIGNAL \inst2|digbuff[0]~feeder_combout\ : std_logic;
SIGNAL \inst2|digout[2]~5_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|digout[2]~6_combout\ : std_logic;
SIGNAL \inst2|digbuff[2]~feeder_combout\ : std_logic;
SIGNAL \inst2|digout~4_combout\ : std_logic;
SIGNAL \inst2|digbuff[3]~feeder_combout\ : std_logic;
SIGNAL \inst2|digout~11_combout\ : std_logic;
SIGNAL \inst2|digit[1]~0_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|digit1[0]~11_combout\ : std_logic;
SIGNAL \inst|minutes~2_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|minutes~3_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|minutes~1_combout\ : std_logic;
SIGNAL \inst|minutes~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~1_combout\ : std_logic;
SIGNAL \inst2|digit[0]~1_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst|digit3[0]~2_cout\ : std_logic;
SIGNAL \inst|digit3[0]~4_cout\ : std_logic;
SIGNAL \inst|digit3[0]~6_cout\ : std_logic;
SIGNAL \inst|digit3[0]~8_cout\ : std_logic;
SIGNAL \inst|digit3[0]~9_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst|digit1[0]~2_cout\ : std_logic;
SIGNAL \inst|digit1[0]~4_cout\ : std_logic;
SIGNAL \inst|digit1[0]~6_cout\ : std_logic;
SIGNAL \inst|digit1[0]~8_cout\ : std_logic;
SIGNAL \inst|digit1[0]~9_combout\ : std_logic;
SIGNAL \inst2|digout~7_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~1_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst|digit3[1]~11_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~1_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|seg~5_combout\ : std_logic;
SIGNAL \inst2|seg~4_combout\ : std_logic;
SIGNAL \inst2|seg~3_combout\ : std_logic;
SIGNAL \inst2|seg~2_combout\ : std_logic;
SIGNAL \inst2|seg~1_combout\ : std_logic;
SIGNAL \inst2|seg~0_combout\ : std_logic;
SIGNAL \inst2|segout~feeder_combout\ : std_logic;
SIGNAL \inst2|segout~regout\ : std_logic;
SIGNAL \inst2|led_clk_x~0_combout\ : std_logic;
SIGNAL \inst2|led_clk_x~1_combout\ : std_logic;
SIGNAL \inst2|tictoc\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst2|seg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|digout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|digbuff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|digit1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst|digit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|minutes\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|seconds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|digit4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|digit3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ALT_INV_led_clk_x~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_digout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

led_rst <= ww_led_rst;
ww_clk <= clk;
segout <= ww_segout;
led_clk_x <= ww_led_clk_x;
digout <= ww_digout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|led_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|led_clk~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst2|ALT_INV_led_clk_x~1_combout\ <= NOT \inst2|led_clk_x~1_combout\;
\inst2|ALT_INV_digout\(0) <= NOT \inst2|digout\(0);

-- Location: LCCOMB_X32_Y11_N20
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|tictoc\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|tictoc\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|tictoc\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X32_Y11_N24
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|tictoc\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|tictoc\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|tictoc\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X32_Y10_N6
\inst2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|tictoc\(11) & (!\inst2|Add0~21\)) # (!\inst2|tictoc\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|tictoc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X32_Y10_N10
\inst2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|tictoc\(13) & (!\inst2|Add0~25\)) # (!\inst2|tictoc\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|tictoc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X32_Y10_N12
\inst2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|tictoc\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|tictoc\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|tictoc\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X15_Y10_N18
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|minutes\(3) $ (VCC)
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|minutes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(3),
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X15_Y10_N20
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|minutes\(4) & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|minutes\(4) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|minutes\(4) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(4),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X15_Y10_N8
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y10_N10
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCFF_X24_Y11_N11
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[3]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCFF_X24_Y11_N13
\inst|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[4]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(4));

-- Location: LCFF_X24_Y11_N17
\inst|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[6]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(6));

-- Location: LCFF_X24_Y11_N25
\inst|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[10]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(10));

-- Location: LCFF_X24_Y10_N11
\inst|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[19]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(19));

-- Location: LCFF_X24_Y10_N17
\inst|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[22]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(22));

-- Location: LCFF_X24_Y10_N25
\inst|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[26]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(26));

-- Location: LCCOMB_X19_Y11_N6
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|seconds\(4) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|seconds\(4) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|seconds\(4) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(4),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X15_Y11_N2
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y11_N4
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X15_Y11_N6
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X15_Y9_N10
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X16_Y9_N4
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X18_Y11_N0
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|seconds\(3) $ (VCC)
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(3),
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X18_Y11_N10
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X17_Y11_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X14_Y9_N10
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|minutes\(2) & (\inst|Add2~3\ $ (GND))) # (!\inst|minutes\(2) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|minutes\(2) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(2),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X14_Y9_N12
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|minutes\(3) & (!\inst|Add2~5\)) # (!\inst|minutes\(3) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|minutes\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X14_Y9_N14
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|minutes\(4) & (\inst|Add2~7\ $ (GND))) # (!\inst|minutes\(4) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|minutes\(4) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X14_Y9_N16
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\ $ (\inst|minutes\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|minutes\(5),
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst|cnt[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~30_combout\ = (\inst|cnt\(3) & (\inst|cnt[2]~29\ $ (GND))) # (!\inst|cnt\(3) & (!\inst|cnt[2]~29\ & VCC))
-- \inst|cnt[3]~31\ = CARRY((\inst|cnt\(3) & !\inst|cnt[2]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~29\,
	combout => \inst|cnt[3]~30_combout\,
	cout => \inst|cnt[3]~31\);

-- Location: LCCOMB_X24_Y11_N12
\inst|cnt[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~32_combout\ = (\inst|cnt\(4) & (!\inst|cnt[3]~31\)) # (!\inst|cnt\(4) & ((\inst|cnt[3]~31\) # (GND)))
-- \inst|cnt[4]~33\ = CARRY((!\inst|cnt[3]~31\) # (!\inst|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~31\,
	combout => \inst|cnt[4]~32_combout\,
	cout => \inst|cnt[4]~33\);

-- Location: LCCOMB_X24_Y11_N16
\inst|cnt[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~36_combout\ = (\inst|cnt\(6) & (!\inst|cnt[5]~35\)) # (!\inst|cnt\(6) & ((\inst|cnt[5]~35\) # (GND)))
-- \inst|cnt[6]~37\ = CARRY((!\inst|cnt[5]~35\) # (!\inst|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~35\,
	combout => \inst|cnt[6]~36_combout\,
	cout => \inst|cnt[6]~37\);

-- Location: LCCOMB_X24_Y11_N24
\inst|cnt[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[10]~44_combout\ = (\inst|cnt\(10) & (!\inst|cnt[9]~43\)) # (!\inst|cnt\(10) & ((\inst|cnt[9]~43\) # (GND)))
-- \inst|cnt[10]~45\ = CARRY((!\inst|cnt[9]~43\) # (!\inst|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(10),
	datad => VCC,
	cin => \inst|cnt[9]~43\,
	combout => \inst|cnt[10]~44_combout\,
	cout => \inst|cnt[10]~45\);

-- Location: LCCOMB_X24_Y10_N10
\inst|cnt[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[19]~62_combout\ = (\inst|cnt\(19) & (\inst|cnt[18]~61\ $ (GND))) # (!\inst|cnt\(19) & (!\inst|cnt[18]~61\ & VCC))
-- \inst|cnt[19]~63\ = CARRY((\inst|cnt\(19) & !\inst|cnt[18]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(19),
	datad => VCC,
	cin => \inst|cnt[18]~61\,
	combout => \inst|cnt[19]~62_combout\,
	cout => \inst|cnt[19]~63\);

-- Location: LCCOMB_X24_Y10_N16
\inst|cnt[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[22]~68_combout\ = (\inst|cnt\(22) & (!\inst|cnt[21]~67\)) # (!\inst|cnt\(22) & ((\inst|cnt[21]~67\) # (GND)))
-- \inst|cnt[22]~69\ = CARRY((!\inst|cnt[21]~67\) # (!\inst|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(22),
	datad => VCC,
	cin => \inst|cnt[21]~67\,
	combout => \inst|cnt[22]~68_combout\,
	cout => \inst|cnt[22]~69\);

-- Location: LCCOMB_X24_Y10_N22
\inst|cnt[25]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[25]~74_combout\ = (\inst|cnt\(25) & (\inst|cnt[24]~73\ $ (GND))) # (!\inst|cnt\(25) & (!\inst|cnt[24]~73\ & VCC))
-- \inst|cnt[25]~75\ = CARRY((\inst|cnt\(25) & !\inst|cnt[24]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(25),
	datad => VCC,
	cin => \inst|cnt[24]~73\,
	combout => \inst|cnt[25]~74_combout\,
	cout => \inst|cnt[25]~75\);

-- Location: LCCOMB_X24_Y10_N24
\inst|cnt[26]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[26]~76_combout\ = \inst|cnt\(26) $ (\inst|cnt[25]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(26),
	cin => \inst|cnt[25]~75\,
	combout => \inst|cnt[26]~76_combout\);

-- Location: LCFF_X32_Y11_N21
\inst2|tictoc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(2));

-- Location: LCFF_X32_Y11_N25
\inst2|tictoc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(4));

-- Location: LCCOMB_X32_Y11_N12
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|tictoc\(4) & !\inst2|tictoc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|tictoc\(4),
	datad => \inst2|tictoc\(5),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCFF_X32_Y10_N7
\inst2|tictoc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(11));

-- Location: LCFF_X32_Y10_N11
\inst2|tictoc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(13));

-- Location: LCFF_X32_Y10_N13
\inst2|tictoc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(14));

-- Location: LCCOMB_X32_Y10_N20
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (!\inst2|tictoc\(14) & (!\inst2|tictoc\(12) & (!\inst2|tictoc\(15) & !\inst2|tictoc\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(14),
	datab => \inst2|tictoc\(12),
	datac => \inst2|tictoc\(15),
	datad => \inst2|tictoc\(13),
	combout => \inst2|Equal0~4_combout\);

-- Location: LCFF_X17_Y9_N27
\inst2|digit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|Mux4~1_combout\,
	ena => \inst2|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit\(3));

-- Location: LCCOMB_X17_Y9_N16
\inst2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~0_combout\ = (\inst2|digit\(2) & (!\inst2|digit\(3) & ((\inst2|digit\(0)) # (\inst2|digit\(1))))) # (!\inst2|digit\(2) & ((\inst2|digit\(3) $ (!\inst2|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(0),
	datab => \inst2|digit\(3),
	datac => \inst2|digit\(2),
	datad => \inst2|digit\(1),
	combout => \inst2|WideOr0~0_combout\);

-- Location: LCCOMB_X17_Y8_N20
\inst2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst2|digit\(2) & ((\inst2|digit\(3)) # ((!\inst2|digit\(0) & !\inst2|digit\(1))))) # (!\inst2|digit\(2) & (((!\inst2|digit\(3) & !\inst2|digit\(0))) # (!\inst2|digit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(1),
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCFF_X16_Y9_N13
\inst|digit1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|digit1[1]~12_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit1\(1));

-- Location: LCFF_X16_Y9_N31
\inst|digit1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|digit1[2]~13_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit1\(2));

-- Location: LCFF_X17_Y11_N3
\inst|digit4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit4\(3));

-- Location: LCCOMB_X17_Y9_N28
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|digbuff\(3)) # ((!\inst2|digbuff\(1) & (!\inst2|digbuff\(2) & \inst|digit4\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(1),
	datab => \inst2|digbuff\(2),
	datac => \inst2|digbuff\(3),
	datad => \inst|digit4\(3),
	combout => \inst2|Mux4~0_combout\);

-- Location: LCFF_X16_Y9_N23
\inst|digit2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit2\(3));

-- Location: LCCOMB_X17_Y9_N26
\inst2|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~1_combout\ = (\inst2|Mux4~0_combout\ & (!\inst2|digbuff\(2) & ((!\inst2|digbuff\(3))))) # (!\inst2|Mux4~0_combout\ & (\inst|digit2\(3) & ((\inst2|digbuff\(2)) # (\inst2|digbuff\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(2),
	datab => \inst|digit2\(3),
	datac => \inst2|digbuff\(3),
	datad => \inst2|Mux4~0_combout\,
	combout => \inst2|Mux4~1_combout\);

-- Location: LCCOMB_X17_Y8_N12
\inst2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = ((\inst2|digit\(1) & ((\inst2|digit\(2)))) # (!\inst2|digit\(1) & (\inst2|digit\(3)))) # (!\inst2|digit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(1),
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst|Div1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|minutes\(5) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(5),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X15_Y10_N28
\inst|Div1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X15_Y10_N26
\inst|Div1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X15_Y10_N6
\inst|Div1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|minutes\(2) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(2),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst|Div1|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X16_Y10_N20
\inst|Div1|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst|minutes\(1) & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(1),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt\(6) & (!\inst|cnt\(7) & (\inst|cnt\(5) & \inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|seconds\(4) & (\inst|seconds\(5) & \inst|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(4),
	datac => \inst|seconds\(5),
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X15_Y11_N24
\inst|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|seconds\(5) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(5),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X15_Y11_N16
\inst|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X19_Y11_N12
\inst|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X15_Y11_N20
\inst|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|seconds\(2) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(2),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X15_Y11_N12
\inst|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X15_Y11_N30
\inst|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X15_Y11_N14
\inst|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X16_Y11_N20
\inst|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (\inst|seconds\(1) & !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(1),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X15_Y9_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|minutes\(5) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(5),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X15_Y9_N28
\inst|Mod1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|minutes\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|minutes\(4),
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X15_Y9_N20
\inst|Mod1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|minutes\(3) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(3),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X15_Y9_N16
\inst|Mod1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|minutes\(2) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(2),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst|Mod1|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\ = (\inst|minutes\(1) & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|minutes\(1),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X15_Y9_N30
\inst|Mod1|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X16_Y9_N16
\inst|Mod1|auto_generated|divider|divider|StageOut[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ = (\inst|minutes\(2) & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|minutes\(2),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\);

-- Location: LCCOMB_X18_Y11_N20
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst|seconds\(5) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(5),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X18_Y11_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|seconds\(4) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(4),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X18_Y11_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|seconds\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ = (\inst|seconds\(1) & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X17_Y11_N28
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|Mod0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X16_Y9_N22
\inst|Mod1|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X17_Y8_N16
\inst2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst2|digit\(1) & (\inst2|digit\(2) $ (((!\inst2|digit\(3) & !\inst2|digit\(0)))))) # (!\inst2|digit\(1) & ((\inst2|digit\(3)) # ((\inst2|digit\(2) & !\inst2|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(1),
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCFF_X17_Y9_N19
\inst2|seg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(1));

-- Location: LCCOMB_X17_Y9_N0
\inst2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst2|digit\(2) & ((\inst2|digit\(3)) # (\inst2|digit\(1) $ (\inst2|digit\(0))))) # (!\inst2|digit\(2) & (!\inst2|digit\(1) & ((\inst2|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(3),
	combout => \inst2|WideOr5~0_combout\);

-- Location: LCFF_X17_Y8_N11
\inst2|seg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(0));

-- Location: LCCOMB_X17_Y9_N18
\inst2|seg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~6_combout\ = (\inst2|Equal1~0_combout\ & ((\inst2|cnt\(3) & ((\inst2|WideOr5~0_combout\))) # (!\inst2|cnt\(3) & (\inst2|seg\(0))))) # (!\inst2|Equal1~0_combout\ & (\inst2|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(0),
	datab => \inst2|WideOr5~0_combout\,
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|cnt\(3),
	combout => \inst2|seg~6_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr6~0_combout\ = (\inst2|digit\(1) & (\inst2|digit\(2) $ (((!\inst2|digit\(0) & !\inst2|digit\(3)))))) # (!\inst2|digit\(1) & (((\inst2|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(3),
	combout => \inst2|WideOr6~0_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst2|seg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~7_combout\ = (\inst2|WideOr6~0_combout\ & (\inst2|cnt\(3) & \inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr6~0_combout\,
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~7_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst|Div1|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|minutes\(4))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|minutes\(4),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst|Div1|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|minutes\(3)))) # 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|minutes\(3),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X15_Y9_N2
\inst|Mod1|auto_generated|divider|divider|StageOut[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|minutes\(3))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(3),
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|seconds\(4))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|seconds\(4),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst|Mod0|auto_generated|divider|divider|StageOut[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|seconds\(3))) # 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|seconds\(3),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst|digit1[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[1]~12_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|digit1[1]~12_combout\);

-- Location: LCCOMB_X16_Y9_N30
\inst|digit1[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[2]~13_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|digit1[2]~13_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y11_N16
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|tictoc\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|tictoc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X32_Y11_N18
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|tictoc\(1) & (!\inst2|Add0~1\)) # (!\inst2|tictoc\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|tictoc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X32_Y11_N0
\inst2|tictoc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|tictoc~0_combout\ = (!\inst2|Equal0~5_combout\ & \inst2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~2_combout\,
	combout => \inst2|tictoc~0_combout\);

-- Location: LCFF_X32_Y11_N1
\inst2|tictoc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|tictoc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(1));

-- Location: LCCOMB_X32_Y11_N22
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|tictoc\(3) & (!\inst2|Add0~5\)) # (!\inst2|tictoc\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|tictoc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCFF_X32_Y11_N23
\inst2|tictoc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(3));

-- Location: LCCOMB_X32_Y11_N26
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|tictoc\(5) & (!\inst2|Add0~9\)) # (!\inst2|tictoc\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|tictoc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCFF_X32_Y11_N27
\inst2|tictoc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(5));

-- Location: LCCOMB_X32_Y11_N28
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|tictoc\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|tictoc\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|tictoc\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCFF_X32_Y11_N29
\inst2|tictoc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(6));

-- Location: LCCOMB_X32_Y11_N30
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|tictoc\(7) & (!\inst2|Add0~13\)) # (!\inst2|tictoc\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|tictoc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCFF_X32_Y11_N31
\inst2|tictoc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(7));

-- Location: LCCOMB_X32_Y10_N0
\inst2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|tictoc\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|tictoc\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|tictoc\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCFF_X32_Y10_N1
\inst2|tictoc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(8));

-- Location: LCCOMB_X32_Y10_N2
\inst2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|tictoc\(9) & (!\inst2|Add0~17\)) # (!\inst2|tictoc\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|tictoc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCFF_X32_Y10_N3
\inst2|tictoc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(9));

-- Location: LCCOMB_X32_Y10_N4
\inst2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|tictoc\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|tictoc\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|tictoc\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCFF_X32_Y10_N5
\inst2|tictoc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(10));

-- Location: LCCOMB_X32_Y10_N22
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|tictoc\(11) & (!\inst2|tictoc\(9) & (!\inst2|tictoc\(10) & !\inst2|tictoc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(11),
	datab => \inst2|tictoc\(9),
	datac => \inst2|tictoc\(10),
	datad => \inst2|tictoc\(8),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X32_Y10_N8
\inst2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|tictoc\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|tictoc\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|tictoc\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCFF_X32_Y10_N9
\inst2|tictoc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(12));

-- Location: LCCOMB_X32_Y10_N14
\inst2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|tictoc\(15) & (!\inst2|Add0~29\)) # (!\inst2|tictoc\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|tictoc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tictoc\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCFF_X32_Y10_N15
\inst2|tictoc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(15));

-- Location: LCCOMB_X32_Y10_N16
\inst2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = \inst2|tictoc\(16) $ (!\inst2|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(16),
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\);

-- Location: LCFF_X32_Y10_N17
\inst2|tictoc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(16));

-- Location: LCFF_X32_Y11_N17
\inst2|tictoc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|tictoc\(0));

-- Location: LCCOMB_X32_Y11_N14
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|tictoc\(2) & (!\inst2|tictoc\(1) & (\inst2|tictoc\(0) & !\inst2|tictoc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(2),
	datab => \inst2|tictoc\(1),
	datac => \inst2|tictoc\(0),
	datad => \inst2|tictoc\(3),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y11_N10
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Equal0~1_combout\ & (!\inst2|tictoc\(7) & (\inst2|Equal0~0_combout\ & !\inst2|tictoc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|tictoc\(7),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|tictoc\(6),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y10_N26
\inst2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (\inst2|Equal0~4_combout\ & (\inst2|Equal0~3_combout\ & (!\inst2|tictoc\(16) & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Equal0~3_combout\,
	datac => \inst2|tictoc\(16),
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y10_N6
\inst2|led_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|led_clk~0_combout\ = \inst2|led_clk~regout\ $ (\inst2|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|led_clk~regout\,
	datad => \inst2|Equal0~5_combout\,
	combout => \inst2|led_clk~0_combout\);

-- Location: LCFF_X33_Y10_N7
\inst2|led_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|led_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|led_clk~regout\);

-- Location: CLKCTRL_G7
\inst2|led_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|led_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|led_clk~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y9_N30
\inst2|cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt[1]~2_combout\ = \inst2|cnt\(0) $ (\inst2|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datac => \inst2|cnt\(1),
	combout => \inst2|cnt[1]~2_combout\);

-- Location: LCFF_X17_Y9_N31
\inst2|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(1));

-- Location: LCCOMB_X17_Y9_N8
\inst2|cnt[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt[2]~3_combout\ = \inst2|cnt\(2) $ (((\inst2|cnt\(0) & \inst2|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datab => \inst2|cnt\(1),
	datac => \inst2|cnt\(2),
	combout => \inst2|cnt[2]~3_combout\);

-- Location: LCFF_X17_Y9_N9
\inst2|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(2));

-- Location: LCCOMB_X18_Y9_N28
\inst2|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~0_combout\ = (\inst2|cnt\(0) & (\inst2|cnt\(3) $ (((\inst2|cnt\(1) & \inst2|cnt\(2)))))) # (!\inst2|cnt\(0) & (\inst2|cnt\(3) & ((\inst2|cnt\(1)) # (\inst2|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datab => \inst2|cnt\(1),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(2),
	combout => \inst2|cnt~0_combout\);

-- Location: LCFF_X18_Y9_N29
\inst2|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(3));

-- Location: LCCOMB_X19_Y11_N14
\inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|seconds\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X24_Y11_N6
\inst|cnt[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~26_combout\ = (\inst2|tictoc\(0) & (\inst|cnt\(1) $ (VCC))) # (!\inst2|tictoc\(0) & (\inst|cnt\(1) & VCC))
-- \inst|cnt[1]~27\ = CARRY((\inst2|tictoc\(0) & \inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|tictoc\(0),
	datab => \inst|cnt\(1),
	datad => VCC,
	combout => \inst|cnt[1]~26_combout\,
	cout => \inst|cnt[1]~27\);

-- Location: LCFF_X24_Y11_N7
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[1]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X24_Y11_N8
\inst|cnt[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~28_combout\ = (\inst|cnt\(2) & (!\inst|cnt[1]~27\)) # (!\inst|cnt\(2) & ((\inst|cnt[1]~27\) # (GND)))
-- \inst|cnt[2]~29\ = CARRY((!\inst|cnt[1]~27\) # (!\inst|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~27\,
	combout => \inst|cnt[2]~28_combout\,
	cout => \inst|cnt[2]~29\);

-- Location: LCFF_X24_Y11_N9
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X24_Y11_N14
\inst|cnt[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~34_combout\ = (\inst|cnt\(5) & (\inst|cnt[4]~33\ $ (GND))) # (!\inst|cnt\(5) & (!\inst|cnt[4]~33\ & VCC))
-- \inst|cnt[5]~35\ = CARRY((\inst|cnt\(5) & !\inst|cnt[4]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~33\,
	combout => \inst|cnt[5]~34_combout\,
	cout => \inst|cnt[5]~35\);

-- Location: LCFF_X24_Y11_N15
\inst|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[5]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(5));

-- Location: LCCOMB_X24_Y11_N18
\inst|cnt[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~38_combout\ = (\inst|cnt\(7) & (\inst|cnt[6]~37\ $ (GND))) # (!\inst|cnt\(7) & (!\inst|cnt[6]~37\ & VCC))
-- \inst|cnt[7]~39\ = CARRY((\inst|cnt\(7) & !\inst|cnt[6]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datad => VCC,
	cin => \inst|cnt[6]~37\,
	combout => \inst|cnt[7]~38_combout\,
	cout => \inst|cnt[7]~39\);

-- Location: LCFF_X24_Y11_N19
\inst|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[7]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(7));

-- Location: LCCOMB_X24_Y11_N20
\inst|cnt[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[8]~40_combout\ = (\inst|cnt\(8) & (!\inst|cnt[7]~39\)) # (!\inst|cnt\(8) & ((\inst|cnt[7]~39\) # (GND)))
-- \inst|cnt[8]~41\ = CARRY((!\inst|cnt[7]~39\) # (!\inst|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(8),
	datad => VCC,
	cin => \inst|cnt[7]~39\,
	combout => \inst|cnt[8]~40_combout\,
	cout => \inst|cnt[8]~41\);

-- Location: LCCOMB_X24_Y11_N22
\inst|cnt[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[9]~42_combout\ = (\inst|cnt\(9) & (\inst|cnt[8]~41\ $ (GND))) # (!\inst|cnt\(9) & (!\inst|cnt[8]~41\ & VCC))
-- \inst|cnt[9]~43\ = CARRY((\inst|cnt\(9) & !\inst|cnt[8]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(9),
	datad => VCC,
	cin => \inst|cnt[8]~41\,
	combout => \inst|cnt[9]~42_combout\,
	cout => \inst|cnt[9]~43\);

-- Location: LCFF_X24_Y11_N23
\inst|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[9]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(9));

-- Location: LCCOMB_X24_Y11_N26
\inst|cnt[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[11]~46_combout\ = (\inst|cnt\(11) & (\inst|cnt[10]~45\ $ (GND))) # (!\inst|cnt\(11) & (!\inst|cnt[10]~45\ & VCC))
-- \inst|cnt[11]~47\ = CARRY((\inst|cnt\(11) & !\inst|cnt[10]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(11),
	datad => VCC,
	cin => \inst|cnt[10]~45\,
	combout => \inst|cnt[11]~46_combout\,
	cout => \inst|cnt[11]~47\);

-- Location: LCFF_X24_Y11_N27
\inst|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[11]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(11));

-- Location: LCCOMB_X24_Y11_N28
\inst|cnt[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~48_combout\ = (\inst|cnt\(12) & (!\inst|cnt[11]~47\)) # (!\inst|cnt\(12) & ((\inst|cnt[11]~47\) # (GND)))
-- \inst|cnt[12]~49\ = CARRY((!\inst|cnt[11]~47\) # (!\inst|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|cnt[11]~47\,
	combout => \inst|cnt[12]~48_combout\,
	cout => \inst|cnt[12]~49\);

-- Location: LCFF_X24_Y11_N29
\inst|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[12]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(12));

-- Location: LCCOMB_X24_Y11_N30
\inst|cnt[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[13]~50_combout\ = (\inst|cnt\(13) & (\inst|cnt[12]~49\ $ (GND))) # (!\inst|cnt\(13) & (!\inst|cnt[12]~49\ & VCC))
-- \inst|cnt[13]~51\ = CARRY((\inst|cnt\(13) & !\inst|cnt[12]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(13),
	datad => VCC,
	cin => \inst|cnt[12]~49\,
	combout => \inst|cnt[13]~50_combout\,
	cout => \inst|cnt[13]~51\);

-- Location: LCFF_X24_Y11_N31
\inst|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[13]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(13));

-- Location: LCCOMB_X24_Y10_N0
\inst|cnt[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[14]~52_combout\ = (\inst|cnt\(14) & (!\inst|cnt[13]~51\)) # (!\inst|cnt\(14) & ((\inst|cnt[13]~51\) # (GND)))
-- \inst|cnt[14]~53\ = CARRY((!\inst|cnt[13]~51\) # (!\inst|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(14),
	datad => VCC,
	cin => \inst|cnt[13]~51\,
	combout => \inst|cnt[14]~52_combout\,
	cout => \inst|cnt[14]~53\);

-- Location: LCFF_X24_Y10_N1
\inst|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[14]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(14));

-- Location: LCCOMB_X24_Y10_N2
\inst|cnt[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[15]~54_combout\ = (\inst|cnt\(15) & (\inst|cnt[14]~53\ $ (GND))) # (!\inst|cnt\(15) & (!\inst|cnt[14]~53\ & VCC))
-- \inst|cnt[15]~55\ = CARRY((\inst|cnt\(15) & !\inst|cnt[14]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(15),
	datad => VCC,
	cin => \inst|cnt[14]~53\,
	combout => \inst|cnt[15]~54_combout\,
	cout => \inst|cnt[15]~55\);

-- Location: LCFF_X24_Y10_N3
\inst|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[15]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(15));

-- Location: LCCOMB_X24_Y10_N4
\inst|cnt[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[16]~56_combout\ = (\inst|cnt\(16) & (!\inst|cnt[15]~55\)) # (!\inst|cnt\(16) & ((\inst|cnt[15]~55\) # (GND)))
-- \inst|cnt[16]~57\ = CARRY((!\inst|cnt[15]~55\) # (!\inst|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(16),
	datad => VCC,
	cin => \inst|cnt[15]~55\,
	combout => \inst|cnt[16]~56_combout\,
	cout => \inst|cnt[16]~57\);

-- Location: LCFF_X24_Y10_N5
\inst|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[16]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(16));

-- Location: LCCOMB_X24_Y10_N6
\inst|cnt[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[17]~58_combout\ = (\inst|cnt\(17) & (\inst|cnt[16]~57\ $ (GND))) # (!\inst|cnt\(17) & (!\inst|cnt[16]~57\ & VCC))
-- \inst|cnt[17]~59\ = CARRY((\inst|cnt\(17) & !\inst|cnt[16]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datad => VCC,
	cin => \inst|cnt[16]~57\,
	combout => \inst|cnt[17]~58_combout\,
	cout => \inst|cnt[17]~59\);

-- Location: LCCOMB_X24_Y10_N8
\inst|cnt[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[18]~60_combout\ = (\inst|cnt\(18) & (!\inst|cnt[17]~59\)) # (!\inst|cnt\(18) & ((\inst|cnt[17]~59\) # (GND)))
-- \inst|cnt[18]~61\ = CARRY((!\inst|cnt[17]~59\) # (!\inst|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(18),
	datad => VCC,
	cin => \inst|cnt[17]~59\,
	combout => \inst|cnt[18]~60_combout\,
	cout => \inst|cnt[18]~61\);

-- Location: LCFF_X24_Y10_N9
\inst|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[18]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(18));

-- Location: LCFF_X24_Y10_N7
\inst|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[17]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(17));

-- Location: LCCOMB_X24_Y10_N26
\inst|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (\inst|cnt\(19) & (\inst|cnt\(18) & (\inst|cnt\(16) & !\inst|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(19),
	datab => \inst|cnt\(18),
	datac => \inst|cnt\(16),
	datad => \inst|cnt\(17),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y10_N12
\inst|cnt[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[20]~64_combout\ = (\inst|cnt\(20) & (!\inst|cnt[19]~63\)) # (!\inst|cnt\(20) & ((\inst|cnt[19]~63\) # (GND)))
-- \inst|cnt[20]~65\ = CARRY((!\inst|cnt[19]~63\) # (!\inst|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datad => VCC,
	cin => \inst|cnt[19]~63\,
	combout => \inst|cnt[20]~64_combout\,
	cout => \inst|cnt[20]~65\);

-- Location: LCCOMB_X24_Y10_N14
\inst|cnt[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[21]~66_combout\ = (\inst|cnt\(21) & (\inst|cnt[20]~65\ $ (GND))) # (!\inst|cnt\(21) & (!\inst|cnt[20]~65\ & VCC))
-- \inst|cnt[21]~67\ = CARRY((\inst|cnt\(21) & !\inst|cnt[20]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(21),
	datad => VCC,
	cin => \inst|cnt[20]~65\,
	combout => \inst|cnt[21]~66_combout\,
	cout => \inst|cnt[21]~67\);

-- Location: LCFF_X24_Y10_N15
\inst|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[21]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(21));

-- Location: LCCOMB_X24_Y10_N18
\inst|cnt[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[23]~70_combout\ = (\inst|cnt\(23) & (\inst|cnt[22]~69\ $ (GND))) # (!\inst|cnt\(23) & (!\inst|cnt[22]~69\ & VCC))
-- \inst|cnt[23]~71\ = CARRY((\inst|cnt\(23) & !\inst|cnt[22]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(23),
	datad => VCC,
	cin => \inst|cnt[22]~69\,
	combout => \inst|cnt[23]~70_combout\,
	cout => \inst|cnt[23]~71\);

-- Location: LCFF_X24_Y10_N19
\inst|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(23));

-- Location: LCCOMB_X24_Y10_N20
\inst|cnt[24]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[24]~72_combout\ = (\inst|cnt\(24) & (!\inst|cnt[23]~71\)) # (!\inst|cnt\(24) & ((\inst|cnt[23]~71\) # (GND)))
-- \inst|cnt[24]~73\ = CARRY((!\inst|cnt[23]~71\) # (!\inst|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(24),
	datad => VCC,
	cin => \inst|cnt[23]~71\,
	combout => \inst|cnt[24]~72_combout\,
	cout => \inst|cnt[24]~73\);

-- Location: LCFF_X24_Y10_N23
\inst|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[25]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(25));

-- Location: LCFF_X24_Y10_N21
\inst|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[24]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(24));

-- Location: LCFF_X24_Y10_N13
\inst|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[20]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(20));

-- Location: LCCOMB_X24_Y10_N28
\inst|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (\inst|cnt\(22) & (!\inst|cnt\(23) & (\inst|cnt\(21) & \inst|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(22),
	datab => \inst|cnt\(23),
	datac => \inst|cnt\(21),
	datad => \inst|cnt\(20),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|cnt\(26) & (!\inst|cnt\(25) & (\inst|cnt\(24) & \inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(26),
	datab => \inst|cnt\(25),
	datac => \inst|cnt\(24),
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|cnt\(12) & (\inst|cnt\(13) & (!\inst|cnt\(15) & \inst|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datab => \inst|cnt\(13),
	datac => \inst|cnt\(15),
	datad => \inst|cnt\(14),
	combout => \inst|Equal0~3_combout\);

-- Location: LCFF_X24_Y11_N21
\inst|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[8]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(8));

-- Location: LCCOMB_X24_Y11_N0
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|cnt\(10) & (!\inst|cnt\(9) & (!\inst|cnt\(8) & \inst|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(10),
	datab => \inst|cnt\(9),
	datac => \inst|cnt\(8),
	datad => \inst|cnt\(11),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(3) & (\inst|cnt\(2) & (\inst2|tictoc\(0) & \inst|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(2),
	datac => \inst2|tictoc\(0),
	datad => \inst|cnt\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y11_N30
\inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (\inst|Equal0~5_combout\ & (\inst|Equal0~7_combout\ & \inst|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~8_combout\);

-- Location: LCFF_X19_Y11_N15
\inst|seconds[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add1~0_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(0));

-- Location: LCCOMB_X19_Y11_N16
\inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|seconds\(1) & (!\inst|Add1~1\)) # (!\inst|seconds\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|seconds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X19_Y11_N18
\inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|seconds\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|seconds\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|seconds\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X16_Y11_N6
\inst|seconds~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seconds~1_combout\ = (\inst|Add1~4_combout\ & (((!\inst|Equal1~0_combout\) # (!\inst|seconds\(4))) # (!\inst|seconds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(5),
	datab => \inst|seconds\(4),
	datac => \inst|Add1~4_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|seconds~1_combout\);

-- Location: LCFF_X17_Y11_N5
\inst|seconds[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|seconds~1_combout\,
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(2));

-- Location: LCFF_X19_Y11_N17
\inst|seconds[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add1~2_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(1));

-- Location: LCCOMB_X19_Y11_N28
\inst|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|seconds\(3) & (!\inst|seconds\(2) & (\inst|seconds\(1) & \inst|seconds\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(3),
	datab => \inst|seconds\(2),
	datac => \inst|seconds\(1),
	datad => \inst|seconds\(0),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|seconds\(3) & (!\inst|Add1~5\)) # (!\inst|seconds\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X19_Y11_N30
\inst|seconds~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seconds~0_combout\ = (\inst|Add1~6_combout\ & (((!\inst|Equal1~0_combout\) # (!\inst|seconds\(4))) # (!\inst|seconds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(5),
	datab => \inst|seconds\(4),
	datac => \inst|Add1~6_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|seconds~0_combout\);

-- Location: LCFF_X18_Y11_N25
\inst|seconds[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|seconds~0_combout\,
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(3));

-- Location: LCCOMB_X19_Y11_N22
\inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|seconds\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|seconds\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|seconds\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X19_Y11_N24
\inst|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = \inst|seconds\(5) $ (\inst|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(5),
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst|seconds~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seconds~3_combout\ = (\inst|Add1~10_combout\ & (((!\inst|Equal1~0_combout\) # (!\inst|seconds\(4))) # (!\inst|seconds\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(5),
	datab => \inst|seconds\(4),
	datac => \inst|Add1~10_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|seconds~3_combout\);

-- Location: LCFF_X18_Y11_N31
\inst|seconds[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|seconds~3_combout\,
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(5));

-- Location: LCCOMB_X19_Y11_N0
\inst|seconds~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seconds~2_combout\ = (\inst|Add1~8_combout\ & (((!\inst|seconds\(5)) # (!\inst|Equal1~0_combout\)) # (!\inst|seconds\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(4),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|seconds\(5),
	datad => \inst|Add1~8_combout\,
	combout => \inst|seconds~2_combout\);

-- Location: LCFF_X18_Y11_N29
\inst|seconds[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|seconds~2_combout\,
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seconds\(4));

-- Location: LCCOMB_X19_Y11_N4
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|seconds\(3) $ (VCC)
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(3),
	datad => VCC,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X19_Y11_N8
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|seconds\(5) & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|seconds\(5) & 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|seconds\(5) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(5),
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X19_Y11_N10
\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst|digit3[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[2]~12_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|digit3[2]~12_combout\);

-- Location: LCFF_X17_Y11_N25
\inst|digit3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|digit3[2]~12_combout\,
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit3\(2));

-- Location: LCCOMB_X17_Y9_N20
\inst2|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~1_combout\ = (!\inst2|cnt\(0) & ((\inst2|cnt\(1)) # ((\inst2|cnt\(2)) # (!\inst2|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(2),
	datac => \inst2|cnt\(0),
	datad => \inst2|cnt\(3),
	combout => \inst2|cnt~1_combout\);

-- Location: LCFF_X17_Y9_N21
\inst2|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(0));

-- Location: LCCOMB_X18_Y9_N22
\inst2|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\inst2|cnt\(1) & (!\inst2|cnt\(3) & (!\inst2|cnt\(0) & !\inst2|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(1),
	datab => \inst2|cnt\(3),
	datac => \inst2|cnt\(0),
	datad => \inst2|cnt\(2),
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst2|digout~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~12_combout\ = (\inst2|digbuff\(1) & (!\inst2|Equal2~0_combout\ & (!\inst2|digbuff\(3) & !\inst2|digbuff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(1),
	datab => \inst2|Equal2~0_combout\,
	datac => \inst2|digbuff\(3),
	datad => \inst2|digbuff\(2),
	combout => \inst2|digout~12_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst2|digout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~8_combout\ = (\inst2|digbuff\(1) & (!\inst2|digbuff\(3) & ((\inst2|digbuff\(2)) # (!\inst2|digbuff\(0))))) # (!\inst2|digbuff\(1) & ((\inst2|digbuff\(0) & ((!\inst2|digbuff\(2)))) # (!\inst2|digbuff\(0) & (!\inst2|digbuff\(3) & 
-- \inst2|digbuff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(1),
	datab => \inst2|digbuff\(0),
	datac => \inst2|digbuff\(3),
	datad => \inst2|digbuff\(2),
	combout => \inst2|digout~8_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst2|digout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~9_combout\ = (\inst2|digbuff\(3) & ((\inst2|digout~8_combout\) # (!\inst2|digout\(0)))) # (!\inst2|digbuff\(3) & (!\inst2|digout\(0) & \inst2|digout~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digbuff\(3),
	datac => \inst2|digout\(0),
	datad => \inst2|digout~8_combout\,
	combout => \inst2|digout~9_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst2|digout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~10_combout\ = (\inst2|Equal1~0_combout\ & (((!\inst2|digout~9_combout\)) # (!\inst2|cnt\(3)))) # (!\inst2|Equal1~0_combout\ & (((\inst2|digout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~0_combout\,
	datab => \inst2|cnt\(3),
	datac => \inst2|digout\(0),
	datad => \inst2|digout~9_combout\,
	combout => \inst2|digout~10_combout\);

-- Location: LCFF_X18_Y9_N15
\inst2|digout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digout~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digout\(0));

-- Location: LCCOMB_X19_Y9_N14
\inst2|digbuff[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digbuff[0]~feeder_combout\ = \inst2|digout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|digout\(0),
	combout => \inst2|digbuff[0]~feeder_combout\);

-- Location: LCFF_X19_Y9_N15
\inst2|digbuff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digbuff[0]~feeder_combout\,
	ena => \inst2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digbuff\(0));

-- Location: LCCOMB_X19_Y9_N8
\inst2|digout[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout[2]~5_combout\ = (\inst2|digbuff\(1) & ((\inst2|digbuff\(3)) # ((\inst2|digbuff\(2)) # (!\inst2|digbuff\(0))))) # (!\inst2|digbuff\(1) & ((\inst2|digbuff\(3) & ((\inst2|digbuff\(2)) # (!\inst2|digbuff\(0)))) # (!\inst2|digbuff\(3) & 
-- (\inst2|digbuff\(0) $ (\inst2|digbuff\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(1),
	datab => \inst2|digbuff\(3),
	datac => \inst2|digbuff\(0),
	datad => \inst2|digbuff\(2),
	combout => \inst2|digout[2]~5_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst2|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (!\inst2|cnt\(0) & (!\inst2|cnt\(2) & !\inst2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datac => \inst2|cnt\(2),
	datad => \inst2|cnt\(1),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst2|digout[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout[2]~6_combout\ = (\inst2|Equal1~0_combout\ & ((!\inst2|digout[2]~5_combout\) # (!\inst2|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(3),
	datac => \inst2|digout[2]~5_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|digout[2]~6_combout\);

-- Location: LCFF_X18_Y9_N25
\inst2|digout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digout~12_combout\,
	ena => \inst2|digout[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digout\(2));

-- Location: LCCOMB_X19_Y9_N18
\inst2|digbuff[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digbuff[2]~feeder_combout\ = \inst2|digout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|digout\(2),
	combout => \inst2|digbuff[2]~feeder_combout\);

-- Location: LCFF_X19_Y9_N19
\inst2|digbuff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digbuff[2]~feeder_combout\,
	ena => \inst2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digbuff\(2));

-- Location: LCCOMB_X18_Y9_N16
\inst2|digout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~4_combout\ = (\inst2|digbuff\(2) & (!\inst2|digbuff\(3) & !\inst2|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digbuff\(2),
	datac => \inst2|digbuff\(3),
	datad => \inst2|Equal2~0_combout\,
	combout => \inst2|digout~4_combout\);

-- Location: LCFF_X18_Y9_N17
\inst2|digout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digout~4_combout\,
	ena => \inst2|digout[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digout\(3));

-- Location: LCCOMB_X19_Y9_N28
\inst2|digbuff[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digbuff[3]~feeder_combout\ = \inst2|digout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|digout\(3),
	combout => \inst2|digbuff[3]~feeder_combout\);

-- Location: LCFF_X19_Y9_N29
\inst2|digbuff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digbuff[3]~feeder_combout\,
	ena => \inst2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digbuff\(3));

-- Location: LCCOMB_X18_Y9_N30
\inst2|digout~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~11_combout\ = (!\inst2|digbuff\(1) & (!\inst2|Equal2~0_combout\ & (!\inst2|digbuff\(3) & !\inst2|digbuff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digbuff\(1),
	datab => \inst2|Equal2~0_combout\,
	datac => \inst2|digbuff\(3),
	datad => \inst2|digbuff\(2),
	combout => \inst2|digout~11_combout\);

-- Location: LCFF_X18_Y9_N31
\inst2|digout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|digout~11_combout\,
	ena => \inst2|digout[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digout\(1));

-- Location: LCFF_X19_Y9_N25
\inst2|digbuff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	sdata => \inst2|digout\(1),
	sload => VCC,
	ena => \inst2|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digbuff\(1));

-- Location: LCCOMB_X19_Y9_N22
\inst2|digit[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit[1]~0_combout\ = (\inst2|digbuff\(3)) # ((\inst2|digbuff\(1) & !\inst2|digbuff\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digbuff\(3),
	datac => \inst2|digbuff\(1),
	datad => \inst2|digbuff\(2),
	combout => \inst2|digit[1]~0_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = \inst|minutes\(0) $ (VCC)
-- \inst|Add2~1\ = CARRY(\inst|minutes\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(0),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X14_Y9_N8
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|minutes\(1) & (!\inst|Add2~1\)) # (!\inst|minutes\(1) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|minutes\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X23_Y11_N28
\inst|digit1[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~11_combout\ = (\inst|Equal1~1_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~7_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|digit1[0]~11_combout\);

-- Location: LCFF_X14_Y9_N9
\inst|minutes[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add2~2_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(1));

-- Location: LCCOMB_X14_Y9_N20
\inst|minutes~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|minutes~2_combout\ = (\inst|Add2~6_combout\ & (((!\inst|minutes\(4)) # (!\inst|Equal2~0_combout\)) # (!\inst|minutes\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~6_combout\,
	datab => \inst|minutes\(5),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|minutes\(4),
	combout => \inst|minutes~2_combout\);

-- Location: LCFF_X14_Y9_N21
\inst|minutes[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|minutes~2_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(3));

-- Location: LCFF_X14_Y9_N7
\inst|minutes[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add2~0_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(0));

-- Location: LCCOMB_X16_Y9_N10
\inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = (!\inst|minutes\(2) & (\inst|minutes\(1) & (\inst|minutes\(3) & \inst|minutes\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(2),
	datab => \inst|minutes\(1),
	datac => \inst|minutes\(3),
	datad => \inst|minutes\(0),
	combout => \inst|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y9_N22
\inst|minutes~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|minutes~3_combout\ = (\inst|Add2~4_combout\ & (((!\inst|minutes\(4)) # (!\inst|Equal2~0_combout\)) # (!\inst|minutes\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|minutes\(5),
	datac => \inst|Equal2~0_combout\,
	datad => \inst|minutes\(4),
	combout => \inst|minutes~3_combout\);

-- Location: LCFF_X15_Y9_N1
\inst|minutes[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|minutes~3_combout\,
	sload => VCC,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(2));

-- Location: LCCOMB_X14_Y9_N2
\inst|minutes~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|minutes~1_combout\ = (\inst|Add2~8_combout\ & (((!\inst|minutes\(5)) # (!\inst|minutes\(4))) # (!\inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal2~0_combout\,
	datab => \inst|Add2~8_combout\,
	datac => \inst|minutes\(4),
	datad => \inst|minutes\(5),
	combout => \inst|minutes~1_combout\);

-- Location: LCFF_X14_Y9_N3
\inst|minutes[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|minutes~1_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(4));

-- Location: LCCOMB_X14_Y9_N0
\inst|minutes~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|minutes~0_combout\ = (\inst|Add2~10_combout\ & (((!\inst|Equal2~0_combout\) # (!\inst|minutes\(5))) # (!\inst|minutes\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datab => \inst|minutes\(4),
	datac => \inst|minutes\(5),
	datad => \inst|Equal2~0_combout\,
	combout => \inst|minutes~0_combout\);

-- Location: LCFF_X14_Y9_N1
\inst|minutes[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|minutes~0_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|minutes\(5));

-- Location: LCCOMB_X14_Y9_N24
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst|minutes\(3) $ (VCC)
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst|minutes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(3),
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X14_Y9_N26
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|minutes\(4) & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|minutes\(4) & 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|minutes\(4) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(4),
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X14_Y9_N28
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|minutes\(5) & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|minutes\(5) & 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|minutes\(5) & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(5),
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X15_Y9_N0
\inst|Mod1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X14_Y9_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X14_Y9_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X15_Y9_N22
\inst|Mod1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|minutes\(2) & \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(2),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X15_Y9_N6
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X15_Y9_N8
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X15_Y9_N12
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y9_N14
\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X15_Y9_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ = (!\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCCOMB_X15_Y9_N4
\inst|Mod1|auto_generated|divider|divider|StageOut[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|minutes\(4)))) # 
-- (!\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|minutes\(4),
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\);

-- Location: LCCOMB_X15_Y9_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X16_Y9_N18
\inst|Mod1|auto_generated|divider|divider|StageOut[20]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\ = (\inst|minutes\(1) & !\inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|minutes\(1),
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\,
	datad => VCC,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X16_Y9_N2
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\) # 
-- (\inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ & 
-- (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\)))
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X16_Y9_N6
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ & (!\inst|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ & 
-- !\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\,
	datad => VCC,
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y9_N8
\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst|Mod1|auto_generated|divider|divider|StageOut[27]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\) # 
-- ((\inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\)))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datab => \inst|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCFF_X16_Y9_N25
\inst|digit2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit2\(2));

-- Location: LCCOMB_X18_Y11_N2
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst|seconds\(4) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst|seconds\(4) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst|seconds\(4) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(4),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X18_Y11_N4
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|seconds\(5) & (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|seconds\(5) & 
-- (!\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|seconds\(5) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|seconds\(5),
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X18_Y11_N6
\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X18_Y11_N24
\inst|Mod0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|seconds\(3) & \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(3),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|Mod0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|seconds\(2) & !\inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X18_Y11_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X18_Y11_N16
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y11_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|Mod0|auto_generated|divider|divider|StageOut[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ = (\inst|seconds\(2) & \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(2),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\);

-- Location: LCCOMB_X17_Y11_N22
\inst|Mod0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst|Mod0|auto_generated|divider|divider|StageOut[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|Mod0|auto_generated|divider|divider|StageOut[20]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ = (\inst|seconds\(1) & !\inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(1),
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\,
	datad => VCC,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X17_Y11_N14
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- (\inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X17_Y11_N18
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ & (!\inst|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X17_Y11_N20
\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst|Mod0|auto_generated|divider|divider|StageOut[27]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- ((\inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCFF_X17_Y11_N11
\inst|digit4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit4\(2));

-- Location: LCCOMB_X17_Y9_N2
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst2|digout~7_combout\ & ((\inst|digit2\(2)) # ((\inst2|digit[1]~0_combout\)))) # (!\inst2|digout~7_combout\ & (((!\inst2|digit[1]~0_combout\ & \inst|digit4\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digout~7_combout\,
	datab => \inst|digit2\(2),
	datac => \inst2|digit[1]~0_combout\,
	datad => \inst|digit4\(2),
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst2|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~1_combout\ = (\inst2|digit[1]~0_combout\ & ((\inst2|Mux5~0_combout\ & ((\inst|digit3\(2)))) # (!\inst2|Mux5~0_combout\ & (\inst|digit1\(2))))) # (!\inst2|digit[1]~0_combout\ & (((\inst2|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digit1\(2),
	datab => \inst|digit3\(2),
	datac => \inst2|digit[1]~0_combout\,
	datad => \inst2|Mux5~0_combout\,
	combout => \inst2|Mux5~1_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst2|digit[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit[0]~1_combout\ = (\inst2|cnt\(3) & (\inst2|Equal1~0_combout\ & !\inst2|digout[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(3),
	datac => \inst2|Equal1~0_combout\,
	datad => \inst2|digout[2]~5_combout\,
	combout => \inst2|digit[0]~1_combout\);

-- Location: LCFF_X17_Y9_N5
\inst2|digit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|Mux5~1_combout\,
	ena => \inst2|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit\(2));

-- Location: LCCOMB_X15_Y11_N0
\inst|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X15_Y11_N22
\inst|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|seconds\(4) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(4),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X15_Y11_N26
\inst|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|seconds\(3) & \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(3),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X15_Y11_N18
\inst|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst|seconds\(2) & !\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(2),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X15_Y11_N8
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y11_N10
\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|seconds\(4)))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst|seconds\(4),
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst|seconds\(3))) # 
-- (!\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(3),
	datab => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X15_Y11_N28
\inst|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst|seconds\(2) & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(2),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X16_Y11_N22
\inst|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst|seconds\(1) & \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|seconds\(1),
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X16_Y11_N8
\inst|digit3[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[0]~2_cout\ = CARRY((\inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \inst|digit3[0]~2_cout\);

-- Location: LCCOMB_X16_Y11_N10
\inst|digit3[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[0]~4_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & !\inst|digit3[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \inst|digit3[0]~2_cout\,
	cout => \inst|digit3[0]~4_cout\);

-- Location: LCCOMB_X16_Y11_N12
\inst|digit3[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[0]~6_cout\ = CARRY((!\inst|digit3[0]~4_cout\ & ((\inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # (\inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \inst|digit3[0]~4_cout\,
	cout => \inst|digit3[0]~6_cout\);

-- Location: LCCOMB_X16_Y11_N14
\inst|digit3[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[0]~8_cout\ = CARRY((!\inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & !\inst|digit3[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \inst|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \inst|digit3[0]~6_cout\,
	cout => \inst|digit3[0]~8_cout\);

-- Location: LCCOMB_X16_Y11_N16
\inst|digit3[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[0]~9_combout\ = !\inst|digit3[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|digit3[0]~8_cout\,
	combout => \inst|digit3[0]~9_combout\);

-- Location: LCFF_X16_Y11_N17
\inst|digit3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|digit3[0]~9_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit3\(0));

-- Location: LCCOMB_X15_Y10_N22
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst|minutes\(5) & (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst|minutes\(5) & 
-- (!\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst|minutes\(5) & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(5),
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X15_Y10_N24
\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X15_Y10_N4
\inst|Div1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X15_Y10_N30
\inst|Div1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst|minutes\(4) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|minutes\(4),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X15_Y10_N2
\inst|Div1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst|minutes\(3) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(3),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X15_Y10_N0
\inst|Div1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst|minutes\(2) & \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(2),
	datac => \inst|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X15_Y10_N12
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X15_Y10_N14
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y10_N16
\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst|Div1|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (!\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst|Div1|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst|Div1|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst|minutes\(2) & \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|minutes\(2),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst|Div1|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (\inst|minutes\(1) & !\inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(1),
	datad => \inst|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst|digit1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~2_cout\ = CARRY((\inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \inst|digit1[0]~2_cout\);

-- Location: LCCOMB_X16_Y10_N12
\inst|digit1[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~4_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & !\inst|digit1[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \inst|digit1[0]~2_cout\,
	cout => \inst|digit1[0]~4_cout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|digit1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~6_cout\ = CARRY((!\inst|digit1[0]~4_cout\ & ((\inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\) # (\inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \inst|digit1[0]~4_cout\,
	cout => \inst|digit1[0]~6_cout\);

-- Location: LCCOMB_X16_Y10_N16
\inst|digit1[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~8_cout\ = CARRY((!\inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & !\inst|digit1[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \inst|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \inst|digit1[0]~6_cout\,
	cout => \inst|digit1[0]~8_cout\);

-- Location: LCCOMB_X16_Y10_N18
\inst|digit1[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit1[0]~9_combout\ = !\inst|digit1[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|digit1[0]~8_cout\,
	combout => \inst|digit1[0]~9_combout\);

-- Location: LCFF_X16_Y10_N19
\inst|digit1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|digit1[0]~9_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit1\(0));

-- Location: LCFF_X16_Y9_N29
\inst|digit4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|seconds\(0),
	sload => VCC,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit4\(0));

-- Location: LCFF_X16_Y9_N15
\inst|digit2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|minutes\(0),
	sload => VCC,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit2\(0));

-- Location: LCCOMB_X19_Y9_N30
\inst2|digout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digout~7_combout\ = (\inst2|digbuff\(2)) # (\inst2|digbuff\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digbuff\(2),
	datad => \inst2|digbuff\(3),
	combout => \inst2|digout~7_combout\);

-- Location: LCCOMB_X16_Y9_N14
\inst2|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst2|digit[1]~0_combout\ & (((\inst2|digout~7_combout\)))) # (!\inst2|digit[1]~0_combout\ & ((\inst2|digout~7_combout\ & ((\inst|digit2\(0)))) # (!\inst2|digout~7_combout\ & (\inst|digit4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit[1]~0_combout\,
	datab => \inst|digit4\(0),
	datac => \inst|digit2\(0),
	datad => \inst2|digout~7_combout\,
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y9_N24
\inst2|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux7~1_combout\ = (\inst2|digit[1]~0_combout\ & ((\inst2|Mux7~0_combout\ & (!\inst|digit3\(0))) # (!\inst2|Mux7~0_combout\ & ((!\inst|digit1\(0)))))) # (!\inst2|digit[1]~0_combout\ & (((!\inst2|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit[1]~0_combout\,
	datab => \inst|digit3\(0),
	datac => \inst|digit1\(0),
	datad => \inst2|Mux7~0_combout\,
	combout => \inst2|Mux7~1_combout\);

-- Location: LCFF_X17_Y9_N25
\inst2|digit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|Mux7~1_combout\,
	ena => \inst2|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit\(0));

-- Location: LCCOMB_X16_Y9_N26
\inst|Mod1|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst|minutes\(1))) # (!\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|minutes\(1),
	datac => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCFF_X16_Y9_N27
\inst|digit2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\,
	ena => \inst|digit1[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit2\(1));

-- Location: LCCOMB_X16_Y11_N24
\inst|digit3[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit3[1]~11_combout\ = !\inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|digit3[1]~11_combout\);

-- Location: LCFF_X16_Y11_N25
\inst|digit3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|digit3[1]~11_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit3\(1));

-- Location: LCCOMB_X17_Y11_N0
\inst|Mod0|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst|seconds\(1))) # (!\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|seconds\(1),
	datac => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCFF_X17_Y11_N1
\inst|digit4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\,
	ena => \inst|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit4\(1));

-- Location: LCCOMB_X17_Y9_N12
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|digout~7_combout\ & (((\inst2|digit[1]~0_combout\)))) # (!\inst2|digout~7_combout\ & ((\inst2|digit[1]~0_combout\ & (\inst|digit1\(1))) # (!\inst2|digit[1]~0_combout\ & ((\inst|digit4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digit1\(1),
	datab => \inst2|digout~7_combout\,
	datac => \inst2|digit[1]~0_combout\,
	datad => \inst|digit4\(1),
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y9_N6
\inst2|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~1_combout\ = (\inst2|digout~7_combout\ & ((\inst2|Mux6~0_combout\ & ((!\inst|digit3\(1)))) # (!\inst2|Mux6~0_combout\ & (!\inst|digit2\(1))))) # (!\inst2|digout~7_combout\ & (((!\inst2|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digout~7_combout\,
	datab => \inst|digit2\(1),
	datac => \inst|digit3\(1),
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|Mux6~1_combout\);

-- Location: LCFF_X17_Y9_N7
\inst2|digit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|Mux6~1_combout\,
	ena => \inst2|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit\(1));

-- Location: LCCOMB_X17_Y8_N24
\inst2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst2|digit\(2) & (\inst2|digit\(3))) # (!\inst2|digit\(2) & (!\inst2|digit\(1) & ((\inst2|digit\(3)) # (\inst2|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(1),
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X17_Y8_N26
\inst2|seg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~5_combout\ = (\inst2|cnt\(3) & ((\inst2|Equal1~0_combout\ & ((\inst2|WideOr4~0_combout\))) # (!\inst2|Equal1~0_combout\ & (\inst2|seg\(1))))) # (!\inst2|cnt\(3) & (\inst2|seg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seg\(1),
	datab => \inst2|cnt\(3),
	datac => \inst2|WideOr4~0_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~5_combout\);

-- Location: LCFF_X17_Y8_N27
\inst2|seg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(2));

-- Location: LCCOMB_X17_Y8_N22
\inst2|seg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~4_combout\ = (\inst2|cnt\(3) & ((\inst2|Equal1~0_combout\ & (\inst2|WideOr3~0_combout\)) # (!\inst2|Equal1~0_combout\ & ((\inst2|seg\(2)))))) # (!\inst2|cnt\(3) & (((\inst2|seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr3~0_combout\,
	datab => \inst2|seg\(2),
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~4_combout\);

-- Location: LCFF_X17_Y8_N23
\inst2|seg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(3));

-- Location: LCCOMB_X17_Y8_N2
\inst2|seg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~3_combout\ = (\inst2|cnt\(3) & ((\inst2|Equal1~0_combout\ & (\inst2|WideOr2~0_combout\)) # (!\inst2|Equal1~0_combout\ & ((\inst2|seg\(3)))))) # (!\inst2|cnt\(3) & (((\inst2|seg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr2~0_combout\,
	datab => \inst2|seg\(3),
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~3_combout\);

-- Location: LCFF_X17_Y8_N3
\inst2|seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(4));

-- Location: LCCOMB_X17_Y8_N30
\inst2|seg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~2_combout\ = (\inst2|cnt\(3) & ((\inst2|Equal1~0_combout\ & (\inst2|WideOr1~0_combout\)) # (!\inst2|Equal1~0_combout\ & ((\inst2|seg\(4)))))) # (!\inst2|cnt\(3) & (((\inst2|seg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr1~0_combout\,
	datab => \inst2|seg\(4),
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~2_combout\);

-- Location: LCFF_X17_Y8_N31
\inst2|seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(5));

-- Location: LCCOMB_X17_Y8_N8
\inst2|seg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~1_combout\ = (\inst2|cnt\(3) & ((\inst2|Equal1~0_combout\ & (!\inst2|WideOr0~0_combout\)) # (!\inst2|Equal1~0_combout\ & ((\inst2|seg\(5)))))) # (!\inst2|cnt\(3) & (((\inst2|seg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr0~0_combout\,
	datab => \inst2|seg\(5),
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~1_combout\);

-- Location: LCFF_X17_Y8_N9
\inst2|seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(6));

-- Location: LCCOMB_X17_Y8_N18
\inst2|seg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seg~0_combout\ = (\inst2|seg\(6)) # ((\inst2|cnt\(3) & \inst2|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seg\(6),
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|seg~0_combout\);

-- Location: LCFF_X17_Y8_N19
\inst2|seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seg\(7));

-- Location: LCCOMB_X17_Y8_N28
\inst2|segout~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|segout~feeder_combout\ = \inst2|seg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|seg\(7),
	combout => \inst2|segout~feeder_combout\);

-- Location: LCFF_X17_Y8_N29
\inst2|segout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|led_clk~clkctrl_outclk\,
	datain => \inst2|segout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|segout~regout\);

-- Location: LCCOMB_X19_Y9_N24
\inst2|led_clk_x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|led_clk_x~0_combout\ = ((\inst2|led_clk~regout\) # ((\inst2|digout\(1)) # (\inst2|digout\(2)))) # (!\inst2|digout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digout\(0),
	datab => \inst2|led_clk~regout\,
	datac => \inst2|digout\(1),
	datad => \inst2|digout\(2),
	combout => \inst2|led_clk_x~0_combout\);

-- Location: LCCOMB_X18_Y3_N20
\inst2|led_clk_x~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|led_clk_x~1_combout\ = (\inst2|digout\(3)) # (\inst2|led_clk_x~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digout\(3),
	datad => \inst2|led_clk_x~0_combout\,
	combout => \inst2|led_clk_x~1_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_rst);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|segout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segout);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led_clk_x~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_led_clk_x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_clk_x);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|digout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(3));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|digout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(2));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|digout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(1));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\digout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_digout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(0));
END structure;


