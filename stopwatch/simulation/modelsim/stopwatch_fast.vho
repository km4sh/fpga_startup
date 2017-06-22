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

-- DATE "05/18/2017 20:05:45"

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

ENTITY 	stopwatch IS
    PORT (
	segout : OUT std_logic;
	clk : IN std_logic;
	col : IN std_logic_vector(2 DOWNTO 0);
	led_clk_x : OUT std_logic;
	digout : OUT std_logic_vector(3 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0)
	);
END stopwatch;

-- Design Ports Information
-- segout	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_clk_x	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[3]	=>  Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[2]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[2]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF stopwatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_segout : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led_clk_x : std_logic;
SIGNAL ww_digout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|always0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|ptflag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|led_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst|cnt[2]~37_combout\ : std_logic;
SIGNAL \inst|cnt[4]~41_combout\ : std_logic;
SIGNAL \inst|cnt[13]~59_combout\ : std_logic;
SIGNAL \inst|cnt[20]~73_combout\ : std_logic;
SIGNAL \inst|cnt[27]~87_combout\ : std_logic;
SIGNAL \inst|cnt[30]~93_combout\ : std_logic;
SIGNAL \inst|cnt[31]~96\ : std_logic;
SIGNAL \inst|cnt[32]~97_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|digit2[0]~2_cout\ : std_logic;
SIGNAL \inst2|digit2[0]~4_cout\ : std_logic;
SIGNAL \inst2|digit2[0]~6_cout\ : std_logic;
SIGNAL \inst2|digit2[0]~8_cout\ : std_logic;
SIGNAL \inst2|digit2[0]~9_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst2|Add3~0_combout\ : std_logic;
SIGNAL \inst2|Add3~1\ : std_logic;
SIGNAL \inst2|milli[1]~5_combout\ : std_logic;
SIGNAL \inst2|milli[1]~6\ : std_logic;
SIGNAL \inst2|milli[2]~7_combout\ : std_logic;
SIGNAL \inst2|milli[2]~8\ : std_logic;
SIGNAL \inst2|milli[3]~9_combout\ : std_logic;
SIGNAL \inst2|milli[3]~10\ : std_logic;
SIGNAL \inst2|milli[4]~11_combout\ : std_logic;
SIGNAL \inst2|milli[4]~12\ : std_logic;
SIGNAL \inst2|milli[5]~13_combout\ : std_logic;
SIGNAL \inst2|Add2~0_combout\ : std_logic;
SIGNAL \inst2|Add2~1\ : std_logic;
SIGNAL \inst2|Add2~2_combout\ : std_logic;
SIGNAL \inst2|Add2~3\ : std_logic;
SIGNAL \inst2|Add2~4_combout\ : std_logic;
SIGNAL \inst2|Add2~5\ : std_logic;
SIGNAL \inst2|Add2~6_combout\ : std_logic;
SIGNAL \inst2|Add2~7\ : std_logic;
SIGNAL \inst2|Add2~8_combout\ : std_logic;
SIGNAL \inst2|Add2~9\ : std_logic;
SIGNAL \inst2|Add2~10_combout\ : std_logic;
SIGNAL \inst2|Add3~2_combout\ : std_logic;
SIGNAL \inst2|Add3~3\ : std_logic;
SIGNAL \inst2|Add3~4_combout\ : std_logic;
SIGNAL \inst2|Add3~5\ : std_logic;
SIGNAL \inst2|Add3~6_combout\ : std_logic;
SIGNAL \inst2|Add3~7\ : std_logic;
SIGNAL \inst2|Add3~8_combout\ : std_logic;
SIGNAL \inst2|Add3~9\ : std_logic;
SIGNAL \inst2|Add3~10_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
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
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst3|digout[3]~5_combout\ : std_logic;
SIGNAL \inst3|digout~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|WideOr0~0_combout\ : std_logic;
SIGNAL \inst3|seg~1_combout\ : std_logic;
SIGNAL \inst3|WideOr1~0_combout\ : std_logic;
SIGNAL \inst3|seg~2_combout\ : std_logic;
SIGNAL \inst3|digit[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~0_combout\ : std_logic;
SIGNAL \inst3|Mux7~1_combout\ : std_logic;
SIGNAL \inst3|digit[0]~1_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~1_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~1_combout\ : std_logic;
SIGNAL \inst3|WideOr2~0_combout\ : std_logic;
SIGNAL \inst3|seg~3_combout\ : std_logic;
SIGNAL \inst2|ptflag~regout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|LessThan0~1_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \inst3|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|seg~4_combout\ : std_logic;
SIGNAL \inst2|minutes[4]~0_combout\ : std_logic;
SIGNAL \inst2|minutes[4]~1_combout\ : std_logic;
SIGNAL \inst2|LessThan1~0_combout\ : std_logic;
SIGNAL \inst2|LessThan1~1_combout\ : std_logic;
SIGNAL \inst2|minutes~2_combout\ : std_logic;
SIGNAL \inst1|clr~regout\ : std_logic;
SIGNAL \inst2|minutes[4]~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|ptflag~0_combout\ : std_logic;
SIGNAL \inst2|Add2~12_combout\ : std_logic;
SIGNAL \inst2|seconds[4]~0_combout\ : std_logic;
SIGNAL \inst2|Add2~13_combout\ : std_logic;
SIGNAL \inst2|Add2~14_combout\ : std_logic;
SIGNAL \inst2|Add2~15_combout\ : std_logic;
SIGNAL \inst2|Add2~16_combout\ : std_logic;
SIGNAL \inst2|Add2~17_combout\ : std_logic;
SIGNAL \inst2|minutes~4_combout\ : std_logic;
SIGNAL \inst2|minutes~5_combout\ : std_logic;
SIGNAL \inst2|minutes~6_combout\ : std_logic;
SIGNAL \inst2|minutes~7_combout\ : std_logic;
SIGNAL \inst2|minutes~8_combout\ : std_logic;
SIGNAL \inst3|WideOr4~0_combout\ : std_logic;
SIGNAL \inst3|seg~5_combout\ : std_logic;
SIGNAL \inst2|minutes~9_combout\ : std_logic;
SIGNAL \inst2|minutes~10_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|clr~0_combout\ : std_logic;
SIGNAL \inst2|cnt~0_combout\ : std_logic;
SIGNAL \inst2|cnt~1_combout\ : std_logic;
SIGNAL \inst2|cnt~2_combout\ : std_logic;
SIGNAL \inst2|cnt~3_combout\ : std_logic;
SIGNAL \inst2|cnt~4_combout\ : std_logic;
SIGNAL \inst2|cnt~5_combout\ : std_logic;
SIGNAL \inst2|cnt~6_combout\ : std_logic;
SIGNAL \inst2|cnt~7_combout\ : std_logic;
SIGNAL \inst2|spflag~regout\ : std_logic;
SIGNAL \inst2|always0~combout\ : std_logic;
SIGNAL \inst3|WideOr5~0_combout\ : std_logic;
SIGNAL \inst3|seg~6_combout\ : std_logic;
SIGNAL \inst1|sp~regout\ : std_logic;
SIGNAL \inst3|WideOr6~0_combout\ : std_logic;
SIGNAL \inst3|seg~7_combout\ : std_logic;
SIGNAL \inst1|sp~0_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ : std_logic;
SIGNAL \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ : std_logic;
SIGNAL \inst2|digit1[0]~0_combout\ : std_logic;
SIGNAL \inst2|digit2[1]~11_combout\ : std_logic;
SIGNAL \inst2|digit1[1]~1_combout\ : std_logic;
SIGNAL \inst2|digit2[2]~12_combout\ : std_logic;
SIGNAL \inst2|digit1[3]~2_combout\ : std_logic;
SIGNAL \inst2|milli[0]~15_combout\ : std_logic;
SIGNAL \inst4|key[7]~0_combout\ : std_logic;
SIGNAL \inst4|key[6]~1_combout\ : std_logic;
SIGNAL \inst4|key[5]~2_combout\ : std_logic;
SIGNAL \inst4|key[4]~3_combout\ : std_logic;
SIGNAL \inst4|key[3]~4_combout\ : std_logic;
SIGNAL \inst4|key[2]~5_combout\ : std_logic;
SIGNAL \inst4|key[1]~6_combout\ : std_logic;
SIGNAL \inst4|key[0]~7_combout\ : std_logic;
SIGNAL \inst4|key[11]~8_combout\ : std_logic;
SIGNAL \inst4|key[10]~9_combout\ : std_logic;
SIGNAL \inst4|key[9]~10_combout\ : std_logic;
SIGNAL \inst4|key[8]~11_combout\ : std_logic;
SIGNAL \inst2|spflag~0_combout\ : std_logic;
SIGNAL \inst2|always0~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|ptflag~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|digit3[0]~feeder_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|tictoc~0_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|led_clk~0_combout\ : std_logic;
SIGNAL \inst3|led_clk~regout\ : std_logic;
SIGNAL \inst3|led_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[1]~2_combout\ : std_logic;
SIGNAL \inst3|cnt[2]~3_combout\ : std_logic;
SIGNAL \inst3|cnt~1_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|cnt~0_combout\ : std_logic;
SIGNAL \inst3|seg~0_combout\ : std_logic;
SIGNAL \inst3|segout~regout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|digout~11_combout\ : std_logic;
SIGNAL \inst3|digout[3]~6_combout\ : std_logic;
SIGNAL \inst3|digout~12_combout\ : std_logic;
SIGNAL \inst3|digout~4_combout\ : std_logic;
SIGNAL \inst3|digout~8_combout\ : std_logic;
SIGNAL \inst3|digout~9_combout\ : std_logic;
SIGNAL \inst3|digout~10_combout\ : std_logic;
SIGNAL \inst3|led_clk_x~0_combout\ : std_logic;
SIGNAL \inst3|led_clk_x~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|row[0]~1_combout\ : std_logic;
SIGNAL \inst|cnt[0]~34\ : std_logic;
SIGNAL \inst|cnt[1]~35_combout\ : std_logic;
SIGNAL \inst|cnt[1]~36\ : std_logic;
SIGNAL \inst|cnt[2]~38\ : std_logic;
SIGNAL \inst|cnt[3]~39_combout\ : std_logic;
SIGNAL \inst|cnt[3]~40\ : std_logic;
SIGNAL \inst|cnt[4]~42\ : std_logic;
SIGNAL \inst|cnt[5]~43_combout\ : std_logic;
SIGNAL \inst|cnt[5]~44\ : std_logic;
SIGNAL \inst|cnt[6]~45_combout\ : std_logic;
SIGNAL \inst|cnt[6]~46\ : std_logic;
SIGNAL \inst|cnt[7]~47_combout\ : std_logic;
SIGNAL \inst|cnt[7]~48\ : std_logic;
SIGNAL \inst|cnt[8]~49_combout\ : std_logic;
SIGNAL \inst|cnt[8]~50\ : std_logic;
SIGNAL \inst|cnt[9]~51_combout\ : std_logic;
SIGNAL \inst|cnt[9]~52\ : std_logic;
SIGNAL \inst|cnt[10]~53_combout\ : std_logic;
SIGNAL \inst|cnt[10]~54\ : std_logic;
SIGNAL \inst|cnt[11]~56\ : std_logic;
SIGNAL \inst|cnt[12]~57_combout\ : std_logic;
SIGNAL \inst|cnt[12]~58\ : std_logic;
SIGNAL \inst|cnt[13]~60\ : std_logic;
SIGNAL \inst|cnt[14]~62\ : std_logic;
SIGNAL \inst|cnt[15]~63_combout\ : std_logic;
SIGNAL \inst|cnt[15]~64\ : std_logic;
SIGNAL \inst|cnt[16]~66\ : std_logic;
SIGNAL \inst|cnt[17]~67_combout\ : std_logic;
SIGNAL \inst|cnt[17]~68\ : std_logic;
SIGNAL \inst|cnt[18]~69_combout\ : std_logic;
SIGNAL \inst|cnt[16]~65_combout\ : std_logic;
SIGNAL \inst|cnt[18]~70\ : std_logic;
SIGNAL \inst|cnt[19]~71_combout\ : std_logic;
SIGNAL \inst|cnt[19]~72\ : std_logic;
SIGNAL \inst|cnt[20]~74\ : std_logic;
SIGNAL \inst|cnt[21]~75_combout\ : std_logic;
SIGNAL \inst|cnt[21]~76\ : std_logic;
SIGNAL \inst|cnt[22]~77_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|cnt[22]~78\ : std_logic;
SIGNAL \inst|cnt[23]~79_combout\ : std_logic;
SIGNAL \inst|cnt[23]~80\ : std_logic;
SIGNAL \inst|cnt[24]~81_combout\ : std_logic;
SIGNAL \inst|cnt[24]~82\ : std_logic;
SIGNAL \inst|cnt[25]~83_combout\ : std_logic;
SIGNAL \inst|cnt[25]~84\ : std_logic;
SIGNAL \inst|cnt[26]~85_combout\ : std_logic;
SIGNAL \inst|cnt[26]~86\ : std_logic;
SIGNAL \inst|cnt[27]~88\ : std_logic;
SIGNAL \inst|cnt[28]~89_combout\ : std_logic;
SIGNAL \inst|cnt[28]~90\ : std_logic;
SIGNAL \inst|cnt[29]~92\ : std_logic;
SIGNAL \inst|cnt[30]~94\ : std_logic;
SIGNAL \inst|cnt[31]~95_combout\ : std_logic;
SIGNAL \inst|cnt[29]~91_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|cnt[14]~61_combout\ : std_logic;
SIGNAL \inst|cnt[11]~55_combout\ : std_logic;
SIGNAL \inst|cnt[0]~33_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|LessThan0~11_combout\ : std_logic;
SIGNAL \inst|clk100ms~0_combout\ : std_logic;
SIGNAL \inst|clk100ms~regout\ : std_logic;
SIGNAL \inst4|row[1]~0_combout\ : std_logic;
SIGNAL \inst4|row[3]~feeder_combout\ : std_logic;
SIGNAL \inst3|tictoc\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|seg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|digout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|digbuff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|key\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst4|row\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|seconds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \col~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|cnt\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst2|digit1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|digit4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|milli\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst2|digit3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|digit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|minutes\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst2|ALT_INV_ptflag~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_row\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_led_clk_x~1_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_digout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

segout <= ww_segout;
ww_clk <= clk;
ww_col <= col;
led_clk_x <= ww_led_clk_x;
digout <= ww_digout;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|always0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|always0~combout\);

\inst2|ptflag~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|ptflag~regout\);

\inst3|led_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|led_clk~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst2|ALT_INV_ptflag~clkctrl_outclk\ <= NOT \inst2|ptflag~clkctrl_outclk\;
\inst4|ALT_INV_row\(0) <= NOT \inst4|row\(0);
\inst4|ALT_INV_row\(1) <= NOT \inst4|row\(1);
\inst4|ALT_INV_row\(2) <= NOT \inst4|row\(2);
\inst4|ALT_INV_row\(3) <= NOT \inst4|row\(3);
\inst3|ALT_INV_led_clk_x~1_combout\ <= NOT \inst3|led_clk_x~1_combout\;
\inst3|ALT_INV_digout\(0) <= NOT \inst3|digout\(0);

-- Location: LCCOMB_X33_Y14_N20
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|tictoc\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|tictoc\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|tictoc\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X33_Y13_N6
\inst3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|tictoc\(11) & (!\inst3|Add0~21\)) # (!\inst3|tictoc\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|tictoc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X33_Y13_N10
\inst3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|tictoc\(13) & (!\inst3|Add0~25\)) # (!\inst3|tictoc\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|tictoc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X33_Y13_N14
\inst3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|tictoc\(15) & (!\inst3|Add0~29\)) # (!\inst3|tictoc\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|tictoc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X33_Y13_N16
\inst3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = \inst3|tictoc\(16) $ (!\inst3|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(16),
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\);

-- Location: LCFF_X5_Y3_N7
\inst|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[27]~87_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(27));

-- Location: LCFF_X5_Y3_N13
\inst|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[30]~93_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(30));

-- Location: LCFF_X5_Y3_N17
\inst|cnt[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[32]~97_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(32));

-- Location: LCFF_X5_Y4_N25
\inst|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[20]~73_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(20));

-- Location: LCFF_X5_Y5_N25
\inst|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[4]~41_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(4));

-- Location: LCFF_X5_Y5_N21
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[2]~37_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCFF_X5_Y4_N11
\inst|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[13]~59_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(13));

-- Location: LCCOMB_X5_Y5_N20
\inst|cnt[2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~37_combout\ = (\inst|cnt\(2) & (\inst|cnt[1]~36\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|cnt[1]~36\ & VCC))
-- \inst|cnt[2]~38\ = CARRY((\inst|cnt\(2) & !\inst|cnt[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|cnt[1]~36\,
	combout => \inst|cnt[2]~37_combout\,
	cout => \inst|cnt[2]~38\);

-- Location: LCCOMB_X5_Y5_N24
\inst|cnt[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[4]~41_combout\ = (\inst|cnt\(4) & (\inst|cnt[3]~40\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|cnt[3]~40\ & VCC))
-- \inst|cnt[4]~42\ = CARRY((\inst|cnt\(4) & !\inst|cnt[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|cnt[3]~40\,
	combout => \inst|cnt[4]~41_combout\,
	cout => \inst|cnt[4]~42\);

-- Location: LCCOMB_X5_Y4_N10
\inst|cnt[13]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[13]~59_combout\ = (\inst|cnt\(13) & (!\inst|cnt[12]~58\)) # (!\inst|cnt\(13) & ((\inst|cnt[12]~58\) # (GND)))
-- \inst|cnt[13]~60\ = CARRY((!\inst|cnt[12]~58\) # (!\inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datad => VCC,
	cin => \inst|cnt[12]~58\,
	combout => \inst|cnt[13]~59_combout\,
	cout => \inst|cnt[13]~60\);

-- Location: LCCOMB_X5_Y4_N24
\inst|cnt[20]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[20]~73_combout\ = (\inst|cnt\(20) & (\inst|cnt[19]~72\ $ (GND))) # (!\inst|cnt\(20) & (!\inst|cnt[19]~72\ & VCC))
-- \inst|cnt[20]~74\ = CARRY((\inst|cnt\(20) & !\inst|cnt[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(20),
	datad => VCC,
	cin => \inst|cnt[19]~72\,
	combout => \inst|cnt[20]~73_combout\,
	cout => \inst|cnt[20]~74\);

-- Location: LCCOMB_X5_Y3_N6
\inst|cnt[27]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[27]~87_combout\ = (\inst|cnt\(27) & (!\inst|cnt[26]~86\)) # (!\inst|cnt\(27) & ((\inst|cnt[26]~86\) # (GND)))
-- \inst|cnt[27]~88\ = CARRY((!\inst|cnt[26]~86\) # (!\inst|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(27),
	datad => VCC,
	cin => \inst|cnt[26]~86\,
	combout => \inst|cnt[27]~87_combout\,
	cout => \inst|cnt[27]~88\);

-- Location: LCCOMB_X5_Y3_N12
\inst|cnt[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[30]~93_combout\ = (\inst|cnt\(30) & (\inst|cnt[29]~92\ $ (GND))) # (!\inst|cnt\(30) & (!\inst|cnt[29]~92\ & VCC))
-- \inst|cnt[30]~94\ = CARRY((\inst|cnt\(30) & !\inst|cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(30),
	datad => VCC,
	cin => \inst|cnt[29]~92\,
	combout => \inst|cnt[30]~93_combout\,
	cout => \inst|cnt[30]~94\);

-- Location: LCCOMB_X5_Y3_N14
\inst|cnt[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[31]~95_combout\ = (\inst|cnt\(31) & (!\inst|cnt[30]~94\)) # (!\inst|cnt\(31) & ((\inst|cnt[30]~94\) # (GND)))
-- \inst|cnt[31]~96\ = CARRY((!\inst|cnt[30]~94\) # (!\inst|cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(31),
	datad => VCC,
	cin => \inst|cnt[30]~94\,
	combout => \inst|cnt[31]~95_combout\,
	cout => \inst|cnt[31]~96\);

-- Location: LCCOMB_X5_Y3_N16
\inst|cnt[32]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[32]~97_combout\ = \inst|cnt\(32) $ (!\inst|cnt[31]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(32),
	cin => \inst|cnt[31]~96\,
	combout => \inst|cnt[32]~97_combout\);

-- Location: LCFF_X32_Y11_N9
\inst2|digit2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit2[0]~9_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit2\(0));

-- Location: LCFF_X30_Y10_N3
\inst2|milli[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(1));

-- Location: LCFF_X30_Y10_N5
\inst2|milli[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(2));

-- Location: LCFF_X30_Y10_N7
\inst2|milli[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(3));

-- Location: LCFF_X30_Y10_N9
\inst2|milli[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[4]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(4));

-- Location: LCFF_X30_Y10_N11
\inst2|milli[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[5]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(5));

-- Location: LCCOMB_X30_Y11_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst2|seconds\(3) $ (VCC)
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst2|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(3),
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X30_Y11_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|seconds\(4) & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst2|seconds\(4) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst2|seconds\(4) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(4),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X30_Y11_N20
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst2|seconds\(5) & (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\inst2|seconds\(5) & 
-- (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst2|seconds\(5) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(5),
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X30_Y11_N22
\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y11_N10
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X31_Y11_N12
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y11_N14
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X31_Y11_N16
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y11_N18
\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y11_N0
\inst2|digit2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[0]~2_cout\ = CARRY((\inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \inst2|digit2[0]~2_cout\);

-- Location: LCCOMB_X32_Y11_N2
\inst2|digit2[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[0]~4_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & !\inst2|digit2[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \inst2|digit2[0]~2_cout\,
	cout => \inst2|digit2[0]~4_cout\);

-- Location: LCCOMB_X32_Y11_N4
\inst2|digit2[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[0]~6_cout\ = CARRY((!\inst2|digit2[0]~4_cout\ & ((\inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # (\inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \inst2|digit2[0]~4_cout\,
	cout => \inst2|digit2[0]~6_cout\);

-- Location: LCCOMB_X32_Y11_N6
\inst2|digit2[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[0]~8_cout\ = CARRY((!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & (!\inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & !\inst2|digit2[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datab => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datad => VCC,
	cin => \inst2|digit2[0]~6_cout\,
	cout => \inst2|digit2[0]~8_cout\);

-- Location: LCCOMB_X32_Y11_N8
\inst2|digit2[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[0]~9_combout\ = !\inst2|digit2[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|digit2[0]~8_cout\,
	combout => \inst2|digit2[0]~9_combout\);

-- Location: LCCOMB_X29_Y11_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst2|seconds\(3) $ (VCC)
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst2|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(3),
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X29_Y11_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|seconds\(4) & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst2|seconds\(4) & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst2|seconds\(4) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(4),
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X29_Y11_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst2|seconds\(5) & (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\inst2|seconds\(5) & 
-- (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst2|seconds\(5) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(5),
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X29_Y11_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X29_Y11_N2
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y11_N4
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y11_N6
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y11_N8
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y11_N10
\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\) # (\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datad => VCC,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X28_Y11_N22
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ & 
-- (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\)))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X28_Y11_N24
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))))
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X28_Y11_N26
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ & (!\inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y11_N28
\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y12_N18
\inst2|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~0_combout\ = \inst2|minutes\(0) $ (GND)
-- \inst2|Add3~1\ = CARRY(!\inst2|minutes\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(0),
	datad => VCC,
	combout => \inst2|Add3~0_combout\,
	cout => \inst2|Add3~1\);

-- Location: LCCOMB_X30_Y10_N2
\inst2|milli[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[1]~5_combout\ = (\inst2|milli\(0) & (\inst2|milli\(1) $ (VCC))) # (!\inst2|milli\(0) & (\inst2|milli\(1) & VCC))
-- \inst2|milli[1]~6\ = CARRY((\inst2|milli\(0) & \inst2|milli\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|milli\(0),
	datab => \inst2|milli\(1),
	datad => VCC,
	combout => \inst2|milli[1]~5_combout\,
	cout => \inst2|milli[1]~6\);

-- Location: LCCOMB_X30_Y10_N4
\inst2|milli[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[2]~7_combout\ = (\inst2|milli\(2) & (!\inst2|milli[1]~6\)) # (!\inst2|milli\(2) & ((\inst2|milli[1]~6\) # (GND)))
-- \inst2|milli[2]~8\ = CARRY((!\inst2|milli[1]~6\) # (!\inst2|milli\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|milli\(2),
	datad => VCC,
	cin => \inst2|milli[1]~6\,
	combout => \inst2|milli[2]~7_combout\,
	cout => \inst2|milli[2]~8\);

-- Location: LCCOMB_X30_Y10_N6
\inst2|milli[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[3]~9_combout\ = (\inst2|milli\(3) & (\inst2|milli[2]~8\ $ (GND))) # (!\inst2|milli\(3) & (!\inst2|milli[2]~8\ & VCC))
-- \inst2|milli[3]~10\ = CARRY((\inst2|milli\(3) & !\inst2|milli[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|milli\(3),
	datad => VCC,
	cin => \inst2|milli[2]~8\,
	combout => \inst2|milli[3]~9_combout\,
	cout => \inst2|milli[3]~10\);

-- Location: LCCOMB_X30_Y10_N8
\inst2|milli[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[4]~11_combout\ = (\inst2|milli\(4) & (!\inst2|milli[3]~10\)) # (!\inst2|milli\(4) & ((\inst2|milli[3]~10\) # (GND)))
-- \inst2|milli[4]~12\ = CARRY((!\inst2|milli[3]~10\) # (!\inst2|milli\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|milli\(4),
	datad => VCC,
	cin => \inst2|milli[3]~10\,
	combout => \inst2|milli[4]~11_combout\,
	cout => \inst2|milli[4]~12\);

-- Location: LCCOMB_X30_Y10_N10
\inst2|milli[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[5]~13_combout\ = \inst2|milli[4]~12\ $ (!\inst2|milli\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|milli\(5),
	cin => \inst2|milli[4]~12\,
	combout => \inst2|milli[5]~13_combout\);

-- Location: LCCOMB_X29_Y10_N6
\inst2|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~0_combout\ = \inst2|seconds\(0) $ (VCC)
-- \inst2|Add2~1\ = CARRY(\inst2|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(0),
	datad => VCC,
	combout => \inst2|Add2~0_combout\,
	cout => \inst2|Add2~1\);

-- Location: LCCOMB_X29_Y10_N8
\inst2|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~2_combout\ = (\inst2|seconds\(1) & ((\inst2|Add2~1\) # (GND))) # (!\inst2|seconds\(1) & (!\inst2|Add2~1\))
-- \inst2|Add2~3\ = CARRY((\inst2|seconds\(1)) # (!\inst2|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(1),
	datad => VCC,
	cin => \inst2|Add2~1\,
	combout => \inst2|Add2~2_combout\,
	cout => \inst2|Add2~3\);

-- Location: LCCOMB_X29_Y10_N10
\inst2|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~4_combout\ = (\inst2|seconds\(2) & (\inst2|Add2~3\ $ (GND))) # (!\inst2|seconds\(2) & (!\inst2|Add2~3\ & VCC))
-- \inst2|Add2~5\ = CARRY((\inst2|seconds\(2) & !\inst2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(2),
	datad => VCC,
	cin => \inst2|Add2~3\,
	combout => \inst2|Add2~4_combout\,
	cout => \inst2|Add2~5\);

-- Location: LCCOMB_X29_Y10_N12
\inst2|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~6_combout\ = (\inst2|seconds\(3) & (!\inst2|Add2~5\)) # (!\inst2|seconds\(3) & ((\inst2|Add2~5\) # (GND)))
-- \inst2|Add2~7\ = CARRY((!\inst2|Add2~5\) # (!\inst2|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(3),
	datad => VCC,
	cin => \inst2|Add2~5\,
	combout => \inst2|Add2~6_combout\,
	cout => \inst2|Add2~7\);

-- Location: LCCOMB_X29_Y10_N14
\inst2|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~8_combout\ = (\inst2|seconds\(4) & (!\inst2|Add2~7\ & VCC)) # (!\inst2|seconds\(4) & (\inst2|Add2~7\ $ (GND)))
-- \inst2|Add2~9\ = CARRY((!\inst2|seconds\(4) & !\inst2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(4),
	datad => VCC,
	cin => \inst2|Add2~7\,
	combout => \inst2|Add2~8_combout\,
	cout => \inst2|Add2~9\);

-- Location: LCCOMB_X29_Y10_N16
\inst2|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~10_combout\ = \inst2|seconds\(5) $ (!\inst2|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(5),
	cin => \inst2|Add2~9\,
	combout => \inst2|Add2~10_combout\);

-- Location: LCCOMB_X28_Y12_N20
\inst2|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~2_combout\ = (\inst2|minutes\(1) & ((\inst2|Add3~1\) # (GND))) # (!\inst2|minutes\(1) & (!\inst2|Add3~1\))
-- \inst2|Add3~3\ = CARRY((\inst2|minutes\(1)) # (!\inst2|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(1),
	datad => VCC,
	cin => \inst2|Add3~1\,
	combout => \inst2|Add3~2_combout\,
	cout => \inst2|Add3~3\);

-- Location: LCCOMB_X28_Y12_N22
\inst2|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~4_combout\ = (\inst2|minutes\(2) & (\inst2|Add3~3\ $ (GND))) # (!\inst2|minutes\(2) & (!\inst2|Add3~3\ & VCC))
-- \inst2|Add3~5\ = CARRY((\inst2|minutes\(2) & !\inst2|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(2),
	datad => VCC,
	cin => \inst2|Add3~3\,
	combout => \inst2|Add3~4_combout\,
	cout => \inst2|Add3~5\);

-- Location: LCCOMB_X28_Y12_N24
\inst2|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~6_combout\ = (\inst2|minutes\(3) & ((\inst2|Add3~5\) # (GND))) # (!\inst2|minutes\(3) & (!\inst2|Add3~5\))
-- \inst2|Add3~7\ = CARRY((\inst2|minutes\(3)) # (!\inst2|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes\(3),
	datad => VCC,
	cin => \inst2|Add3~5\,
	combout => \inst2|Add3~6_combout\,
	cout => \inst2|Add3~7\);

-- Location: LCCOMB_X28_Y12_N26
\inst2|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~8_combout\ = (\inst2|minutes\(4) & (!\inst2|Add3~7\ & VCC)) # (!\inst2|minutes\(4) & (\inst2|Add3~7\ $ (GND)))
-- \inst2|Add3~9\ = CARRY((!\inst2|minutes\(4) & !\inst2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(4),
	datad => VCC,
	cin => \inst2|Add3~7\,
	combout => \inst2|Add3~8_combout\,
	cout => \inst2|Add3~9\);

-- Location: LCCOMB_X28_Y12_N28
\inst2|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add3~10_combout\ = \inst2|minutes\(5) $ (!\inst2|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(5),
	cin => \inst2|Add3~9\,
	combout => \inst2|Add3~10_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|cnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X13_Y7_N8
\inst2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|cnt\(1) & (!\inst2|Add0~1\)) # (!\inst2|cnt\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X13_Y7_N10
\inst2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|cnt\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|cnt\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|cnt\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X13_Y7_N12
\inst2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|cnt\(3) & (!\inst2|Add0~5\)) # (!\inst2|cnt\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X13_Y7_N14
\inst2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|cnt\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|cnt\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|cnt\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X13_Y7_N16
\inst2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|cnt\(5) & (!\inst2|Add0~9\)) # (!\inst2|cnt\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X13_Y7_N18
\inst2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|cnt\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|cnt\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|cnt\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X13_Y7_N20
\inst2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|cnt\(7) & (!\inst2|Add0~13\)) # (!\inst2|cnt\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: LCCOMB_X13_Y7_N22
\inst2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|cnt\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|cnt\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|cnt\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X13_Y7_N24
\inst2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|cnt\(9) & (!\inst2|Add0~17\)) # (!\inst2|cnt\(9) & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(9),
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X13_Y7_N26
\inst2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|cnt\(10) & (\inst2|Add0~19\ $ (GND))) # (!\inst2|cnt\(10) & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|cnt\(10) & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(10),
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X13_Y7_N28
\inst2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|cnt\(11) & (!\inst2|Add0~21\)) # (!\inst2|cnt\(11) & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(11),
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: LCCOMB_X13_Y7_N30
\inst2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|cnt\(12) & (\inst2|Add0~23\ $ (GND))) # (!\inst2|cnt\(12) & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|cnt\(12) & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(12),
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: LCCOMB_X13_Y6_N0
\inst2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|cnt\(13) & (!\inst2|Add0~25\)) # (!\inst2|cnt\(13) & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(13),
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X13_Y6_N2
\inst2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|cnt\(14) & (\inst2|Add0~27\ $ (GND))) # (!\inst2|cnt\(14) & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|cnt\(14) & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(14),
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: LCCOMB_X13_Y6_N4
\inst2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|cnt\(15) & (!\inst2|Add0~29\)) # (!\inst2|cnt\(15) & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(15),
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: LCCOMB_X13_Y6_N6
\inst2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|cnt\(16) & (\inst2|Add0~31\ $ (GND))) # (!\inst2|cnt\(16) & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|cnt\(16) & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(16),
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: LCCOMB_X13_Y6_N8
\inst2|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|cnt\(17) & (!\inst2|Add0~33\)) # (!\inst2|cnt\(17) & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(17),
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: LCCOMB_X13_Y6_N10
\inst2|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|cnt\(18) & (\inst2|Add0~35\ $ (GND))) # (!\inst2|cnt\(18) & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|cnt\(18) & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(18),
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: LCCOMB_X13_Y6_N12
\inst2|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|cnt\(19) & (!\inst2|Add0~37\)) # (!\inst2|cnt\(19) & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(19),
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: LCCOMB_X13_Y6_N14
\inst2|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|cnt\(20) & (\inst2|Add0~39\ $ (GND))) # (!\inst2|cnt\(20) & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|cnt\(20) & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(20),
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: LCCOMB_X13_Y6_N16
\inst2|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|cnt\(21) & (!\inst2|Add0~41\)) # (!\inst2|cnt\(21) & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(21),
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: LCCOMB_X13_Y6_N18
\inst2|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|cnt\(22) & (\inst2|Add0~43\ $ (GND))) # (!\inst2|cnt\(22) & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|cnt\(22) & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(22),
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: LCCOMB_X13_Y6_N20
\inst2|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|cnt\(23) & (!\inst2|Add0~45\)) # (!\inst2|cnt\(23) & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(23),
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X13_Y6_N22
\inst2|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|cnt\(24) & (\inst2|Add0~47\ $ (GND))) # (!\inst2|cnt\(24) & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|cnt\(24) & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(24),
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: LCCOMB_X13_Y6_N24
\inst2|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|cnt\(25) & (!\inst2|Add0~49\)) # (!\inst2|cnt\(25) & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(25),
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: LCCOMB_X13_Y6_N26
\inst2|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = \inst2|Add0~51\ $ (!\inst2|cnt\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|cnt\(26),
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\);

-- Location: LCCOMB_X32_Y12_N14
\inst3|digout[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout[3]~5_combout\ = (\inst3|digbuff\(0) & ((\inst3|digbuff\(1) & ((\inst3|digbuff\(3)) # (\inst3|digbuff\(2)))) # (!\inst3|digbuff\(1) & (\inst3|digbuff\(3) $ (!\inst3|digbuff\(2)))))) # (!\inst3|digbuff\(0) & ((\inst3|digbuff\(1)) # 
-- ((\inst3|digbuff\(3)) # (\inst3|digbuff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(0),
	datab => \inst3|digbuff\(1),
	datac => \inst3|digbuff\(3),
	datad => \inst3|digbuff\(2),
	combout => \inst3|digout[3]~5_combout\);

-- Location: LCFF_X33_Y14_N21
\inst3|tictoc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(2));

-- Location: LCFF_X33_Y13_N7
\inst3|tictoc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(11));

-- Location: LCFF_X33_Y13_N11
\inst3|tictoc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(13));

-- Location: LCFF_X33_Y13_N17
\inst3|tictoc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(16));

-- Location: LCCOMB_X31_Y12_N12
\inst3|digout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~7_combout\ = (\inst3|digbuff\(3)) # (\inst3|digbuff\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digbuff\(3),
	datad => \inst3|digbuff\(2),
	combout => \inst3|digout~7_combout\);

-- Location: LCFF_X30_Y12_N21
\inst3|seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(6));

-- Location: LCCOMB_X4_Y5_N30
\inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ((\inst|LessThan0~3_combout\ & ((!\inst|cnt\(19)) # (!\inst|cnt\(20))))) # (!\inst|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~3_combout\,
	datab => \inst|cnt\(20),
	datac => \inst|cnt\(23),
	datad => \inst|cnt\(19),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCFF_X30_Y12_N7
\inst3|seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(5));

-- Location: LCFF_X31_Y12_N31
\inst3|digit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|Mux7~1_combout\,
	ena => \inst3|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit\(0));

-- Location: LCFF_X31_Y12_N5
\inst3|digit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|Mux6~1_combout\,
	ena => \inst3|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit\(1));

-- Location: LCFF_X31_Y12_N19
\inst3|digit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|Mux5~1_combout\,
	ena => \inst3|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit\(2));

-- Location: LCFF_X31_Y12_N9
\inst3|digit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|Mux4~1_combout\,
	ena => \inst3|digit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit\(3));

-- Location: LCCOMB_X30_Y12_N28
\inst3|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr0~0_combout\ = (\inst3|digit\(1) & (\inst3|digit\(2) $ ((\inst3|digit\(3))))) # (!\inst3|digit\(1) & (!\inst3|digit\(3) & ((\inst3|digit\(0)) # (!\inst3|digit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr0~0_combout\);

-- Location: LCCOMB_X30_Y12_N20
\inst3|seg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~1_combout\ = (\inst3|cnt\(3) & ((\inst3|Equal1~0_combout\ & ((!\inst3|WideOr0~0_combout\))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(5))))) # (!\inst3|cnt\(3) & (\inst3|seg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seg\(5),
	datab => \inst3|cnt\(3),
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|WideOr0~0_combout\,
	combout => \inst3|seg~1_combout\);

-- Location: LCCOMB_X30_Y12_N14
\inst3|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr1~0_combout\ = (\inst3|digit\(2) & ((\inst3|digit\(3)) # ((!\inst3|digit\(1) & !\inst3|digit\(0))))) # (!\inst3|digit\(2) & (((!\inst3|digit\(3) & !\inst3|digit\(0))) # (!\inst3|digit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr1~0_combout\);

-- Location: LCFF_X32_Y12_N13
\inst3|seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(4));

-- Location: LCCOMB_X30_Y12_N6
\inst3|seg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~2_combout\ = (\inst3|Equal1~0_combout\ & ((\inst3|cnt\(3) & ((\inst3|WideOr1~0_combout\))) # (!\inst3|cnt\(3) & (\inst3|seg\(4))))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~0_combout\,
	datab => \inst3|seg\(4),
	datac => \inst3|WideOr1~0_combout\,
	datad => \inst3|cnt\(3),
	combout => \inst3|seg~2_combout\);

-- Location: LCFF_X30_Y12_N1
\inst2|digit1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit1[0]~0_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit1\(0));

-- Location: LCCOMB_X32_Y12_N24
\inst3|digit[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit[0]~0_combout\ = (\inst3|digbuff\(3)) # ((\inst3|digbuff\(1) & !\inst3|digbuff\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(3),
	datab => \inst3|digbuff\(1),
	datac => \inst3|digbuff\(2),
	combout => \inst3|digit[0]~0_combout\);

-- Location: LCFF_X31_Y12_N7
\inst2|digit4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|milli\(0),
	sload => VCC,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit4\(0));

-- Location: LCCOMB_X31_Y12_N6
\inst3|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux7~0_combout\ = (\inst3|digout~7_combout\ & ((\inst3|digit[0]~0_combout\) # ((\inst2|digit2\(0))))) # (!\inst3|digout~7_combout\ & (!\inst3|digit[0]~0_combout\ & (\inst2|digit4\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digout~7_combout\,
	datab => \inst3|digit[0]~0_combout\,
	datac => \inst2|digit4\(0),
	datad => \inst2|digit2\(0),
	combout => \inst3|Mux7~0_combout\);

-- Location: LCFF_X30_Y12_N31
\inst2|digit3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit3[0]~feeder_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit3\(0));

-- Location: LCCOMB_X31_Y12_N30
\inst3|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux7~1_combout\ = (\inst3|digit[0]~0_combout\ & ((\inst3|Mux7~0_combout\ & (!\inst2|digit3\(0))) # (!\inst3|Mux7~0_combout\ & ((!\inst2|digit1\(0)))))) # (!\inst3|digit[0]~0_combout\ & (((!\inst3|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit3\(0),
	datab => \inst3|digit[0]~0_combout\,
	datac => \inst2|digit1\(0),
	datad => \inst3|Mux7~0_combout\,
	combout => \inst3|Mux7~1_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst3|digit[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit[0]~1_combout\ = (\inst3|cnt\(3) & (!\inst3|digout[3]~5_combout\ & \inst3|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(3),
	datac => \inst3|digout[3]~5_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|digit[0]~1_combout\);

-- Location: LCFF_X32_Y11_N31
\inst2|digit2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit2[1]~11_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit2\(1));

-- Location: LCFF_X31_Y12_N17
\inst2|digit1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit1[1]~1_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit1\(1));

-- Location: LCFF_X31_Y12_N23
\inst2|digit4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|milli\(1),
	sload => VCC,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit4\(1));

-- Location: LCCOMB_X31_Y12_N22
\inst3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst3|digout~7_combout\ & (((\inst3|digit[0]~0_combout\)))) # (!\inst3|digout~7_combout\ & ((\inst3|digit[0]~0_combout\ & (\inst2|digit1\(1))) # (!\inst3|digit[0]~0_combout\ & ((\inst2|digit4\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digout~7_combout\,
	datab => \inst2|digit1\(1),
	datac => \inst2|digit4\(1),
	datad => \inst3|digit[0]~0_combout\,
	combout => \inst3|Mux6~0_combout\);

-- Location: LCFF_X28_Y11_N5
\inst2|digit3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit3\(1));

-- Location: LCCOMB_X31_Y12_N4
\inst3|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux6~1_combout\ = (\inst3|digout~7_combout\ & ((\inst3|Mux6~0_combout\ & ((!\inst2|digit3\(1)))) # (!\inst3|Mux6~0_combout\ & (!\inst2|digit2\(1))))) # (!\inst3|digout~7_combout\ & (!\inst3|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digout~7_combout\,
	datab => \inst3|Mux6~0_combout\,
	datac => \inst2|digit2\(1),
	datad => \inst2|digit3\(1),
	combout => \inst3|Mux6~1_combout\);

-- Location: LCFF_X31_Y12_N13
\inst2|digit1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|minutes\(2),
	sload => VCC,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit1\(2));

-- Location: LCFF_X31_Y12_N21
\inst2|digit2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit2[2]~12_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit2\(2));

-- Location: LCFF_X31_Y12_N15
\inst2|digit4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|milli\(2),
	sload => VCC,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit4\(2));

-- Location: LCCOMB_X31_Y12_N14
\inst3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst3|digit[0]~0_combout\ & (((\inst3|digout~7_combout\)))) # (!\inst3|digit[0]~0_combout\ & ((\inst3|digout~7_combout\ & (\inst2|digit2\(2))) # (!\inst3|digout~7_combout\ & ((\inst2|digit4\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit2\(2),
	datab => \inst3|digit[0]~0_combout\,
	datac => \inst2|digit4\(2),
	datad => \inst3|digout~7_combout\,
	combout => \inst3|Mux5~0_combout\);

-- Location: LCFF_X28_Y11_N19
\inst2|digit3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit3\(2));

-- Location: LCCOMB_X31_Y12_N18
\inst3|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux5~1_combout\ = (\inst3|digit[0]~0_combout\ & ((\inst3|Mux5~0_combout\ & (\inst2|digit3\(2))) # (!\inst3|Mux5~0_combout\ & ((\inst2|digit1\(2)))))) # (!\inst3|digit[0]~0_combout\ & (((\inst3|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit[0]~0_combout\,
	datab => \inst2|digit3\(2),
	datac => \inst3|Mux5~0_combout\,
	datad => \inst2|digit1\(2),
	combout => \inst3|Mux5~1_combout\);

-- Location: LCFF_X28_Y11_N1
\inst2|digit3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit3\(3));

-- Location: LCFF_X31_Y12_N29
\inst2|digit1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|digit1[3]~2_combout\,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit1\(3));

-- Location: LCFF_X31_Y12_N27
\inst2|digit4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|milli\(3),
	sload => VCC,
	ena => \inst2|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|digit4\(3));

-- Location: LCCOMB_X31_Y12_N26
\inst3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst3|digout~7_combout\ & (\inst3|digit[0]~0_combout\)) # (!\inst3|digout~7_combout\ & ((\inst3|digit[0]~0_combout\ & ((\inst2|digit1\(3)))) # (!\inst3|digit[0]~0_combout\ & (\inst2|digit4\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digout~7_combout\,
	datab => \inst3|digit[0]~0_combout\,
	datac => \inst2|digit4\(3),
	datad => \inst2|digit1\(3),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y12_N8
\inst3|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mux4~1_combout\ = (\inst3|Mux4~0_combout\ & ((\inst2|digit3\(3)) # ((!\inst3|digbuff\(2) & !\inst3|digbuff\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(2),
	datab => \inst3|digbuff\(3),
	datac => \inst2|digit3\(3),
	datad => \inst3|Mux4~0_combout\,
	combout => \inst3|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y12_N0
\inst3|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr2~0_combout\ = ((\inst3|digit\(1) & (\inst3|digit\(2))) # (!\inst3|digit\(1) & ((\inst3|digit\(3))))) # (!\inst3|digit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr2~0_combout\);

-- Location: LCFF_X32_Y12_N3
\inst3|seg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(3));

-- Location: LCCOMB_X32_Y12_N12
\inst3|seg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~3_combout\ = (\inst3|cnt\(3) & ((\inst3|Equal1~0_combout\ & ((\inst3|WideOr2~0_combout\))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(3))))) # (!\inst3|cnt\(3) & (((\inst3|seg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|seg\(3),
	datad => \inst3|WideOr2~0_combout\,
	combout => \inst3|seg~3_combout\);

-- Location: LCFF_X28_Y12_N9
\inst2|minutes[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~2_combout\,
	ena => \inst2|minutes[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(0));

-- Location: LCFF_X12_Y6_N9
\inst2|ptflag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|ptflag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|ptflag~regout\);

-- Location: LCFF_X30_Y10_N13
\inst2|milli[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|milli[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|milli\(0));

-- Location: LCCOMB_X30_Y10_N0
\inst2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((!\inst2|milli\(1) & (!\inst2|milli\(2) & !\inst2|milli\(0)))) # (!\inst2|milli\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|milli\(3),
	datab => \inst2|milli\(1),
	datac => \inst2|milli\(2),
	datad => \inst2|milli\(0),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y12_N24
\inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~1_combout\ = ((\inst2|milli\(5)) # (\inst2|milli\(4))) # (!\inst2|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|milli\(5),
	datad => \inst2|milli\(4),
	combout => \inst2|LessThan0~1_combout\);

-- Location: LCFF_X29_Y11_N29
\inst2|seconds[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|Add2~12_combout\,
	sload => VCC,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(5));

-- Location: LCFF_X29_Y11_N17
\inst2|seconds[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|Add2~13_combout\,
	sload => VCC,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(4));

-- Location: LCFF_X29_Y11_N19
\inst2|seconds[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|Add2~14_combout\,
	sload => VCC,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(3));

-- Location: LCCOMB_X31_Y11_N0
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (!\inst2|seconds\(5) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(5),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X30_Y11_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X31_Y11_N26
\inst2|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (!\inst2|seconds\(4) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(4),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X30_Y11_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X31_Y11_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst2|seconds\(3) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(3),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X31_Y11_N2
\inst2|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCFF_X29_Y11_N13
\inst2|seconds[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	sdata => \inst2|Add2~15_combout\,
	sload => VCC,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(2));

-- Location: LCCOMB_X31_Y11_N20
\inst2|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst2|seconds\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X31_Y11_N4
\inst2|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst2|seconds\(2) & !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X31_Y11_N30
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X31_Y11_N8
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X32_Y11_N24
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst2|seconds\(2) & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(2),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X31_Y11_N22
\inst2|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCFF_X29_Y12_N27
\inst2|seconds[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|Add2~16_combout\,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(1));

-- Location: LCCOMB_X32_Y11_N14
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (!\inst2|seconds\(1) & \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X32_Y11_N12
\inst2|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\inst2|seconds\(1) & !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(1),
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCFF_X29_Y12_N29
\inst2|seconds[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|Add2~17_combout\,
	ena => \inst2|seconds[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|seconds\(0));

-- Location: LCFF_X28_Y12_N3
\inst2|minutes[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~4_combout\,
	ena => \inst2|minutes[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(1));

-- Location: LCCOMB_X29_Y11_N12
\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (!\inst2|seconds\(5) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(5),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X29_Y11_N14
\inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X30_Y11_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (!\inst2|seconds\(4) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(4),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X29_Y11_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X29_Y11_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst2|seconds\(3) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(3),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X29_Y11_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X29_Y11_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst2|seconds\(2) & \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|seconds\(2),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X29_Y11_N28
\inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst2|seconds\(2) & !\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(2),
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X28_Y11_N14
\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst2|seconds\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|seconds\(1),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X28_Y11_N16
\inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst2|seconds\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|seconds\(1),
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X28_Y11_N12
\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X28_Y11_N6
\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ = (\inst2|seconds\(2) & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(2),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\);

-- Location: LCCOMB_X28_Y11_N8
\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ = (!\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst2|Mod0|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst2|seconds\(1))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|seconds\(1),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCFF_X28_Y12_N1
\inst2|minutes[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(2));

-- Location: LCCOMB_X28_Y11_N18
\inst2|Mod0|auto_generated|divider|divider|StageOut[27]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\) # 
-- ((\inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCCOMB_X28_Y11_N0
\inst2|Mod0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- ((\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))) # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datab => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCFF_X28_Y12_N7
\inst2|minutes[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~8_combout\,
	ena => \inst2|minutes[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(3));

-- Location: LCCOMB_X31_Y12_N10
\inst3|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr3~0_combout\ = (\inst3|digit\(1) & (\inst3|digit\(2) $ (((!\inst3|digit\(3) & !\inst3|digit\(0)))))) # (!\inst3|digit\(1) & ((\inst3|digit\(3)) # ((\inst3|digit\(2) & !\inst3|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr3~0_combout\);

-- Location: LCFF_X30_Y12_N13
\inst3|seg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(2));

-- Location: LCCOMB_X32_Y12_N2
\inst3|seg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~4_combout\ = (\inst3|cnt\(3) & ((\inst3|Equal1~0_combout\ & ((\inst3|WideOr3~0_combout\))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(2))))) # (!\inst3|cnt\(3) & (((\inst3|seg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|seg\(2),
	datad => \inst3|WideOr3~0_combout\,
	combout => \inst3|seg~4_combout\);

-- Location: LCCOMB_X28_Y12_N12
\inst2|minutes[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes[4]~0_combout\ = (\inst2|minutes\(3)) # ((\inst2|minutes\(1) & (\inst2|minutes\(0) & !\inst2|minutes\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes\(3),
	datab => \inst2|minutes\(1),
	datac => \inst2|minutes\(0),
	datad => \inst2|minutes\(2),
	combout => \inst2|minutes[4]~0_combout\);

-- Location: LCFF_X28_Y12_N31
\inst2|minutes[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~9_combout\,
	ena => \inst2|minutes[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(4));

-- Location: LCFF_X28_Y12_N5
\inst2|minutes[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst2|minutes~10_combout\,
	ena => \inst2|minutes[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|minutes\(5));

-- Location: LCCOMB_X28_Y12_N10
\inst2|minutes[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes[4]~1_combout\ = (\inst2|minutes\(4) & (\inst2|minutes\(5) & \inst2|minutes[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|minutes\(4),
	datac => \inst2|minutes\(5),
	datad => \inst2|minutes[4]~0_combout\,
	combout => \inst2|minutes[4]~1_combout\);

-- Location: LCCOMB_X29_Y10_N4
\inst2|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~0_combout\ = ((!\inst2|seconds\(2) & ((\inst2|seconds\(1)) # (!\inst2|seconds\(0))))) # (!\inst2|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(2),
	datab => \inst2|seconds\(0),
	datac => \inst2|seconds\(1),
	datad => \inst2|seconds\(3),
	combout => \inst2|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y10_N22
\inst2|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|LessThan1~1_combout\ = (\inst2|seconds\(5)) # ((\inst2|seconds\(4)) # (\inst2|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(5),
	datab => \inst2|seconds\(4),
	datac => \inst2|LessThan1~0_combout\,
	combout => \inst2|LessThan1~1_combout\);

-- Location: LCCOMB_X28_Y12_N8
\inst2|minutes~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~2_combout\ = (((\inst2|LessThan1~1_combout\) # (!\inst2|LessThan0~1_combout\)) # (!\inst2|Add3~0_combout\)) # (!\inst2|minutes[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst2|Add3~0_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~2_combout\);

-- Location: LCFF_X29_Y12_N31
\inst1|clr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|clr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|clr~regout\);

-- Location: LCCOMB_X28_Y12_N16
\inst2|minutes[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes[4]~3_combout\ = (\inst1|clr~regout\) # ((\inst2|LessThan0~1_combout\ & !\inst2|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan0~1_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst1|clr~regout\,
	combout => \inst2|minutes[4]~3_combout\);

-- Location: LCFF_X13_Y7_N7
\inst2|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(0));

-- Location: LCFF_X13_Y7_N9
\inst2|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(1));

-- Location: LCFF_X13_Y7_N11
\inst2|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(2));

-- Location: LCFF_X13_Y7_N13
\inst2|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(3));

-- Location: LCCOMB_X13_Y7_N4
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|cnt\(2) & (\inst2|cnt\(3) & (\inst2|cnt\(1) & \inst2|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(2),
	datab => \inst2|cnt\(3),
	datac => \inst2|cnt\(1),
	datad => \inst2|cnt\(0),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCFF_X13_Y7_N15
\inst2|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(4));

-- Location: LCFF_X13_Y7_N3
\inst2|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(7));

-- Location: LCFF_X13_Y7_N1
\inst2|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(5));

-- Location: LCFF_X13_Y7_N19
\inst2|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(6));

-- Location: LCCOMB_X12_Y7_N16
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst2|cnt\(6) & (\inst2|cnt\(4) & (!\inst2|cnt\(5) & \inst2|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(6),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(5),
	datad => \inst2|cnt\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCFF_X12_Y6_N1
\inst2|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(8));

-- Location: LCFF_X12_Y7_N23
\inst2|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(10));

-- Location: LCFF_X13_Y7_N25
\inst2|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(9));

-- Location: LCFF_X13_Y7_N29
\inst2|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(11));

-- Location: LCCOMB_X12_Y6_N12
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|cnt\(9) & (\inst2|cnt\(8) & (\inst2|cnt\(10) & !\inst2|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(9),
	datab => \inst2|cnt\(8),
	datac => \inst2|cnt\(10),
	datad => \inst2|cnt\(11),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCFF_X12_Y6_N23
\inst2|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(13));

-- Location: LCFF_X13_Y7_N31
\inst2|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(12));

-- Location: LCFF_X13_Y6_N3
\inst2|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(14));

-- Location: LCFF_X13_Y6_N5
\inst2|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(15));

-- Location: LCCOMB_X12_Y6_N18
\inst2|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|cnt\(15) & (\inst2|cnt\(13) & (!\inst2|cnt\(12) & !\inst2|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(15),
	datab => \inst2|cnt\(13),
	datac => \inst2|cnt\(12),
	datad => \inst2|cnt\(14),
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X12_Y6_N10
\inst2|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~2_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~3_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: LCFF_X12_Y6_N31
\inst2|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(17));

-- Location: LCFF_X13_Y6_N29
\inst2|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(18));

-- Location: LCFF_X13_Y6_N7
\inst2|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(16));

-- Location: LCFF_X13_Y6_N13
\inst2|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(19));

-- Location: LCCOMB_X12_Y6_N14
\inst2|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|cnt\(16) & (\inst2|cnt\(17) & (!\inst2|cnt\(19) & \inst2|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(16),
	datab => \inst2|cnt\(17),
	datac => \inst2|cnt\(19),
	datad => \inst2|cnt\(18),
	combout => \inst2|Equal0~5_combout\);

-- Location: LCFF_X13_Y6_N31
\inst2|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(21));

-- Location: LCFF_X13_Y6_N15
\inst2|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(20));

-- Location: LCFF_X13_Y6_N19
\inst2|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(22));

-- Location: LCFF_X13_Y6_N21
\inst2|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(23));

-- Location: LCCOMB_X12_Y6_N2
\inst2|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|cnt\(22) & (\inst2|cnt\(21) & (!\inst2|cnt\(20) & !\inst2|cnt\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(22),
	datab => \inst2|cnt\(21),
	datac => \inst2|cnt\(20),
	datad => \inst2|cnt\(23),
	combout => \inst2|Equal0~6_combout\);

-- Location: LCFF_X13_Y6_N23
\inst2|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(24));

-- Location: LCFF_X13_Y6_N25
\inst2|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(25));

-- Location: LCFF_X13_Y6_N27
\inst2|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|always0~clkctrl_outclk\,
	datain => \inst2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|cnt\(26));

-- Location: LCCOMB_X12_Y6_N26
\inst2|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|cnt\(25) & (!\inst2|cnt\(24) & (!\inst2|cnt\(26) & \inst2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(25),
	datab => \inst2|cnt\(24),
	datac => \inst2|cnt\(26),
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X12_Y6_N8
\inst2|ptflag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ptflag~0_combout\ = \inst2|ptflag~regout\ $ (((\inst2|Equal0~4_combout\ & (\inst2|Equal0~5_combout\ & \inst2|Equal0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Equal0~5_combout\,
	datac => \inst2|ptflag~regout\,
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|ptflag~0_combout\);

-- Location: LCCOMB_X29_Y10_N0
\inst2|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~12_combout\ = ((!\inst2|LessThan0~1_combout\) # (!\inst2|Add2~10_combout\)) # (!\inst2|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|Add2~10_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|Add2~12_combout\);

-- Location: LCCOMB_X29_Y12_N16
\inst2|seconds[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|seconds[4]~0_combout\ = (\inst2|milli\(4)) # (((\inst2|milli\(5)) # (\inst1|clr~regout\)) # (!\inst2|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|milli\(4),
	datab => \inst2|LessThan0~0_combout\,
	datac => \inst2|milli\(5),
	datad => \inst1|clr~regout\,
	combout => \inst2|seconds[4]~0_combout\);

-- Location: LCCOMB_X29_Y10_N18
\inst2|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~13_combout\ = ((!\inst2|LessThan0~1_combout\) # (!\inst2|Add2~8_combout\)) # (!\inst2|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan1~1_combout\,
	datac => \inst2|Add2~8_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|Add2~13_combout\);

-- Location: LCCOMB_X29_Y10_N24
\inst2|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~14_combout\ = (\inst2|Add2~6_combout\ & (\inst2|LessThan1~1_combout\ & \inst2|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~6_combout\,
	datab => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|Add2~14_combout\);

-- Location: LCCOMB_X29_Y10_N26
\inst2|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~15_combout\ = (\inst2|Add2~4_combout\ & (\inst2|LessThan1~1_combout\ & \inst2|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add2~4_combout\,
	datab => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|Add2~15_combout\);

-- Location: LCCOMB_X29_Y12_N26
\inst2|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~16_combout\ = ((!\inst2|LessThan1~1_combout\) # (!\inst2|Add2~2_combout\)) # (!\inst2|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datac => \inst2|Add2~2_combout\,
	datad => \inst2|LessThan1~1_combout\,
	combout => \inst2|Add2~16_combout\);

-- Location: LCCOMB_X29_Y12_N28
\inst2|Add2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Add2~17_combout\ = (\inst2|LessThan0~1_combout\ & (\inst2|Add2~0_combout\ & \inst2|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|LessThan0~1_combout\,
	datac => \inst2|Add2~0_combout\,
	datad => \inst2|LessThan1~1_combout\,
	combout => \inst2|Add2~17_combout\);

-- Location: LCCOMB_X28_Y12_N2
\inst2|minutes~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~4_combout\ = (((\inst2|LessThan1~1_combout\) # (!\inst2|LessThan0~1_combout\)) # (!\inst2|Add3~2_combout\)) # (!\inst2|minutes[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst2|Add3~2_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~4_combout\);

-- Location: LCCOMB_X28_Y12_N14
\inst2|minutes~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~5_combout\ = (\inst2|LessThan1~1_combout\ & (((\inst2|minutes\(2))))) # (!\inst2|LessThan1~1_combout\ & ((\inst2|LessThan0~1_combout\ & (\inst2|Add3~4_combout\)) # (!\inst2|LessThan0~1_combout\ & ((\inst2|minutes\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add3~4_combout\,
	datab => \inst2|minutes\(2),
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~5_combout\);

-- Location: LCCOMB_X29_Y10_N28
\inst2|minutes~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~6_combout\ = (!\inst2|seconds\(4) & (!\inst2|seconds\(5) & (!\inst2|LessThan1~0_combout\ & \inst2|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(4),
	datab => \inst2|seconds\(5),
	datac => \inst2|LessThan1~0_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~6_combout\);

-- Location: LCCOMB_X28_Y12_N0
\inst2|minutes~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~7_combout\ = (\inst2|minutes~5_combout\ & ((\inst2|minutes~6_combout\ & (\inst2|minutes[4]~1_combout\)) # (!\inst2|minutes~6_combout\ & ((!\inst1|clr~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst1|clr~regout\,
	datac => \inst2|minutes~5_combout\,
	datad => \inst2|minutes~6_combout\,
	combout => \inst2|minutes~7_combout\);

-- Location: LCCOMB_X28_Y12_N6
\inst2|minutes~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~8_combout\ = (((\inst2|LessThan1~1_combout\) # (!\inst2|LessThan0~1_combout\)) # (!\inst2|Add3~6_combout\)) # (!\inst2|minutes[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst2|Add3~6_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~8_combout\);

-- Location: LCCOMB_X30_Y12_N26
\inst3|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr4~0_combout\ = (\inst3|digit\(2) & (((\inst3|digit\(3))))) # (!\inst3|digit\(2) & (!\inst3|digit\(1) & ((\inst3|digit\(3)) # (\inst3|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr4~0_combout\);

-- Location: LCFF_X30_Y12_N25
\inst3|seg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(1));

-- Location: LCCOMB_X30_Y12_N12
\inst3|seg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~5_combout\ = (\inst3|Equal1~0_combout\ & ((\inst3|cnt\(3) & ((\inst3|WideOr4~0_combout\))) # (!\inst3|cnt\(3) & (\inst3|seg\(1))))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seg\(1),
	datab => \inst3|WideOr4~0_combout\,
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|cnt\(3),
	combout => \inst3|seg~5_combout\);

-- Location: LCCOMB_X28_Y12_N30
\inst2|minutes~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~9_combout\ = (((\inst2|LessThan1~1_combout\) # (!\inst2|LessThan0~1_combout\)) # (!\inst2|Add3~8_combout\)) # (!\inst2|minutes[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst2|Add3~8_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~9_combout\);

-- Location: LCCOMB_X28_Y12_N4
\inst2|minutes~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|minutes~10_combout\ = (((\inst2|LessThan1~1_combout\) # (!\inst2|LessThan0~1_combout\)) # (!\inst2|Add3~10_combout\)) # (!\inst2|minutes[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|minutes[4]~1_combout\,
	datab => \inst2|Add3~10_combout\,
	datac => \inst2|LessThan1~1_combout\,
	datad => \inst2|LessThan0~1_combout\,
	combout => \inst2|minutes~10_combout\);

-- Location: LCFF_X3_Y4_N1
\inst4|key[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[7]~0_combout\,
	ena => \inst4|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(7));

-- Location: LCFF_X3_Y4_N15
\inst4|key[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[6]~1_combout\,
	ena => \inst4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(6));

-- Location: LCFF_X2_Y4_N17
\inst4|key[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[5]~2_combout\,
	ena => \inst4|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(5));

-- Location: LCFF_X2_Y4_N15
\inst4|key[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[4]~3_combout\,
	ena => \inst4|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(4));

-- Location: LCCOMB_X3_Y4_N24
\inst1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst4|key\(4) & (!\inst4|key\(7) & (!\inst4|key\(6) & !\inst4|key\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key\(4),
	datab => \inst4|key\(7),
	datac => \inst4|key\(6),
	datad => \inst4|key\(5),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCFF_X3_Y4_N23
\inst4|key[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[3]~4_combout\,
	ena => \inst4|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(3));

-- Location: LCFF_X3_Y4_N29
\inst4|key[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[2]~5_combout\,
	ena => \inst4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(2));

-- Location: LCFF_X2_Y4_N1
\inst4|key[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[1]~6_combout\,
	ena => \inst4|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(1));

-- Location: LCFF_X2_Y4_N31
\inst4|key[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[0]~7_combout\,
	ena => \inst4|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(0));

-- Location: LCCOMB_X3_Y4_N10
\inst1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (!\inst4|key\(0) & (!\inst4|key\(2) & (!\inst4|key\(1) & !\inst4|key\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key\(0),
	datab => \inst4|key\(2),
	datac => \inst4|key\(1),
	datad => \inst4|key\(3),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCFF_X3_Y4_N5
\inst4|key[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[11]~8_combout\,
	ena => \inst4|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(11));

-- Location: LCFF_X3_Y4_N31
\inst4|key[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[10]~9_combout\,
	ena => \inst4|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(10));

-- Location: LCFF_X2_Y4_N5
\inst4|key[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[9]~10_combout\,
	ena => \inst4|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(9));

-- Location: LCFF_X2_Y4_N3
\inst4|key[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|key[8]~11_combout\,
	ena => \inst4|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key\(8));

-- Location: LCCOMB_X3_Y4_N12
\inst1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (!\inst4|key\(8) & (!\inst4|key\(9) & (!\inst4|key\(11) & !\inst4|key\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key\(8),
	datab => \inst4|key\(9),
	datac => \inst4|key\(11),
	datad => \inst4|key\(10),
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y12_N30
\inst1|clr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|clr~0_combout\ = ((\inst1|clr~regout\ & ((!\inst1|Equal0~0_combout\) # (!\inst1|Equal0~1_combout\)))) # (!\inst1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \inst1|Equal0~2_combout\,
	datac => \inst1|clr~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|clr~0_combout\);

-- Location: LCCOMB_X13_Y7_N2
\inst2|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~0_combout\ = (\inst2|Add0~14_combout\ & (((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|cnt~0_combout\);

-- Location: LCCOMB_X13_Y7_N0
\inst2|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~1_combout\ = (\inst2|Add0~10_combout\ & (((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|cnt~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\inst2|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~2_combout\ = (\inst2|Add0~16_combout\ & (((!\inst2|Equal0~5_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|cnt~2_combout\);

-- Location: LCCOMB_X12_Y7_N22
\inst2|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~3_combout\ = (\inst2|Add0~20_combout\ & (((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|cnt~3_combout\);

-- Location: LCCOMB_X12_Y6_N22
\inst2|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~4_combout\ = (\inst2|Add0~26_combout\ & (((!\inst2|Equal0~7_combout\) # (!\inst2|Equal0~5_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Equal0~5_combout\,
	datac => \inst2|Add0~26_combout\,
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|cnt~4_combout\);

-- Location: LCCOMB_X12_Y6_N30
\inst2|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~5_combout\ = (\inst2|Add0~34_combout\ & (((!\inst2|Equal0~7_combout\) # (!\inst2|Equal0~5_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~4_combout\,
	datab => \inst2|Equal0~5_combout\,
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|Equal0~7_combout\,
	combout => \inst2|cnt~5_combout\);

-- Location: LCCOMB_X13_Y6_N28
\inst2|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~6_combout\ = (\inst2|Add0~36_combout\ & (((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Add0~36_combout\,
	combout => \inst2|cnt~6_combout\);

-- Location: LCCOMB_X13_Y6_N30
\inst2|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|cnt~7_combout\ = (\inst2|Add0~42_combout\ & (((!\inst2|Equal0~4_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~5_combout\,
	datab => \inst2|Equal0~7_combout\,
	datac => \inst2|Add0~42_combout\,
	datad => \inst2|Equal0~4_combout\,
	combout => \inst2|cnt~7_combout\);

-- Location: LCFF_X33_Y10_N19
\inst2|spflag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst1|sp~regout\,
	datain => \inst2|spflag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|spflag~regout\);

-- Location: LCCOMB_X33_Y10_N6
\inst2|always0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|always0~combout\ = LCELL((\clk~combout\ & \inst2|spflag~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~combout\,
	datad => \inst2|spflag~regout\,
	combout => \inst2|always0~combout\);

-- Location: LCCOMB_X31_Y12_N24
\inst3|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr5~0_combout\ = (\inst3|digit\(2) & ((\inst3|digit\(3)) # (\inst3|digit\(1) $ (\inst3|digit\(0))))) # (!\inst3|digit\(2) & (!\inst3|digit\(1) & (\inst3|digit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr5~0_combout\);

-- Location: LCFF_X30_Y12_N11
\inst3|seg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(0));

-- Location: LCCOMB_X30_Y12_N24
\inst3|seg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~6_combout\ = (\inst3|cnt\(3) & ((\inst3|Equal1~0_combout\ & ((\inst3|WideOr5~0_combout\))) # (!\inst3|Equal1~0_combout\ & (\inst3|seg\(0))))) # (!\inst3|cnt\(3) & (\inst3|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seg\(0),
	datab => \inst3|cnt\(3),
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|WideOr5~0_combout\,
	combout => \inst3|seg~6_combout\);

-- Location: LCFF_X33_Y10_N1
\inst1|sp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|sp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sp~regout\);

-- Location: LCCOMB_X31_Y12_N2
\inst3|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|WideOr6~0_combout\ = (\inst3|digit\(1) & (\inst3|digit\(2) $ (((!\inst3|digit\(3) & !\inst3|digit\(0)))))) # (!\inst3|digit\(1) & (((\inst3|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit\(1),
	datab => \inst3|digit\(2),
	datac => \inst3|digit\(3),
	datad => \inst3|digit\(0),
	combout => \inst3|WideOr6~0_combout\);

-- Location: LCCOMB_X30_Y12_N10
\inst3|seg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~7_combout\ = (\inst3|cnt\(3) & (\inst3|Equal1~0_combout\ & \inst3|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datac => \inst3|Equal1~0_combout\,
	datad => \inst3|WideOr6~0_combout\,
	combout => \inst3|seg~7_combout\);

-- Location: LCCOMB_X33_Y10_N0
\inst1|sp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|sp~0_combout\ = (\inst1|Equal0~2_combout\ & (((!\inst1|Equal0~0_combout\)) # (!\inst1|Equal0~1_combout\))) # (!\inst1|Equal0~2_combout\ & (((\inst1|sp~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~2_combout\,
	datab => \inst1|Equal0~1_combout\,
	datac => \inst1|sp~regout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|sp~0_combout\);

-- Location: LCCOMB_X31_Y11_N28
\inst2|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst2|seconds\(4))) 
-- # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(4),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X31_Y11_N6
\inst2|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|seconds\(3))) 
-- # (!\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|seconds\(3),
	datab => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst2|seconds\(4))) 
-- # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst2|seconds\(4),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\);

-- Location: LCCOMB_X28_Y11_N30
\inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ = (\inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst2|seconds\(3))) 
-- # (!\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst2|seconds\(3),
	datac => \inst2|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst2|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst2|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\);

-- Location: LCCOMB_X30_Y12_N0
\inst2|digit1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit1[0]~0_combout\ = !\inst2|minutes\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|minutes\(0),
	combout => \inst2|digit1[0]~0_combout\);

-- Location: LCCOMB_X32_Y11_N30
\inst2|digit2[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[1]~11_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst2|digit2[1]~11_combout\);

-- Location: LCCOMB_X31_Y12_N16
\inst2|digit1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit1[1]~1_combout\ = !\inst2|minutes\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|minutes\(1),
	combout => \inst2|digit1[1]~1_combout\);

-- Location: LCCOMB_X31_Y12_N20
\inst2|digit2[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit2[2]~12_combout\ = !\inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst2|digit2[2]~12_combout\);

-- Location: LCCOMB_X31_Y12_N28
\inst2|digit1[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit1[3]~2_combout\ = !\inst2|minutes\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|minutes\(3),
	combout => \inst2|digit1[3]~2_combout\);

-- Location: LCCOMB_X30_Y10_N12
\inst2|milli[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|milli[0]~15_combout\ = !\inst2|milli\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|milli\(0),
	combout => \inst2|milli[0]~15_combout\);

-- Location: LCCOMB_X3_Y4_N0
\inst4|key[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[7]~0_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst4|key[7]~0_combout\);

-- Location: LCCOMB_X3_Y4_N14
\inst4|key[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[6]~1_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst4|key[6]~1_combout\);

-- Location: LCCOMB_X2_Y4_N16
\inst4|key[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[5]~2_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst4|key[5]~2_combout\);

-- Location: LCCOMB_X2_Y4_N14
\inst4|key[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[4]~3_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst4|key[4]~3_combout\);

-- Location: LCCOMB_X3_Y4_N22
\inst4|key[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[3]~4_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst4|key[3]~4_combout\);

-- Location: LCCOMB_X3_Y4_N28
\inst4|key[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[2]~5_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst4|key[2]~5_combout\);

-- Location: LCCOMB_X2_Y4_N0
\inst4|key[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[1]~6_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst4|key[1]~6_combout\);

-- Location: LCCOMB_X2_Y4_N30
\inst4|key[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[0]~7_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst4|key[0]~7_combout\);

-- Location: LCCOMB_X3_Y4_N4
\inst4|key[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[11]~8_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst4|key[11]~8_combout\);

-- Location: LCCOMB_X3_Y4_N30
\inst4|key[10]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[10]~9_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst4|key[10]~9_combout\);

-- Location: LCCOMB_X2_Y4_N4
\inst4|key[9]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[9]~10_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \inst4|key[9]~10_combout\);

-- Location: LCCOMB_X2_Y4_N2
\inst4|key[8]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|key[8]~11_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \inst4|key[8]~11_combout\);

-- Location: LCCOMB_X33_Y10_N18
\inst2|spflag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|spflag~0_combout\ = !\inst2|spflag~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|spflag~regout\,
	combout => \inst2|spflag~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[1]~I\ : cycloneii_io
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
	padio => ww_col(1),
	combout => \col~combout\(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[2]~I\ : cycloneii_io
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
	padio => ww_col(2),
	combout => \col~combout\(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\col[0]~I\ : cycloneii_io
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
	padio => ww_col(0),
	combout => \col~combout\(0));

-- Location: CLKCTRL_G7
\inst2|always0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|always0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|always0~clkctrl_outclk\);

-- Location: CLKCTRL_G0
\inst2|ptflag~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|ptflag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|ptflag~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y12_N30
\inst2|digit3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit3[0]~feeder_combout\ = \inst2|seconds\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|seconds\(0),
	combout => \inst2|digit3[0]~feeder_combout\);

-- Location: LCCOMB_X33_Y14_N16
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|tictoc\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|tictoc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X33_Y14_N18
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|tictoc\(1) & (!\inst3|Add0~1\)) # (!\inst3|tictoc\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|tictoc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X33_Y13_N18
\inst3|tictoc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|tictoc~0_combout\ = (\inst3|Add0~2_combout\ & !\inst3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~2_combout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|tictoc~0_combout\);

-- Location: LCFF_X33_Y13_N19
\inst3|tictoc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|tictoc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(1));

-- Location: LCCOMB_X33_Y14_N22
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|tictoc\(3) & (!\inst3|Add0~5\)) # (!\inst3|tictoc\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|tictoc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCFF_X33_Y14_N23
\inst3|tictoc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(3));

-- Location: LCCOMB_X33_Y14_N24
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|tictoc\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|tictoc\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|tictoc\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X33_Y14_N26
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|tictoc\(5) & (!\inst3|Add0~9\)) # (!\inst3|tictoc\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|tictoc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCFF_X33_Y14_N27
\inst3|tictoc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(5));

-- Location: LCCOMB_X33_Y14_N28
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|tictoc\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|tictoc\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|tictoc\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCFF_X33_Y14_N29
\inst3|tictoc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(6));

-- Location: LCCOMB_X33_Y14_N30
\inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|tictoc\(7) & (!\inst3|Add0~13\)) # (!\inst3|tictoc\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|tictoc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCFF_X33_Y14_N31
\inst3|tictoc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(7));

-- Location: LCCOMB_X33_Y13_N0
\inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|tictoc\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|tictoc\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|tictoc\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCFF_X33_Y13_N1
\inst3|tictoc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(8));

-- Location: LCCOMB_X33_Y13_N2
\inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|tictoc\(9) & (!\inst3|Add0~17\)) # (!\inst3|tictoc\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|tictoc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCFF_X33_Y13_N3
\inst3|tictoc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(9));

-- Location: LCCOMB_X33_Y13_N4
\inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|tictoc\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|tictoc\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|tictoc\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCFF_X33_Y13_N5
\inst3|tictoc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(10));

-- Location: LCCOMB_X33_Y13_N8
\inst3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|tictoc\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|tictoc\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|tictoc\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|tictoc\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCFF_X33_Y13_N9
\inst3|tictoc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(12));

-- Location: LCCOMB_X33_Y13_N12
\inst3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|tictoc\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|tictoc\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|tictoc\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCFF_X33_Y13_N15
\inst3|tictoc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(15));

-- Location: LCFF_X33_Y13_N13
\inst3|tictoc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(14));

-- Location: LCCOMB_X33_Y13_N28
\inst3|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (!\inst3|tictoc\(13) & (!\inst3|tictoc\(15) & (!\inst3|tictoc\(12) & !\inst3|tictoc\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(13),
	datab => \inst3|tictoc\(15),
	datac => \inst3|tictoc\(12),
	datad => \inst3|tictoc\(14),
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y13_N24
\inst3|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (!\inst3|tictoc\(11) & (!\inst3|tictoc\(9) & (!\inst3|tictoc\(10) & !\inst3|tictoc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(11),
	datab => \inst3|tictoc\(9),
	datac => \inst3|tictoc\(10),
	datad => \inst3|tictoc\(8),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCFF_X33_Y14_N25
\inst3|tictoc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(4));

-- Location: LCCOMB_X33_Y14_N14
\inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|tictoc\(4) & !\inst3|tictoc\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|tictoc\(4),
	datad => \inst3|tictoc\(5),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCFF_X33_Y14_N17
\inst3|tictoc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|tictoc\(0));

-- Location: LCCOMB_X33_Y14_N0
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|tictoc\(2) & (!\inst3|tictoc\(3) & (\inst3|tictoc\(0) & !\inst3|tictoc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(2),
	datab => \inst3|tictoc\(3),
	datac => \inst3|tictoc\(0),
	datad => \inst3|tictoc\(1),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y14_N12
\inst3|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|tictoc\(7) & (!\inst3|tictoc\(6) & (\inst3|Equal0~1_combout\ & \inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(7),
	datab => \inst3|tictoc\(6),
	datac => \inst3|Equal0~1_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y13_N26
\inst3|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (!\inst3|tictoc\(16) & (\inst3|Equal0~4_combout\ & (\inst3|Equal0~3_combout\ & \inst3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|tictoc\(16),
	datab => \inst3|Equal0~4_combout\,
	datac => \inst3|Equal0~3_combout\,
	datad => \inst3|Equal0~2_combout\,
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X33_Y13_N22
\inst3|led_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|led_clk~0_combout\ = \inst3|led_clk~regout\ $ (\inst3|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|led_clk~regout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|led_clk~0_combout\);

-- Location: LCFF_X33_Y13_N23
\inst3|led_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst3|led_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|led_clk~regout\);

-- Location: CLKCTRL_G5
\inst3|led_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|led_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|led_clk~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y12_N0
\inst3|cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~2_combout\ = \inst3|cnt\(1) $ (\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt[1]~2_combout\);

-- Location: LCFF_X32_Y12_N1
\inst3|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(1));

-- Location: LCCOMB_X32_Y12_N26
\inst3|cnt[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[2]~3_combout\ = \inst3|cnt\(2) $ (((\inst3|cnt\(1) & \inst3|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(1),
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt[2]~3_combout\);

-- Location: LCFF_X32_Y12_N27
\inst3|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(2));

-- Location: LCCOMB_X32_Y12_N4
\inst3|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~1_combout\ = (!\inst3|cnt\(0) & (((\inst3|cnt\(2)) # (\inst3|cnt\(1))) # (!\inst3|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datab => \inst3|cnt\(2),
	datac => \inst3|cnt\(0),
	datad => \inst3|cnt\(1),
	combout => \inst3|cnt~1_combout\);

-- Location: LCFF_X32_Y12_N5
\inst3|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(0));

-- Location: LCCOMB_X32_Y12_N18
\inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (!\inst3|cnt\(1) & (!\inst3|cnt\(0) & !\inst3|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst3|cnt\(0),
	datad => \inst3|cnt\(2),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X32_Y12_N22
\inst3|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~0_combout\ = (\inst3|cnt\(2) & (\inst3|cnt\(3) $ (((\inst3|cnt\(1) & \inst3|cnt\(0)))))) # (!\inst3|cnt\(2) & (\inst3|cnt\(3) & ((\inst3|cnt\(1)) # (\inst3|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(2),
	datab => \inst3|cnt\(1),
	datac => \inst3|cnt\(3),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt~0_combout\);

-- Location: LCFF_X32_Y12_N23
\inst3|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(3));

-- Location: LCCOMB_X32_Y12_N10
\inst3|seg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|seg~0_combout\ = (\inst3|seg\(6)) # ((\inst3|Equal1~0_combout\ & \inst3|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seg\(6),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|cnt\(3),
	combout => \inst3|seg~0_combout\);

-- Location: LCFF_X32_Y12_N11
\inst3|seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seg\(7));

-- Location: LCFF_X32_Y12_N19
\inst3|segout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	sdata => \inst3|seg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|segout~regout\);

-- Location: LCCOMB_X32_Y12_N6
\inst3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (!\inst3|cnt\(0) & (!\inst3|cnt\(3) & (!\inst3|cnt\(2) & !\inst3|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(0),
	datab => \inst3|cnt\(3),
	datac => \inst3|cnt\(2),
	datad => \inst3|cnt\(1),
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X33_Y12_N14
\inst3|digout~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~11_combout\ = (!\inst3|digbuff\(3) & (!\inst3|digbuff\(2) & (!\inst3|digbuff\(1) & !\inst3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(3),
	datab => \inst3|digbuff\(2),
	datac => \inst3|digbuff\(1),
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|digout~11_combout\);

-- Location: LCCOMB_X33_Y12_N0
\inst3|digout[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout[3]~6_combout\ = (\inst3|Equal1~0_combout\ & ((!\inst3|cnt\(3)) # (!\inst3|digout[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digout[3]~5_combout\,
	datac => \inst3|cnt\(3),
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|digout[3]~6_combout\);

-- Location: LCFF_X33_Y12_N15
\inst3|digout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|digout~11_combout\,
	ena => \inst3|digout[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digout\(1));

-- Location: LCFF_X32_Y12_N29
\inst3|digbuff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	sdata => \inst3|digout\(1),
	sload => VCC,
	ena => \inst3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digbuff\(1));

-- Location: LCCOMB_X33_Y12_N8
\inst3|digout~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~12_combout\ = (!\inst3|digbuff\(3) & (!\inst3|digbuff\(2) & (\inst3|digbuff\(1) & !\inst3|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(3),
	datab => \inst3|digbuff\(2),
	datac => \inst3|digbuff\(1),
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|digout~12_combout\);

-- Location: LCFF_X33_Y12_N9
\inst3|digout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|digout~12_combout\,
	ena => \inst3|digout[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digout\(2));

-- Location: LCFF_X32_Y12_N25
\inst3|digbuff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	sdata => \inst3|digout\(2),
	sload => VCC,
	ena => \inst3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digbuff\(2));

-- Location: LCFF_X32_Y12_N21
\inst3|digbuff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	sdata => \inst3|digout\(3),
	sload => VCC,
	ena => \inst3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digbuff\(3));

-- Location: LCCOMB_X33_Y12_N12
\inst3|digout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~4_combout\ = (\inst3|digbuff\(2) & (!\inst3|digbuff\(3) & !\inst3|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digbuff\(2),
	datac => \inst3|digbuff\(3),
	datad => \inst3|Equal2~0_combout\,
	combout => \inst3|digout~4_combout\);

-- Location: LCFF_X33_Y12_N13
\inst3|digout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|digout~4_combout\,
	ena => \inst3|digout[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digout\(3));

-- Location: LCFF_X32_Y12_N17
\inst3|digbuff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	sdata => \inst3|digout\(0),
	sload => VCC,
	ena => \inst3|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digbuff\(0));

-- Location: LCCOMB_X32_Y12_N16
\inst3|digout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~8_combout\ = (\inst3|digbuff\(2) & (!\inst3|digbuff\(3) & ((\inst3|digbuff\(1)) # (!\inst3|digbuff\(0))))) # (!\inst3|digbuff\(2) & ((\inst3|digbuff\(0) & ((!\inst3|digbuff\(1)))) # (!\inst3|digbuff\(0) & (!\inst3|digbuff\(3) & 
-- \inst3|digbuff\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digbuff\(3),
	datab => \inst3|digbuff\(2),
	datac => \inst3|digbuff\(0),
	datad => \inst3|digbuff\(1),
	combout => \inst3|digout~8_combout\);

-- Location: LCCOMB_X32_Y12_N20
\inst3|digout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~9_combout\ = (\inst3|digout\(0) & (\inst3|digbuff\(3) & \inst3|digout~8_combout\)) # (!\inst3|digout\(0) & ((\inst3|digbuff\(3)) # (\inst3|digout~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digout\(0),
	datac => \inst3|digbuff\(3),
	datad => \inst3|digout~8_combout\,
	combout => \inst3|digout~9_combout\);

-- Location: LCCOMB_X32_Y12_N8
\inst3|digout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digout~10_combout\ = (\inst3|Equal1~0_combout\ & (((!\inst3|digout~9_combout\)) # (!\inst3|cnt\(3)))) # (!\inst3|Equal1~0_combout\ & (((\inst3|digout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|digout\(0),
	datad => \inst3|digout~9_combout\,
	combout => \inst3|digout~10_combout\);

-- Location: LCFF_X32_Y12_N9
\inst3|digout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|led_clk~clkctrl_outclk\,
	datain => \inst3|digout~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digout\(0));

-- Location: LCCOMB_X33_Y12_N30
\inst3|led_clk_x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|led_clk_x~0_combout\ = (\inst3|led_clk~regout\) # ((\inst3|digout\(1)) # ((\inst3|digout\(2)) # (!\inst3|digout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|led_clk~regout\,
	datab => \inst3|digout\(1),
	datac => \inst3|digout\(0),
	datad => \inst3|digout\(2),
	combout => \inst3|led_clk_x~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst3|led_clk_x~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|led_clk_x~1_combout\ = (\inst3|digout\(3)) # (\inst3|led_clk_x~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digout\(3),
	datad => \inst3|led_clk_x~0_combout\,
	combout => \inst3|led_clk_x~1_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X4_Y4_N18
\inst4|row[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|row[0]~1_combout\ = !\inst4|row\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|row\(3),
	combout => \inst4|row[0]~1_combout\);

-- Location: LCCOMB_X5_Y5_N16
\inst|cnt[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[0]~33_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|cnt[0]~34\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|cnt[0]~33_combout\,
	cout => \inst|cnt[0]~34\);

-- Location: LCCOMB_X5_Y5_N18
\inst|cnt[1]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~35_combout\ = (\inst|cnt\(1) & (!\inst|cnt[0]~34\)) # (!\inst|cnt\(1) & ((\inst|cnt[0]~34\) # (GND)))
-- \inst|cnt[1]~36\ = CARRY((!\inst|cnt[0]~34\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|cnt[0]~34\,
	combout => \inst|cnt[1]~35_combout\,
	cout => \inst|cnt[1]~36\);

-- Location: LCFF_X5_Y5_N19
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[1]~35_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X5_Y5_N22
\inst|cnt[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[3]~39_combout\ = (\inst|cnt\(3) & (!\inst|cnt[2]~38\)) # (!\inst|cnt\(3) & ((\inst|cnt[2]~38\) # (GND)))
-- \inst|cnt[3]~40\ = CARRY((!\inst|cnt[2]~38\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|cnt[2]~38\,
	combout => \inst|cnt[3]~39_combout\,
	cout => \inst|cnt[3]~40\);

-- Location: LCFF_X5_Y5_N23
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[3]~39_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCCOMB_X5_Y5_N26
\inst|cnt[5]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[5]~43_combout\ = (\inst|cnt\(5) & (!\inst|cnt[4]~42\)) # (!\inst|cnt\(5) & ((\inst|cnt[4]~42\) # (GND)))
-- \inst|cnt[5]~44\ = CARRY((!\inst|cnt[4]~42\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|cnt[4]~42\,
	combout => \inst|cnt[5]~43_combout\,
	cout => \inst|cnt[5]~44\);

-- Location: LCFF_X5_Y5_N27
\inst|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[5]~43_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(5));

-- Location: LCCOMB_X5_Y5_N28
\inst|cnt[6]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[6]~45_combout\ = (\inst|cnt\(6) & (\inst|cnt[5]~44\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|cnt[5]~44\ & VCC))
-- \inst|cnt[6]~46\ = CARRY((\inst|cnt\(6) & !\inst|cnt[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|cnt[5]~44\,
	combout => \inst|cnt[6]~45_combout\,
	cout => \inst|cnt[6]~46\);

-- Location: LCFF_X5_Y5_N29
\inst|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[6]~45_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(6));

-- Location: LCCOMB_X5_Y5_N30
\inst|cnt[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[7]~47_combout\ = (\inst|cnt\(7) & (!\inst|cnt[6]~46\)) # (!\inst|cnt\(7) & ((\inst|cnt[6]~46\) # (GND)))
-- \inst|cnt[7]~48\ = CARRY((!\inst|cnt[6]~46\) # (!\inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datad => VCC,
	cin => \inst|cnt[6]~46\,
	combout => \inst|cnt[7]~47_combout\,
	cout => \inst|cnt[7]~48\);

-- Location: LCFF_X5_Y5_N31
\inst|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[7]~47_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(7));

-- Location: LCCOMB_X5_Y4_N0
\inst|cnt[8]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[8]~49_combout\ = (\inst|cnt\(8) & (\inst|cnt[7]~48\ $ (GND))) # (!\inst|cnt\(8) & (!\inst|cnt[7]~48\ & VCC))
-- \inst|cnt[8]~50\ = CARRY((\inst|cnt\(8) & !\inst|cnt[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(8),
	datad => VCC,
	cin => \inst|cnt[7]~48\,
	combout => \inst|cnt[8]~49_combout\,
	cout => \inst|cnt[8]~50\);

-- Location: LCFF_X5_Y4_N1
\inst|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[8]~49_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(8));

-- Location: LCCOMB_X5_Y4_N2
\inst|cnt[9]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[9]~51_combout\ = (\inst|cnt\(9) & (!\inst|cnt[8]~50\)) # (!\inst|cnt\(9) & ((\inst|cnt[8]~50\) # (GND)))
-- \inst|cnt[9]~52\ = CARRY((!\inst|cnt[8]~50\) # (!\inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(9),
	datad => VCC,
	cin => \inst|cnt[8]~50\,
	combout => \inst|cnt[9]~51_combout\,
	cout => \inst|cnt[9]~52\);

-- Location: LCFF_X5_Y4_N3
\inst|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[9]~51_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(9));

-- Location: LCCOMB_X5_Y4_N4
\inst|cnt[10]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[10]~53_combout\ = (\inst|cnt\(10) & (\inst|cnt[9]~52\ $ (GND))) # (!\inst|cnt\(10) & (!\inst|cnt[9]~52\ & VCC))
-- \inst|cnt[10]~54\ = CARRY((\inst|cnt\(10) & !\inst|cnt[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(10),
	datad => VCC,
	cin => \inst|cnt[9]~52\,
	combout => \inst|cnt[10]~53_combout\,
	cout => \inst|cnt[10]~54\);

-- Location: LCFF_X5_Y4_N5
\inst|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[10]~53_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(10));

-- Location: LCCOMB_X5_Y4_N6
\inst|cnt[11]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[11]~55_combout\ = (\inst|cnt\(11) & (!\inst|cnt[10]~54\)) # (!\inst|cnt\(11) & ((\inst|cnt[10]~54\) # (GND)))
-- \inst|cnt[11]~56\ = CARRY((!\inst|cnt[10]~54\) # (!\inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(11),
	datad => VCC,
	cin => \inst|cnt[10]~54\,
	combout => \inst|cnt[11]~55_combout\,
	cout => \inst|cnt[11]~56\);

-- Location: LCCOMB_X5_Y4_N8
\inst|cnt[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~57_combout\ = (\inst|cnt\(12) & (\inst|cnt[11]~56\ $ (GND))) # (!\inst|cnt\(12) & (!\inst|cnt[11]~56\ & VCC))
-- \inst|cnt[12]~58\ = CARRY((\inst|cnt\(12) & !\inst|cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|cnt[11]~56\,
	combout => \inst|cnt[12]~57_combout\,
	cout => \inst|cnt[12]~58\);

-- Location: LCFF_X5_Y4_N9
\inst|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[12]~57_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(12));

-- Location: LCCOMB_X5_Y4_N12
\inst|cnt[14]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[14]~61_combout\ = (\inst|cnt\(14) & (\inst|cnt[13]~60\ $ (GND))) # (!\inst|cnt\(14) & (!\inst|cnt[13]~60\ & VCC))
-- \inst|cnt[14]~62\ = CARRY((\inst|cnt\(14) & !\inst|cnt[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(14),
	datad => VCC,
	cin => \inst|cnt[13]~60\,
	combout => \inst|cnt[14]~61_combout\,
	cout => \inst|cnt[14]~62\);

-- Location: LCCOMB_X5_Y4_N14
\inst|cnt[15]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[15]~63_combout\ = (\inst|cnt\(15) & (!\inst|cnt[14]~62\)) # (!\inst|cnt\(15) & ((\inst|cnt[14]~62\) # (GND)))
-- \inst|cnt[15]~64\ = CARRY((!\inst|cnt[14]~62\) # (!\inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(15),
	datad => VCC,
	cin => \inst|cnt[14]~62\,
	combout => \inst|cnt[15]~63_combout\,
	cout => \inst|cnt[15]~64\);

-- Location: LCFF_X5_Y4_N15
\inst|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[15]~63_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(15));

-- Location: LCCOMB_X5_Y4_N16
\inst|cnt[16]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[16]~65_combout\ = (\inst|cnt\(16) & (\inst|cnt[15]~64\ $ (GND))) # (!\inst|cnt\(16) & (!\inst|cnt[15]~64\ & VCC))
-- \inst|cnt[16]~66\ = CARRY((\inst|cnt\(16) & !\inst|cnt[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(16),
	datad => VCC,
	cin => \inst|cnt[15]~64\,
	combout => \inst|cnt[16]~65_combout\,
	cout => \inst|cnt[16]~66\);

-- Location: LCCOMB_X5_Y4_N18
\inst|cnt[17]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[17]~67_combout\ = (\inst|cnt\(17) & (!\inst|cnt[16]~66\)) # (!\inst|cnt\(17) & ((\inst|cnt[16]~66\) # (GND)))
-- \inst|cnt[17]~68\ = CARRY((!\inst|cnt[16]~66\) # (!\inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(17),
	datad => VCC,
	cin => \inst|cnt[16]~66\,
	combout => \inst|cnt[17]~67_combout\,
	cout => \inst|cnt[17]~68\);

-- Location: LCFF_X5_Y4_N19
\inst|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[17]~67_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(17));

-- Location: LCCOMB_X5_Y4_N20
\inst|cnt[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[18]~69_combout\ = (\inst|cnt\(18) & (\inst|cnt[17]~68\ $ (GND))) # (!\inst|cnt\(18) & (!\inst|cnt[17]~68\ & VCC))
-- \inst|cnt[18]~70\ = CARRY((\inst|cnt\(18) & !\inst|cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(18),
	datad => VCC,
	cin => \inst|cnt[17]~68\,
	combout => \inst|cnt[18]~69_combout\,
	cout => \inst|cnt[18]~70\);

-- Location: LCFF_X5_Y4_N21
\inst|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[18]~69_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(18));

-- Location: LCFF_X5_Y4_N17
\inst|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[16]~65_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(16));

-- Location: LCCOMB_X5_Y4_N22
\inst|cnt[19]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[19]~71_combout\ = (\inst|cnt\(19) & (!\inst|cnt[18]~70\)) # (!\inst|cnt\(19) & ((\inst|cnt[18]~70\) # (GND)))
-- \inst|cnt[19]~72\ = CARRY((!\inst|cnt[18]~70\) # (!\inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(19),
	datad => VCC,
	cin => \inst|cnt[18]~70\,
	combout => \inst|cnt[19]~71_combout\,
	cout => \inst|cnt[19]~72\);

-- Location: LCFF_X5_Y4_N23
\inst|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[19]~71_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(19));

-- Location: LCCOMB_X5_Y4_N26
\inst|cnt[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[21]~75_combout\ = (\inst|cnt\(21) & (!\inst|cnt[20]~74\)) # (!\inst|cnt\(21) & ((\inst|cnt[20]~74\) # (GND)))
-- \inst|cnt[21]~76\ = CARRY((!\inst|cnt[20]~74\) # (!\inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(21),
	datad => VCC,
	cin => \inst|cnt[20]~74\,
	combout => \inst|cnt[21]~75_combout\,
	cout => \inst|cnt[21]~76\);

-- Location: LCFF_X4_Y5_N29
\inst|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[21]~75_combout\,
	sclr => \inst|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(21));

-- Location: LCCOMB_X5_Y4_N28
\inst|cnt[22]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[22]~77_combout\ = (\inst|cnt\(22) & (\inst|cnt[21]~76\ $ (GND))) # (!\inst|cnt\(22) & (!\inst|cnt[21]~76\ & VCC))
-- \inst|cnt[22]~78\ = CARRY((\inst|cnt\(22) & !\inst|cnt[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(22),
	datad => VCC,
	cin => \inst|cnt[21]~76\,
	combout => \inst|cnt[22]~77_combout\,
	cout => \inst|cnt[22]~78\);

-- Location: LCFF_X4_Y5_N23
\inst|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[22]~77_combout\,
	sclr => \inst|LessThan0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(22));

-- Location: LCCOMB_X4_Y5_N24
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|cnt\(21) & !\inst|cnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(21),
	datad => \inst|cnt\(22),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X5_Y5_N4
\inst|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~10_combout\ = (!\inst|cnt\(17) & (!\inst|cnt\(18) & (!\inst|cnt\(16) & \inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datab => \inst|cnt\(18),
	datac => \inst|cnt\(16),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~10_combout\);

-- Location: LCCOMB_X5_Y4_N30
\inst|cnt[23]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[23]~79_combout\ = (\inst|cnt\(23) & (!\inst|cnt[22]~78\)) # (!\inst|cnt\(23) & ((\inst|cnt[22]~78\) # (GND)))
-- \inst|cnt[23]~80\ = CARRY((!\inst|cnt[22]~78\) # (!\inst|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(23),
	datad => VCC,
	cin => \inst|cnt[22]~78\,
	combout => \inst|cnt[23]~79_combout\,
	cout => \inst|cnt[23]~80\);

-- Location: LCFF_X5_Y4_N31
\inst|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[23]~79_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(23));

-- Location: LCCOMB_X5_Y3_N0
\inst|cnt[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[24]~81_combout\ = (\inst|cnt\(24) & (\inst|cnt[23]~80\ $ (GND))) # (!\inst|cnt\(24) & (!\inst|cnt[23]~80\ & VCC))
-- \inst|cnt[24]~82\ = CARRY((\inst|cnt\(24) & !\inst|cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(24),
	datad => VCC,
	cin => \inst|cnt[23]~80\,
	combout => \inst|cnt[24]~81_combout\,
	cout => \inst|cnt[24]~82\);

-- Location: LCFF_X5_Y3_N1
\inst|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[24]~81_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(24));

-- Location: LCCOMB_X5_Y3_N2
\inst|cnt[25]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[25]~83_combout\ = (\inst|cnt\(25) & (!\inst|cnt[24]~82\)) # (!\inst|cnt\(25) & ((\inst|cnt[24]~82\) # (GND)))
-- \inst|cnt[25]~84\ = CARRY((!\inst|cnt[24]~82\) # (!\inst|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(25),
	datad => VCC,
	cin => \inst|cnt[24]~82\,
	combout => \inst|cnt[25]~83_combout\,
	cout => \inst|cnt[25]~84\);

-- Location: LCFF_X5_Y3_N3
\inst|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[25]~83_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(25));

-- Location: LCCOMB_X5_Y3_N4
\inst|cnt[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[26]~85_combout\ = (\inst|cnt\(26) & (\inst|cnt[25]~84\ $ (GND))) # (!\inst|cnt\(26) & (!\inst|cnt[25]~84\ & VCC))
-- \inst|cnt[26]~86\ = CARRY((\inst|cnt\(26) & !\inst|cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(26),
	datad => VCC,
	cin => \inst|cnt[25]~84\,
	combout => \inst|cnt[26]~85_combout\,
	cout => \inst|cnt[26]~86\);

-- Location: LCFF_X5_Y3_N5
\inst|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[26]~85_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(26));

-- Location: LCCOMB_X5_Y3_N8
\inst|cnt[28]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[28]~89_combout\ = (\inst|cnt\(28) & (\inst|cnt[27]~88\ $ (GND))) # (!\inst|cnt\(28) & (!\inst|cnt[27]~88\ & VCC))
-- \inst|cnt[28]~90\ = CARRY((\inst|cnt\(28) & !\inst|cnt[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(28),
	datad => VCC,
	cin => \inst|cnt[27]~88\,
	combout => \inst|cnt[28]~89_combout\,
	cout => \inst|cnt[28]~90\);

-- Location: LCFF_X5_Y3_N9
\inst|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[28]~89_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(28));

-- Location: LCCOMB_X5_Y3_N10
\inst|cnt[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[29]~91_combout\ = (\inst|cnt\(29) & (!\inst|cnt[28]~90\)) # (!\inst|cnt\(29) & ((\inst|cnt[28]~90\) # (GND)))
-- \inst|cnt[29]~92\ = CARRY((!\inst|cnt[28]~90\) # (!\inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(29),
	datad => VCC,
	cin => \inst|cnt[28]~90\,
	combout => \inst|cnt[29]~91_combout\,
	cout => \inst|cnt[29]~92\);

-- Location: LCFF_X5_Y3_N15
\inst|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[31]~95_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(31));

-- Location: LCFF_X5_Y3_N11
\inst|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[29]~91_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(29));

-- Location: LCCOMB_X5_Y3_N20
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|cnt\(30) & (!\inst|cnt\(28) & (!\inst|cnt\(31) & !\inst|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(30),
	datab => \inst|cnt\(28),
	datac => \inst|cnt\(31),
	datad => \inst|cnt\(29),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X5_Y3_N22
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(27) & (!\inst|cnt\(25) & (!\inst|cnt\(26) & !\inst|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(27),
	datab => \inst|cnt\(25),
	datac => \inst|cnt\(26),
	datad => \inst|cnt\(24),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y3_N18
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|cnt\(32) & (\inst|LessThan0~1_combout\ & \inst|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(32),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCFF_X5_Y4_N13
\inst|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[14]~61_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(14));

-- Location: LCFF_X5_Y4_N7
\inst|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[11]~55_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(11));

-- Location: LCFF_X5_Y5_N17
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[0]~33_combout\,
	sclr => \inst|LessThan0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCCOMB_X5_Y5_N6
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (((!\inst|cnt\(1)) # (!\inst|cnt\(0))) # (!\inst|cnt\(3))) # (!\inst|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(3),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(1),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X5_Y5_N12
\inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|cnt\(4) & (\inst|cnt\(6) & (\inst|cnt\(5) & !\inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datab => \inst|cnt\(6),
	datac => \inst|cnt\(5),
	datad => \inst|LessThan0~5_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X5_Y5_N2
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|cnt\(10) & ((\inst|cnt\(8)) # ((\inst|cnt\(7)) # (\inst|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(8),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(10),
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X5_Y5_N0
\inst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = ((!\inst|cnt\(11) & ((!\inst|LessThan0~7_combout\) # (!\inst|cnt\(9))))) # (!\inst|cnt\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datab => \inst|cnt\(11),
	datac => \inst|cnt\(9),
	datad => \inst|LessThan0~7_combout\,
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X5_Y5_N10
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = ((!\inst|cnt\(13) & (!\inst|cnt\(14) & \inst|LessThan0~8_combout\))) # (!\inst|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datab => \inst|cnt\(15),
	datac => \inst|cnt\(14),
	datad => \inst|LessThan0~8_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X5_Y5_N14
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_combout\ = ((!\inst|LessThan0~4_combout\ & ((!\inst|LessThan0~9_combout\) # (!\inst|LessThan0~10_combout\)))) # (!\inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~4_combout\,
	datab => \inst|LessThan0~10_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|LessThan0~11_combout\);

-- Location: LCCOMB_X5_Y5_N8
\inst|clk100ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk100ms~0_combout\ = \inst|LessThan0~11_combout\ $ (\inst|clk100ms~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~11_combout\,
	datac => \inst|clk100ms~regout\,
	combout => \inst|clk100ms~0_combout\);

-- Location: LCFF_X5_Y5_N9
\inst|clk100ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|clk100ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk100ms~regout\);

-- Location: LCFF_X4_Y4_N19
\inst4|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|row[0]~1_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|row\(0));

-- Location: LCCOMB_X4_Y4_N20
\inst4|row[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|row[1]~0_combout\ = !\inst4|row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|row\(0),
	combout => \inst4|row[1]~0_combout\);

-- Location: LCFF_X4_Y4_N21
\inst4|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|row[1]~0_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|row\(1));

-- Location: LCFF_X4_Y4_N23
\inst4|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst4|row\(1),
	sload => VCC,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|row\(2));

-- Location: LCCOMB_X4_Y4_N28
\inst4|row[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|row[3]~feeder_combout\ = \inst4|row\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|row\(2),
	combout => \inst4|row[3]~feeder_combout\);

-- Location: LCFF_X4_Y4_N29
\inst4|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|row[3]~feeder_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|row\(3));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|segout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segout);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|ALT_INV_led_clk_x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_clk_x);

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|digout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(3));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|digout\(2),
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
	datain => \inst3|digout\(1),
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
	datain => \inst3|ALT_INV_digout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[3]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(3));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[2]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[1]~I\ : cycloneii_io
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
	datain => \inst4|ALT_INV_row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\row[0]~I\ : cycloneii_io
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
	datain => \inst4|row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(0));
END structure;


