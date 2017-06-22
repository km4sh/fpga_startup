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

-- DATE "05/18/2017 15:18:58"

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

ENTITY 	realclock IS
    PORT (
	led_rst : OUT std_logic;
	clk50m : IN std_logic;
	col : IN std_logic_vector(2 DOWNTO 0);
	segout : OUT std_logic;
	led_clk_x : OUT std_logic;
	digout : OUT std_logic_vector(3 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0)
	);
END realclock;

-- Design Ports Information
-- led_rst	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- clk50m	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF realclock IS
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
SIGNAL ww_clk50m : std_logic;
SIGNAL ww_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_segout : std_logic;
SIGNAL ww_led_clk_x : std_logic;
SIGNAL ww_digout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|led_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Selector3~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ptflag~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|WideNor0~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50m~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst6|cnt25[3]~12_combout\ : std_logic;
SIGNAL \inst6|cnt25[4]~15\ : std_logic;
SIGNAL \inst6|cnt25[5]~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Add10~6_combout\ : std_logic;
SIGNAL \inst3|Add5~6_combout\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst5|digout~7_combout\ : std_logic;
SIGNAL \inst5|digout~9_combout\ : std_logic;
SIGNAL \inst3|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~6_combout\ : std_logic;
SIGNAL \inst5|cnt~0_combout\ : std_logic;
SIGNAL \inst2|Equal4~0_combout\ : std_logic;
SIGNAL \inst5|WideOr1~0_combout\ : std_logic;
SIGNAL \inst5|seg~5_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ : std_logic;
SIGNAL \inst5|WideOr2~0_combout\ : std_logic;
SIGNAL \inst5|seg~6_combout\ : std_logic;
SIGNAL \inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|Add4~2_combout\ : std_logic;
SIGNAL \inst3|Add2~1_combout\ : std_logic;
SIGNAL \inst3|minutes[2]~13_combout\ : std_logic;
SIGNAL \inst5|WideOr3~0_combout\ : std_logic;
SIGNAL \inst5|seg~7_combout\ : std_logic;
SIGNAL \inst2|Equal3~0_combout\ : std_logic;
SIGNAL \inst2|Equal6~0_combout\ : std_logic;
SIGNAL \inst2|Equal6~1_combout\ : std_logic;
SIGNAL \inst2|WideNor0~2_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst5|WideOr4~0_combout\ : std_logic;
SIGNAL \inst5|seg~8_combout\ : std_logic;
SIGNAL \inst5|WideOr5~0_combout\ : std_logic;
SIGNAL \inst5|seg~9_combout\ : std_logic;
SIGNAL \inst5|WideOr6~0_combout\ : std_logic;
SIGNAL \inst5|seg~10_combout\ : std_logic;
SIGNAL \inst5|seg~11_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\ : std_logic;
SIGNAL \clk50m~combout\ : std_logic;
SIGNAL \inst3|ptflag~clkctrl_outclk\ : std_logic;
SIGNAL \clk50m~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|tictoc~0_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~5_combout\ : std_logic;
SIGNAL \inst5|led_clk~0_combout\ : std_logic;
SIGNAL \inst5|led_clk~regout\ : std_logic;
SIGNAL \inst5|led_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|cnt~0_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|cnt~1_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|cnt~2_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|cnt~3_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|cnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|cnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|cnt~5_combout\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Equal1~5_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|cnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|cnt~9_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|cnt~10_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|cnt~11_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|Equal1~7_combout\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|cnt~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~3_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~4_combout\ : std_logic;
SIGNAL \inst3|Equal1~8_combout\ : std_logic;
SIGNAL \inst3|ptflag~0_combout\ : std_logic;
SIGNAL \inst3|ptflag~regout\ : std_logic;
SIGNAL \inst|key[3]~11_combout\ : std_logic;
SIGNAL \inst|row[0]~1_combout\ : std_logic;
SIGNAL \inst6|cnt25[0]~6_combout\ : std_logic;
SIGNAL \inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|cnt25[0]~7\ : std_logic;
SIGNAL \inst6|cnt25[1]~8_combout\ : std_logic;
SIGNAL \inst6|cnt25[1]~9\ : std_logic;
SIGNAL \inst6|cnt25[2]~10_combout\ : std_logic;
SIGNAL \inst6|cnt25[2]~11\ : std_logic;
SIGNAL \inst6|cnt25[3]~13\ : std_logic;
SIGNAL \inst6|cnt25[4]~14_combout\ : std_logic;
SIGNAL \inst6|clk25ms~0_combout\ : std_logic;
SIGNAL \inst6|clk25ms~regout\ : std_logic;
SIGNAL \inst|row[1]~0_combout\ : std_logic;
SIGNAL \inst|row[2]~feeder_combout\ : std_logic;
SIGNAL \inst|row[3]~feeder_combout\ : std_logic;
SIGNAL \inst|key[0]~6_combout\ : std_logic;
SIGNAL \inst|key[4]~3_combout\ : std_logic;
SIGNAL \inst|key[6]~2_combout\ : std_logic;
SIGNAL \inst|key[5]~0_combout\ : std_logic;
SIGNAL \inst2|Equal9~0_combout\ : std_logic;
SIGNAL \inst|key[10]~4_combout\ : std_logic;
SIGNAL \inst|key[9]~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal12~0_combout\ : std_logic;
SIGNAL \inst|key[11]~8_combout\ : std_logic;
SIGNAL \inst2|Equal12~1_combout\ : std_logic;
SIGNAL \inst2|Selector1~2_combout\ : std_logic;
SIGNAL \inst2|Selector0~0_combout\ : std_logic;
SIGNAL \inst2|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|Equal4~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~1_combout\ : std_logic;
SIGNAL \inst2|Selector3~1clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|blink~regout\ : std_logic;
SIGNAL \inst5|always1~1_combout\ : std_logic;
SIGNAL \inst3|Add10~0_combout\ : std_logic;
SIGNAL \inst|key[2]~9_combout\ : std_logic;
SIGNAL \inst|key[1]~10_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst|key[8]~7_combout\ : std_logic;
SIGNAL \inst2|Equal11~0_combout\ : std_logic;
SIGNAL \inst2|Equal10~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal2~0_combout\ : std_logic;
SIGNAL \inst2|Equal2~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal5~0_combout\ : std_logic;
SIGNAL \inst|key[7]~1_combout\ : std_logic;
SIGNAL \inst2|WideOr11~0_combout\ : std_logic;
SIGNAL \inst2|WideOr11~combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|WideNor0~6_combout\ : std_logic;
SIGNAL \inst2|WideNor0~6clkctrl_outclk\ : std_logic;
SIGNAL \inst3|hours~0_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Add1~5_combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9_combout\ : std_logic;
SIGNAL \inst3|Add1~11_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|Add1~10\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~15_combout\ : std_logic;
SIGNAL \inst3|Add1~17_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|minutes~14_combout\ : std_logic;
SIGNAL \inst2|WideNor0~3_combout\ : std_logic;
SIGNAL \inst2|WideOr7~1_combout\ : std_logic;
SIGNAL \inst2|WideOr7~2_combout\ : std_logic;
SIGNAL \inst2|Equal9~1_combout\ : std_logic;
SIGNAL \inst2|Equal8~0_combout\ : std_logic;
SIGNAL \inst2|Equal5~1_combout\ : std_logic;
SIGNAL \inst2|WideOr7~0_combout\ : std_logic;
SIGNAL \inst2|WideNor0~4_combout\ : std_logic;
SIGNAL \inst2|WideOr2~combout\ : std_logic;
SIGNAL \inst2|flag~combout\ : std_logic;
SIGNAL \inst3|Add9~7\ : std_logic;
SIGNAL \inst3|Add9~9\ : std_logic;
SIGNAL \inst3|Add9~10_combout\ : std_logic;
SIGNAL \inst2|WideOr7~combout\ : std_logic;
SIGNAL \inst2|WideNor0~5_combout\ : std_logic;
SIGNAL \inst3|Add4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~combout\ : std_logic;
SIGNAL \inst3|Add4~1_combout\ : std_logic;
SIGNAL \inst3|Add9~8_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ : std_logic;
SIGNAL \inst3|Add9~0_combout\ : std_logic;
SIGNAL \inst3|minutes~0_combout\ : std_logic;
SIGNAL \inst3|minutes~1_combout\ : std_logic;
SIGNAL \inst3|minutes[5]~2_combout\ : std_logic;
SIGNAL \inst3|minutes[5]~3_combout\ : std_logic;
SIGNAL \inst3|Add9~1\ : std_logic;
SIGNAL \inst3|Add9~2_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst3|Add5~0_combout\ : std_logic;
SIGNAL \inst3|Add3~0_combout\ : std_logic;
SIGNAL \inst3|minutes~16_combout\ : std_logic;
SIGNAL \inst3|minutes~17_combout\ : std_logic;
SIGNAL \inst3|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ : std_logic;
SIGNAL \inst3|digit3[0]~2_cout\ : std_logic;
SIGNAL \inst3|digit3[0]~4_cout\ : std_logic;
SIGNAL \inst3|digit3[0]~6_cout\ : std_logic;
SIGNAL \inst3|digit3[0]~8_cout\ : std_logic;
SIGNAL \inst3|digit3[0]~9_combout\ : std_logic;
SIGNAL \inst3|digit3[2]~12_combout\ : std_logic;
SIGNAL \inst3|Add2~2_combout\ : std_logic;
SIGNAL \inst3|Add3~1\ : std_logic;
SIGNAL \inst3|Add3~3\ : std_logic;
SIGNAL \inst3|Add3~5\ : std_logic;
SIGNAL \inst3|Add3~6_combout\ : std_logic;
SIGNAL \inst3|minutes~7_combout\ : std_logic;
SIGNAL \inst3|minutes~8_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \inst3|Add5~1\ : std_logic;
SIGNAL \inst3|Add5~3\ : std_logic;
SIGNAL \inst3|Add5~5\ : std_logic;
SIGNAL \inst3|Add5~7\ : std_logic;
SIGNAL \inst3|Add5~8_combout\ : std_logic;
SIGNAL \inst3|digit3[1]~11_combout\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|Add3~7\ : std_logic;
SIGNAL \inst3|Add3~8_combout\ : std_logic;
SIGNAL \inst3|minutes~4_combout\ : std_logic;
SIGNAL \inst3|minutes~6_combout\ : std_logic;
SIGNAL \inst3|minutes~5_combout\ : std_logic;
SIGNAL \inst3|Add9~3\ : std_logic;
SIGNAL \inst3|Add9~4_combout\ : std_logic;
SIGNAL \inst3|Add5~2_combout\ : std_logic;
SIGNAL \inst3|Add3~2_combout\ : std_logic;
SIGNAL \inst3|minutes[2]~11_combout\ : std_logic;
SIGNAL \inst3|minutes[2]~12_combout\ : std_logic;
SIGNAL \inst3|minutes[2]~15_combout\ : std_logic;
SIGNAL \inst3|Add9~5\ : std_logic;
SIGNAL \inst3|Add9~6_combout\ : std_logic;
SIGNAL \inst3|Add5~4_combout\ : std_logic;
SIGNAL \inst3|Add3~4_combout\ : std_logic;
SIGNAL \inst3|minutes~9_combout\ : std_logic;
SIGNAL \inst3|minutes~10_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|hours[3]~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|hours[3]~2_combout\ : std_logic;
SIGNAL \inst3|Add10~1\ : std_logic;
SIGNAL \inst3|Add10~3\ : std_logic;
SIGNAL \inst3|Add10~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ : std_logic;
SIGNAL \inst3|digit1[0]~2_cout\ : std_logic;
SIGNAL \inst3|digit1[0]~4_cout\ : std_logic;
SIGNAL \inst3|digit1[0]~6_cout\ : std_logic;
SIGNAL \inst3|digit1[0]~8_cout\ : std_logic;
SIGNAL \inst3|digit1[0]~9_combout\ : std_logic;
SIGNAL \inst3|Add7~0_combout\ : std_logic;
SIGNAL \inst3|Add10~2_combout\ : std_logic;
SIGNAL \inst3|Add7~13_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|hours~3_combout\ : std_logic;
SIGNAL \inst3|digit1[2]~12_combout\ : std_logic;
SIGNAL \inst3|Add6~2_combout\ : std_logic;
SIGNAL \inst3|Add7~1\ : std_logic;
SIGNAL \inst3|Add7~3\ : std_logic;
SIGNAL \inst3|Add7~4_combout\ : std_logic;
SIGNAL \inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|Add10~5\ : std_logic;
SIGNAL \inst3|Add10~7\ : std_logic;
SIGNAL \inst3|Add10~8_combout\ : std_logic;
SIGNAL \inst3|Add6~1_combout\ : std_logic;
SIGNAL \inst3|Add7~5\ : std_logic;
SIGNAL \inst3|Add7~6_combout\ : std_logic;
SIGNAL \inst3|Add7~11_combout\ : std_logic;
SIGNAL \inst3|Add10~9\ : std_logic;
SIGNAL \inst3|Add10~10_combout\ : std_logic;
SIGNAL \inst3|Add6~0_combout\ : std_logic;
SIGNAL \inst3|Add7~7\ : std_logic;
SIGNAL \inst3|Add7~8_combout\ : std_logic;
SIGNAL \inst3|Add7~10_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|digit1[1]~11_combout\ : std_logic;
SIGNAL \inst3|Add7~2_combout\ : std_logic;
SIGNAL \inst3|Add7~12_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \inst5|cnt[1]~2_combout\ : std_logic;
SIGNAL \inst5|cnt[2]~3_combout\ : std_logic;
SIGNAL \inst5|cnt~1_combout\ : std_logic;
SIGNAL \inst5|Equal5~0_combout\ : std_logic;
SIGNAL \inst5|digout~11_combout\ : std_logic;
SIGNAL \inst5|Equal3~0_combout\ : std_logic;
SIGNAL \inst5|digout[1]~5_combout\ : std_logic;
SIGNAL \inst5|digout[1]~6_combout\ : std_logic;
SIGNAL \inst5|digout~12_combout\ : std_logic;
SIGNAL \inst5|digout~4_combout\ : std_logic;
SIGNAL \inst5|digit[3]~0_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst3|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~1_combout\ : std_logic;
SIGNAL \inst5|Equal3~1_combout\ : std_logic;
SIGNAL \inst5|digit[3]~1_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~1_combout\ : std_logic;
SIGNAL \inst3|digit2[0]~0_combout\ : std_logic;
SIGNAL \inst3|digit4[0]~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~0_combout\ : std_logic;
SIGNAL \inst5|Mux7~1_combout\ : std_logic;
SIGNAL \inst5|WideOr0~0_combout\ : std_logic;
SIGNAL \inst5|seg~0_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst3|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|seg~1_combout\ : std_logic;
SIGNAL \inst5|seg~2_combout\ : std_logic;
SIGNAL \inst5|seg~4_combout\ : std_logic;
SIGNAL \inst5|seg~3_combout\ : std_logic;
SIGNAL \inst5|always1~0_combout\ : std_logic;
SIGNAL \inst5|segout~0_combout\ : std_logic;
SIGNAL \inst5|segout~regout\ : std_logic;
SIGNAL \inst5|digout~8_combout\ : std_logic;
SIGNAL \inst5|digout~10_combout\ : std_logic;
SIGNAL \inst5|led_clk_x~0_combout\ : std_logic;
SIGNAL \inst5|led_clk_x~1_combout\ : std_logic;
SIGNAL \inst5|tictoc\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst5|seg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|digout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|digbuff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|seconds\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|minutes\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|hours\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|digit4\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|digit3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|digit2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|digit1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \col~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|key\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|row\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|pos\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|cnt25\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst3|ALT_INV_ptflag~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ALT_INV_row\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|ALT_INV_led_clk_x~1_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_digout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

led_rst <= ww_led_rst;
ww_clk50m <= clk50m;
ww_col <= col;
segout <= ww_segout;
led_clk_x <= ww_led_clk_x;
digout <= ww_digout;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|led_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst5|led_clk~regout\);

\inst2|Selector3~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|Selector3~1_combout\);

\inst3|ptflag~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|ptflag~regout\);

\inst2|WideNor0~6clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|WideNor0~6_combout\);

\clk50m~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk50m~combout\);
\inst3|ALT_INV_ptflag~clkctrl_outclk\ <= NOT \inst3|ptflag~clkctrl_outclk\;
\inst|ALT_INV_row\(0) <= NOT \inst|row\(0);
\inst|ALT_INV_row\(1) <= NOT \inst|row\(1);
\inst|ALT_INV_row\(2) <= NOT \inst|row\(2);
\inst|ALT_INV_row\(3) <= NOT \inst|row\(3);
\inst5|ALT_INV_led_clk_x~1_combout\ <= NOT \inst5|led_clk_x~1_combout\;
\inst5|ALT_INV_digout\(0) <= NOT \inst5|digout\(0);

-- Location: LCCOMB_X15_Y8_N6
\inst5|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|tictoc\(11) & (!\inst5|Add0~21\)) # (!\inst5|tictoc\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|tictoc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X15_Y8_N10
\inst5|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|tictoc\(13) & (!\inst5|Add0~25\)) # (!\inst5|tictoc\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|tictoc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X15_Y8_N14
\inst5|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|tictoc\(15) & (!\inst5|Add0~29\)) # (!\inst5|tictoc\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|tictoc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X15_Y8_N16
\inst5|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = \inst5|tictoc\(16) $ (!\inst5|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(16),
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\);

-- Location: LCFF_X10_Y3_N11
\inst6|cnt25[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[5]~16_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(5));

-- Location: LCFF_X10_Y3_N7
\inst6|cnt25[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[3]~12_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(3));

-- Location: LCCOMB_X14_Y9_N6
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = (\inst3|cnt\(1) & (\inst5|tictoc\(0) $ (VCC))) # (!\inst3|cnt\(1) & (\inst5|tictoc\(0) & VCC))
-- \inst3|Add0~1\ = CARRY((\inst3|cnt\(1) & \inst5|tictoc\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst5|tictoc\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X14_Y9_N20
\inst3|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|cnt\(8) & (!\inst3|Add0~13\)) # (!\inst3|cnt\(8) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(8),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X14_Y9_N24
\inst3|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|cnt\(10) & (!\inst3|Add0~17\)) # (!\inst3|cnt\(10) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(10),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X10_Y3_N6
\inst6|cnt25[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[3]~12_combout\ = (\inst6|cnt25\(3) & (!\inst6|cnt25[2]~11\)) # (!\inst6|cnt25\(3) & ((\inst6|cnt25[2]~11\) # (GND)))
-- \inst6|cnt25[3]~13\ = CARRY((!\inst6|cnt25[2]~11\) # (!\inst6|cnt25\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt25\(3),
	datad => VCC,
	cin => \inst6|cnt25[2]~11\,
	combout => \inst6|cnt25[3]~12_combout\,
	cout => \inst6|cnt25[3]~13\);

-- Location: LCCOMB_X10_Y3_N8
\inst6|cnt25[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[4]~14_combout\ = (\inst6|cnt25\(4) & (\inst6|cnt25[3]~13\ $ (GND))) # (!\inst6|cnt25\(4) & (!\inst6|cnt25[3]~13\ & VCC))
-- \inst6|cnt25[4]~15\ = CARRY((\inst6|cnt25\(4) & !\inst6|cnt25[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt25\(4),
	datad => VCC,
	cin => \inst6|cnt25[3]~13\,
	combout => \inst6|cnt25[4]~14_combout\,
	cout => \inst6|cnt25[4]~15\);

-- Location: LCCOMB_X10_Y3_N10
\inst6|cnt25[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[5]~16_combout\ = \inst6|cnt25[4]~15\ $ (\inst6|cnt25\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|cnt25\(5),
	cin => \inst6|cnt25[4]~15\,
	combout => \inst6|cnt25[5]~16_combout\);

-- Location: LCCOMB_X9_Y4_N14
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|hours\(5) & (\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|hours\(5) & 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|hours\(5) & !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(5),
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X8_Y4_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X8_Y4_N18
\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- (!\inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\)))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X13_Y6_N0
\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|minutes\(3) $ (GND)
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\inst3|minutes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(3),
	datad => VCC,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X13_Y6_N2
\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|minutes\(4) & (!\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst3|minutes\(4) & 
-- (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst3|minutes\(4) & !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(4),
	datad => VCC,
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X9_Y5_N26
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|hours\(4) & (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst3|hours\(4) & 
-- (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst3|hours\(4) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(4),
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X9_Y5_N28
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|hours\(5) & (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst3|hours\(5) & 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst3|hours\(5) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(5),
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X9_Y5_N0
\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X9_Y5_N2
\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X13_Y3_N20
\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|minutes\(3) $ (GND)
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(!\inst3|minutes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(3),
	datad => VCC,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X13_Y3_N24
\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|minutes\(5) & (!\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\inst3|minutes\(5) & 
-- (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst3|minutes\(5) & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(5),
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X14_Y3_N18
\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\)))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\) # (\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datad => VCC,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X14_Y3_N22
\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X10_Y4_N6
\inst3|Add10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~6_combout\ = (\inst3|hours\(3) & (!\inst3|Add10~5\)) # (!\inst3|hours\(3) & ((\inst3|Add10~5\) # (GND)))
-- \inst3|Add10~7\ = CARRY((!\inst3|Add10~5\) # (!\inst3|hours\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(3),
	datad => VCC,
	cin => \inst3|Add10~5\,
	combout => \inst3|Add10~6_combout\,
	cout => \inst3|Add10~7\);

-- Location: LCCOMB_X13_Y4_N6
\inst3|Add5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add5~6_combout\ = (\inst3|Add4~1_combout\ & (!\inst3|Add5~5\)) # (!\inst3|Add4~1_combout\ & ((\inst3|Add5~5\) # (GND)))
-- \inst3|Add5~7\ = CARRY((!\inst3|Add5~5\) # (!\inst3|Add4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add4~1_combout\,
	datad => VCC,
	cin => \inst3|Add5~5\,
	combout => \inst3|Add5~6_combout\,
	cout => \inst3|Add5~7\);

-- Location: LCCOMB_X12_Y3_N8
\inst3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst3|seconds\(2) & (\inst3|Add1~3\ $ (GND))) # (!\inst3|seconds\(2) & (!\inst3|Add1~3\ & VCC))
-- \inst3|Add1~7\ = CARRY((\inst3|seconds\(2) & !\inst3|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCFF_X13_Y5_N21
\inst5|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(3));

-- Location: LCFF_X13_Y5_N17
\inst5|digbuff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	sdata => \inst5|digout\(0),
	sload => VCC,
	ena => \inst5|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digbuff\(0));

-- Location: LCFF_X15_Y8_N7
\inst5|tictoc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(11));

-- Location: LCFF_X15_Y8_N11
\inst5|tictoc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(13));

-- Location: LCFF_X15_Y8_N17
\inst5|tictoc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(16));

-- Location: LCCOMB_X14_Y5_N6
\inst5|digout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~7_combout\ = (\inst5|digbuff\(2)) # (\inst5|digbuff\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|digbuff\(2),
	datad => \inst5|digbuff\(3),
	combout => \inst5|digout~7_combout\);

-- Location: LCCOMB_X13_Y5_N0
\inst5|digout~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~9_combout\ = (\inst5|digbuff\(1) & (!\inst5|digout\(0) & ((\inst5|digbuff\(2)) # (!\inst5|digbuff\(0))))) # (!\inst5|digbuff\(1) & ((\inst5|digbuff\(2) & (!\inst5|digout\(0) & !\inst5|digbuff\(0))) # (!\inst5|digbuff\(2) & 
-- ((\inst5|digbuff\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout\(0),
	datab => \inst5|digbuff\(1),
	datac => \inst5|digbuff\(2),
	datad => \inst5|digbuff\(0),
	combout => \inst5|digout~9_combout\);

-- Location: LCFF_X14_Y9_N7
\inst3|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(1));

-- Location: LCFF_X14_Y9_N21
\inst3|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(8));

-- Location: LCFF_X14_Y9_N25
\inst3|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(10));

-- Location: LCCOMB_X14_Y9_N4
\inst3|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~2_combout\ = (!\inst3|cnt\(8) & (!\inst3|cnt\(9) & (!\inst3|cnt\(10) & \inst3|cnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(8),
	datab => \inst3|cnt\(9),
	datac => \inst3|cnt\(10),
	datad => \inst3|cnt\(11),
	combout => \inst3|Equal1~2_combout\);

-- Location: LCCOMB_X13_Y8_N20
\inst3|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~6_combout\ = (!\inst3|cnt\(23) & (\inst3|cnt\(20) & (\inst3|cnt\(21) & \inst3|cnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(23),
	datab => \inst3|cnt\(20),
	datac => \inst3|cnt\(21),
	datad => \inst3|cnt\(22),
	combout => \inst3|Equal1~6_combout\);

-- Location: LCCOMB_X13_Y5_N20
\inst5|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~0_combout\ = (\inst5|cnt\(1) & (\inst5|cnt\(3) $ (((\inst5|cnt\(0) & \inst5|cnt\(2)))))) # (!\inst5|cnt\(1) & (\inst5|cnt\(3) & ((\inst5|cnt\(0)) # (\inst5|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(3),
	datad => \inst5|cnt\(2),
	combout => \inst5|cnt~0_combout\);

-- Location: LCFF_X13_Y5_N3
\inst5|seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(5));

-- Location: LCCOMB_X16_Y4_N2
\inst2|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal4~0_combout\ = (!\inst|key\(2) & !\inst|key\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|key\(2),
	datad => \inst|key\(1),
	combout => \inst2|Equal4~0_combout\);

-- Location: LCFF_X12_Y5_N27
\inst5|seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(4));

-- Location: LCCOMB_X14_Y5_N26
\inst5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr1~0_combout\ = (\inst5|digit\(2) & ((\inst5|digit\(3)) # ((!\inst5|digit\(1) & !\inst5|digit\(0))))) # (!\inst5|digit\(2) & (((!\inst5|digit\(3) & !\inst5|digit\(0))) # (!\inst5|digit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(1),
	datac => \inst5|digit\(2),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr1~0_combout\);

-- Location: LCCOMB_X13_Y5_N2
\inst5|seg~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~5_combout\ = (\inst5|seg~2_combout\ & (((\inst5|always1~1_combout\) # (\inst5|WideOr1~0_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(4),
	datab => \inst5|always1~1_combout\,
	datac => \inst5|WideOr1~0_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~5_combout\);

-- Location: LCCOMB_X9_Y4_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X8_Y4_N6
\inst3|Div0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|hours\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|hours\(4),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X8_Y4_N12
\inst3|Div0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst3|hours\(3) & \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(3),
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X9_Y4_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|hours\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|hours\(2),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X8_Y4_N2
\inst3|Div0|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X8_Y4_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X7_Y5_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst3|hours\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|hours\(1),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X14_Y6_N10
\inst3|Div1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|minutes\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|minutes\(5),
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X13_Y6_N30
\inst3|Div1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X13_Y6_N8
\inst3|Div1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X14_Y6_N6
\inst3|Div1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|minutes\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|minutes\(2),
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X14_Y6_N4
\inst3|Div1|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst3|minutes\(2) & \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(2),
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X13_Y6_N24
\inst3|Div1|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\ = (!\inst3|minutes\(1) & \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(1),
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X9_Y5_N12
\inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X9_Y5_N20
\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X9_Y5_N16
\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X9_Y5_N10
\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (!\inst3|hours\(2) & \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(2),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X10_Y5_N16
\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\ = (!\inst3|hours\(1) & \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(1),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X10_Y5_N30
\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X10_Y5_N26
\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCCOMB_X14_Y3_N6
\inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X14_Y3_N12
\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (!\inst3|minutes\(4) & \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(4),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X13_Y3_N14
\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X14_Y3_N10
\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst3|minutes\(2) & \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(2),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X15_Y3_N16
\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\ = (!\inst3|minutes\(1) & \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(1),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\);

-- Location: LCCOMB_X14_Y3_N30
\inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X15_Y3_N10
\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\);

-- Location: LCFF_X12_Y5_N21
\inst5|seg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(3));

-- Location: LCCOMB_X15_Y5_N22
\inst5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr2~0_combout\ = ((\inst5|digit\(1) & ((\inst5|digit\(2)))) # (!\inst5|digit\(1) & (\inst5|digit\(3)))) # (!\inst5|digit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(2),
	datac => \inst5|digit\(1),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr2~0_combout\);

-- Location: LCCOMB_X12_Y5_N26
\inst5|seg~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~6_combout\ = (\inst5|seg~2_combout\ & (((\inst5|always1~1_combout\) # (\inst5|WideOr2~0_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(3),
	datab => \inst5|always1~1_combout\,
	datac => \inst5|WideOr2~0_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~6_combout\);

-- Location: LCCOMB_X12_Y4_N24
\inst3|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal2~1_combout\ = (\inst3|minutes\(4)) # (\inst3|minutes\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(4),
	datad => \inst3|minutes\(5),
	combout => \inst3|Equal2~1_combout\);

-- Location: LCFF_X12_Y3_N25
\inst3|seconds[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(2));

-- Location: LCCOMB_X14_Y4_N2
\inst3|Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add4~2_combout\ = \inst2|digit\(0) $ (\inst2|digit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digit\(0),
	datad => \inst2|digit\(2),
	combout => \inst3|Add4~2_combout\);

-- Location: LCCOMB_X17_Y4_N24
\inst3|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~1_combout\ = \inst3|digit3\(1) $ (((\inst3|digit3\(0) & \inst3|digit3\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digit3\(0),
	datac => \inst3|digit3\(1),
	datad => \inst3|digit3\(2),
	combout => \inst3|Add2~1_combout\);

-- Location: LCCOMB_X12_Y4_N14
\inst3|minutes[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[2]~13_combout\ = (\inst2|flag~combout\ & (\inst2|pos\(1) $ (!\inst2|pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datac => \inst2|pos\(1),
	datad => \inst2|pos\(0),
	combout => \inst3|minutes[2]~13_combout\);

-- Location: LCFF_X12_Y5_N3
\inst5|seg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(2));

-- Location: LCCOMB_X14_Y5_N4
\inst5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr3~0_combout\ = (\inst5|digit\(1) & (\inst5|digit\(2) $ (((!\inst5|digit\(3) & !\inst5|digit\(0)))))) # (!\inst5|digit\(1) & ((\inst5|digit\(3)) # ((\inst5|digit\(2) & !\inst5|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(2),
	datac => \inst5|digit\(1),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr3~0_combout\);

-- Location: LCCOMB_X12_Y5_N20
\inst5|seg~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~7_combout\ = (\inst5|seg~2_combout\ & (((\inst5|always1~1_combout\) # (\inst5|WideOr3~0_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(2),
	datab => \inst5|always1~1_combout\,
	datac => \inst5|WideOr3~0_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~7_combout\);

-- Location: LCCOMB_X15_Y4_N24
\inst2|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal3~0_combout\ = (!\inst|key\(1) & (\inst2|Equal2~0_combout\ & \inst|key\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|key\(1),
	datac => \inst2|Equal2~0_combout\,
	datad => \inst|key\(2),
	combout => \inst2|Equal3~0_combout\);

-- Location: LCCOMB_X15_Y4_N2
\inst2|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal6~0_combout\ = (\inst|key\(5) & (!\inst|key\(6) & (!\inst|key\(7) & !\inst|key\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(5),
	datab => \inst|key\(6),
	datac => \inst|key\(7),
	datad => \inst|key\(4),
	combout => \inst2|Equal6~0_combout\);

-- Location: LCCOMB_X15_Y4_N22
\inst2|Equal6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal6~1_combout\ = (!\inst|key\(8) & (\inst2|Equal6~0_combout\ & (\inst2|Equal0~0_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(8),
	datab => \inst2|Equal6~0_combout\,
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal6~1_combout\);

-- Location: LCCOMB_X15_Y4_N8
\inst2|WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~2_combout\ = (!\inst2|Equal6~1_combout\ & (((\inst|key\(2)) # (!\inst|key\(1))) # (!\inst2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal2~0_combout\,
	datab => \inst2|Equal6~1_combout\,
	datac => \inst|key\(1),
	datad => \inst|key\(2),
	combout => \inst2|WideNor0~2_combout\);

-- Location: LCCOMB_X12_Y3_N24
\inst3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = (\inst3|Add1~6_combout\ & ((\inst2|flag~combout\) # ((\inst3|LessThan0~1_combout\) # (\inst3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst3|Add1~6_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|Add1~8_combout\);

-- Location: LCFF_X12_Y5_N25
\inst5|seg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(1));

-- Location: LCCOMB_X14_Y5_N22
\inst5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr4~0_combout\ = (\inst5|digit\(2) & (\inst5|digit\(3))) # (!\inst5|digit\(2) & (!\inst5|digit\(1) & ((\inst5|digit\(3)) # (\inst5|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(2),
	datac => \inst5|digit\(1),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr4~0_combout\);

-- Location: LCCOMB_X12_Y5_N2
\inst5|seg~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~8_combout\ = (\inst5|seg~2_combout\ & (((\inst5|WideOr4~0_combout\) # (\inst5|always1~1_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(1),
	datab => \inst5|WideOr4~0_combout\,
	datac => \inst5|always1~1_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~8_combout\);

-- Location: LCFF_X12_Y5_N7
\inst5|seg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(0));

-- Location: LCCOMB_X15_Y5_N24
\inst5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr5~0_combout\ = (\inst5|digit\(3) & ((\inst5|digit\(2)) # ((!\inst5|digit\(1))))) # (!\inst5|digit\(3) & (\inst5|digit\(2) & (\inst5|digit\(1) $ (\inst5|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(2),
	datac => \inst5|digit\(1),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr5~0_combout\);

-- Location: LCCOMB_X12_Y5_N24
\inst5|seg~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~9_combout\ = (\inst5|seg~2_combout\ & (((\inst5|WideOr5~0_combout\) # (\inst5|always1~1_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(0),
	datab => \inst5|WideOr5~0_combout\,
	datac => \inst5|always1~1_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~9_combout\);

-- Location: LCCOMB_X13_Y5_N26
\inst5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr6~0_combout\ = (\inst5|digit\(1) & (\inst5|digit\(2) $ (((!\inst5|digit\(0) & !\inst5|digit\(3)))))) # (!\inst5|digit\(1) & (((\inst5|digit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(0),
	datab => \inst5|digit\(1),
	datac => \inst5|digit\(3),
	datad => \inst5|digit\(2),
	combout => \inst5|WideOr6~0_combout\);

-- Location: LCCOMB_X12_Y5_N4
\inst5|seg~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~10_combout\ = (\inst5|always1~1_combout\ & (((\inst5|seg~1_combout\ & \inst5|seg~0_combout\)))) # (!\inst5|always1~1_combout\ & (\inst5|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|WideOr6~0_combout\,
	datab => \inst5|seg~1_combout\,
	datac => \inst5|always1~1_combout\,
	datad => \inst5|seg~0_combout\,
	combout => \inst5|seg~10_combout\);

-- Location: LCCOMB_X12_Y5_N6
\inst5|seg~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~11_combout\ = (\inst5|seg~10_combout\ & \inst5|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|seg~10_combout\,
	datad => \inst5|Equal3~1_combout\,
	combout => \inst5|seg~11_combout\);

-- Location: LCCOMB_X8_Y4_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst3|hours\(4))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|hours\(4),
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X13_Y6_N12
\inst3|Div1|auto_generated|divider|divider|StageOut[23]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\inst3|minutes\(4)))) # (!\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst3|minutes\(4),
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\);

-- Location: LCCOMB_X13_Y6_N10
\inst3|Div1|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\inst3|minutes\(3)))) # (!\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst3|minutes\(3),
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X10_Y5_N20
\inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst3|hours\(4))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(4),
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\);

-- Location: LCCOMB_X14_Y3_N14
\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst3|minutes\(3))) 
-- # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|minutes\(3),
	datac => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk50m~I\ : cycloneii_io
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
	padio => ww_clk50m,
	combout => \clk50m~combout\);

-- Location: CLKCTRL_G0
\inst3|ptflag~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|ptflag~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|ptflag~clkctrl_outclk\);

-- Location: CLKCTRL_G6
\clk50m~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50m~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50m~clkctrl_outclk\);

-- Location: LCCOMB_X15_Y9_N16
\inst5|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|tictoc\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|tictoc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X15_Y9_N18
\inst5|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|tictoc\(1) & (!\inst5|Add0~1\)) # (!\inst5|tictoc\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|tictoc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X15_Y9_N0
\inst5|tictoc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|tictoc~0_combout\ = (\inst5|Add0~2_combout\ & !\inst5|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Add0~2_combout\,
	datad => \inst5|Equal0~5_combout\,
	combout => \inst5|tictoc~0_combout\);

-- Location: LCFF_X15_Y9_N1
\inst5|tictoc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|tictoc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(1));

-- Location: LCCOMB_X15_Y9_N20
\inst5|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|tictoc\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|tictoc\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|tictoc\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X15_Y9_N22
\inst5|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|tictoc\(3) & (!\inst5|Add0~5\)) # (!\inst5|tictoc\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|tictoc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCFF_X15_Y9_N23
\inst5|tictoc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(3));

-- Location: LCCOMB_X15_Y9_N24
\inst5|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|tictoc\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|tictoc\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|tictoc\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X15_Y9_N26
\inst5|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|tictoc\(5) & (!\inst5|Add0~9\)) # (!\inst5|tictoc\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|tictoc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCFF_X15_Y9_N27
\inst5|tictoc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(5));

-- Location: LCCOMB_X15_Y9_N28
\inst5|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|tictoc\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|tictoc\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|tictoc\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCFF_X15_Y9_N29
\inst5|tictoc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(6));

-- Location: LCCOMB_X15_Y9_N30
\inst5|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|tictoc\(7) & (!\inst5|Add0~13\)) # (!\inst5|tictoc\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|tictoc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCFF_X15_Y9_N31
\inst5|tictoc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(7));

-- Location: LCFF_X15_Y9_N25
\inst5|tictoc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(4));

-- Location: LCCOMB_X15_Y9_N2
\inst5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|tictoc\(5) & (!\inst5|tictoc\(7) & (!\inst5|tictoc\(4) & !\inst5|tictoc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(5),
	datab => \inst5|tictoc\(7),
	datac => \inst5|tictoc\(4),
	datad => \inst5|tictoc\(6),
	combout => \inst5|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y8_N0
\inst5|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|tictoc\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|tictoc\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|tictoc\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCFF_X15_Y8_N1
\inst5|tictoc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(8));

-- Location: LCCOMB_X15_Y8_N2
\inst5|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|tictoc\(9) & (!\inst5|Add0~17\)) # (!\inst5|tictoc\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|tictoc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCFF_X15_Y8_N3
\inst5|tictoc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(9));

-- Location: LCCOMB_X15_Y8_N4
\inst5|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|tictoc\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|tictoc\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|tictoc\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCFF_X15_Y8_N5
\inst5|tictoc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(10));

-- Location: LCCOMB_X15_Y8_N8
\inst5|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|tictoc\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|tictoc\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|tictoc\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|tictoc\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCFF_X15_Y8_N9
\inst5|tictoc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(12));

-- Location: LCCOMB_X15_Y8_N12
\inst5|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|tictoc\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|tictoc\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|tictoc\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCFF_X15_Y8_N15
\inst5|tictoc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(15));

-- Location: LCFF_X15_Y8_N13
\inst5|tictoc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(14));

-- Location: LCCOMB_X15_Y8_N20
\inst5|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (!\inst5|tictoc\(13) & (!\inst5|tictoc\(12) & (!\inst5|tictoc\(15) & !\inst5|tictoc\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(13),
	datab => \inst5|tictoc\(12),
	datac => \inst5|tictoc\(15),
	datad => \inst5|tictoc\(14),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X15_Y8_N26
\inst5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (!\inst5|tictoc\(11) & (!\inst5|tictoc\(9) & (!\inst5|tictoc\(10) & !\inst5|tictoc\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(11),
	datab => \inst5|tictoc\(9),
	datac => \inst5|tictoc\(10),
	datad => \inst5|tictoc\(8),
	combout => \inst5|Equal0~2_combout\);

-- Location: LCCOMB_X15_Y8_N30
\inst5|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~3_combout\ & \inst5|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Equal0~3_combout\,
	datad => \inst5|Equal0~2_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCFF_X15_Y9_N21
\inst5|tictoc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(2));

-- Location: LCCOMB_X15_Y9_N6
\inst5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|tictoc\(0) & (!\inst5|tictoc\(3) & (!\inst5|tictoc\(2) & !\inst5|tictoc\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(0),
	datab => \inst5|tictoc\(3),
	datac => \inst5|tictoc\(2),
	datad => \inst5|tictoc\(1),
	combout => \inst5|Equal0~0_combout\);

-- Location: LCCOMB_X15_Y9_N12
\inst5|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal0~5_combout\ = (!\inst5|tictoc\(16) & (\inst5|Equal0~1_combout\ & (\inst5|Equal0~4_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|tictoc\(16),
	datab => \inst5|Equal0~1_combout\,
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~5_combout\);

-- Location: LCCOMB_X15_Y9_N10
\inst5|led_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|led_clk~0_combout\ = \inst5|led_clk~regout\ $ (\inst5|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|led_clk~regout\,
	datad => \inst5|Equal0~5_combout\,
	combout => \inst5|led_clk~0_combout\);

-- Location: LCFF_X15_Y9_N11
\inst5|led_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst5|led_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|led_clk~regout\);

-- Location: CLKCTRL_G7
\inst5|led_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|led_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|led_clk~clkctrl_outclk\);

-- Location: LCFF_X14_Y9_N1
\inst5|tictoc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	sdata => \inst5|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|tictoc\(0));

-- Location: LCCOMB_X14_Y9_N8
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|cnt\(2) & (!\inst3|Add0~1\)) # (!\inst3|cnt\(2) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(2),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCFF_X14_Y9_N9
\inst3|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(2));

-- Location: LCCOMB_X14_Y9_N10
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|cnt\(3) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|cnt\(3) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|cnt\(3) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(3),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X14_Y9_N12
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|cnt\(4) & (!\inst3|Add0~5\)) # (!\inst3|cnt\(4) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(4),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X14_Y9_N14
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|cnt\(5) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|cnt\(5) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|cnt\(5) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(5),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCFF_X14_Y9_N15
\inst3|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(5));

-- Location: LCCOMB_X14_Y9_N16
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|cnt\(6) & (!\inst3|Add0~9\)) # (!\inst3|cnt\(6) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(6),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X13_Y8_N0
\inst3|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~0_combout\ = (\inst3|Add0~10_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~10_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~0_combout\);

-- Location: LCFF_X13_Y8_N1
\inst3|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(6));

-- Location: LCCOMB_X14_Y9_N18
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|cnt\(7) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|cnt\(7) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|cnt\(7) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(7),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCFF_X14_Y9_N19
\inst3|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(7));

-- Location: LCCOMB_X14_Y9_N22
\inst3|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|cnt\(9) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|cnt\(9) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|cnt\(9) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(9),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCFF_X14_Y9_N23
\inst3|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(9));

-- Location: LCCOMB_X14_Y9_N26
\inst3|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|cnt\(11) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|cnt\(11) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|cnt\(11) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(11),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X14_Y9_N2
\inst3|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~1_combout\ = (\inst3|Add0~20_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~20_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~1_combout\);

-- Location: LCFF_X14_Y9_N3
\inst3|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(11));

-- Location: LCCOMB_X14_Y9_N28
\inst3|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|cnt\(12) & (!\inst3|Add0~21\)) # (!\inst3|cnt\(12) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(12),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X13_Y8_N24
\inst3|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~2_combout\ = (!\inst3|Equal1~8_combout\ & \inst3|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~8_combout\,
	datad => \inst3|Add0~22_combout\,
	combout => \inst3|cnt~2_combout\);

-- Location: LCFF_X13_Y8_N25
\inst3|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(12));

-- Location: LCCOMB_X14_Y9_N30
\inst3|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|cnt\(13) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|cnt\(13) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|cnt\(13) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(13),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X13_Y8_N10
\inst3|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~3_combout\ = (\inst3|Add0~24_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~24_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~3_combout\);

-- Location: LCFF_X13_Y8_N11
\inst3|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(13));

-- Location: LCCOMB_X14_Y8_N0
\inst3|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|cnt\(14) & (!\inst3|Add0~25\)) # (!\inst3|cnt\(14) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(14),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X14_Y8_N2
\inst3|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|cnt\(15) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|cnt\(15) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|cnt\(15) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(15),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCFF_X14_Y8_N3
\inst3|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(15));

-- Location: LCCOMB_X14_Y8_N4
\inst3|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|cnt\(16) & (!\inst3|Add0~29\)) # (!\inst3|cnt\(16) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(16),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X14_Y8_N6
\inst3|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|cnt\(17) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|cnt\(17) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|cnt\(17) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(17),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X14_Y8_N8
\inst3|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|cnt\(18) & (!\inst3|Add0~33\)) # (!\inst3|cnt\(18) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(18),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X13_Y8_N6
\inst3|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~6_combout\ = (\inst3|Add0~34_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~6_combout\);

-- Location: LCFF_X13_Y8_N7
\inst3|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(18));

-- Location: LCCOMB_X14_Y8_N10
\inst3|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|cnt\(19) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|cnt\(19) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|cnt\(19) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(19),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X13_Y8_N28
\inst3|cnt~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~7_combout\ = (\inst3|Add0~36_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~36_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~7_combout\);

-- Location: LCFF_X13_Y8_N29
\inst3|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(19));

-- Location: LCCOMB_X13_Y8_N14
\inst3|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~5_combout\ = (!\inst3|Equal1~8_combout\ & \inst3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~8_combout\,
	datac => \inst3|Add0~30_combout\,
	combout => \inst3|cnt~5_combout\);

-- Location: LCFF_X13_Y8_N15
\inst3|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(16));

-- Location: LCFF_X14_Y8_N7
\inst3|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(17));

-- Location: LCCOMB_X13_Y8_N22
\inst3|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~5_combout\ = (\inst3|cnt\(18) & (\inst3|cnt\(19) & (\inst3|cnt\(16) & !\inst3|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(18),
	datab => \inst3|cnt\(19),
	datac => \inst3|cnt\(16),
	datad => \inst3|cnt\(17),
	combout => \inst3|Equal1~5_combout\);

-- Location: LCCOMB_X14_Y8_N12
\inst3|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|cnt\(20) & (!\inst3|Add0~37\)) # (!\inst3|cnt\(20) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(20),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X13_Y8_N18
\inst3|cnt~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~8_combout\ = (\inst3|Add0~38_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~38_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~8_combout\);

-- Location: LCFF_X13_Y8_N19
\inst3|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(20));

-- Location: LCCOMB_X14_Y8_N14
\inst3|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|cnt\(21) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|cnt\(21) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|cnt\(21) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(21),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X13_Y8_N4
\inst3|cnt~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~9_combout\ = (\inst3|Add0~40_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~40_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~9_combout\);

-- Location: LCFF_X13_Y8_N5
\inst3|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(21));

-- Location: LCCOMB_X14_Y8_N16
\inst3|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|cnt\(22) & (!\inst3|Add0~41\)) # (!\inst3|cnt\(22) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(22),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X14_Y8_N26
\inst3|cnt~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~10_combout\ = (\inst3|Add0~42_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~42_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~10_combout\);

-- Location: LCFF_X14_Y8_N27
\inst3|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(22));

-- Location: LCCOMB_X14_Y8_N18
\inst3|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|cnt\(23) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|cnt\(23) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|cnt\(23) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(23),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCFF_X14_Y8_N19
\inst3|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(23));

-- Location: LCCOMB_X14_Y8_N20
\inst3|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|cnt\(24) & (!\inst3|Add0~45\)) # (!\inst3|cnt\(24) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(24),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X14_Y8_N28
\inst3|cnt~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~11_combout\ = (\inst3|Add0~46_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~46_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~11_combout\);

-- Location: LCFF_X14_Y8_N29
\inst3|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(24));

-- Location: LCCOMB_X14_Y8_N22
\inst3|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|cnt\(25) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|cnt\(25) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|cnt\(25) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(25),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: LCFF_X14_Y8_N23
\inst3|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(25));

-- Location: LCCOMB_X14_Y8_N24
\inst3|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = \inst3|cnt\(26) $ (\inst3|Add0~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(26),
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\);

-- Location: LCFF_X14_Y8_N25
\inst3|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(26));

-- Location: LCCOMB_X14_Y8_N30
\inst3|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~7_combout\ = (!\inst3|cnt\(25) & (!\inst3|cnt\(26) & \inst3|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|cnt\(25),
	datac => \inst3|cnt\(26),
	datad => \inst3|cnt\(24),
	combout => \inst3|Equal1~7_combout\);

-- Location: LCCOMB_X13_Y8_N30
\inst3|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt~4_combout\ = (\inst3|Add0~26_combout\ & !\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|cnt~4_combout\);

-- Location: LCFF_X13_Y8_N31
\inst3|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(14));

-- Location: LCCOMB_X13_Y8_N2
\inst3|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~3_combout\ = (\inst3|cnt\(12) & (\inst3|cnt\(14) & (\inst3|cnt\(13) & !\inst3|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(12),
	datab => \inst3|cnt\(14),
	datac => \inst3|cnt\(13),
	datad => \inst3|cnt\(15),
	combout => \inst3|Equal1~3_combout\);

-- Location: LCFF_X14_Y9_N13
\inst3|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(4));

-- Location: LCCOMB_X13_Y8_N8
\inst3|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (!\inst3|cnt\(7) & (!\inst3|cnt\(6) & (\inst3|cnt\(4) & \inst3|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(7),
	datab => \inst3|cnt\(6),
	datac => \inst3|cnt\(4),
	datad => \inst3|cnt\(5),
	combout => \inst3|Equal1~1_combout\);

-- Location: LCFF_X14_Y9_N11
\inst3|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(3));

-- Location: LCCOMB_X14_Y9_N0
\inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (\inst3|cnt\(1) & (\inst3|cnt\(2) & (\inst5|tictoc\(0) & \inst3|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|cnt\(1),
	datab => \inst3|cnt\(2),
	datac => \inst5|tictoc\(0),
	datad => \inst3|cnt\(3),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X13_Y8_N26
\inst3|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~4_combout\ = (\inst3|Equal1~2_combout\ & (\inst3|Equal1~3_combout\ & (\inst3|Equal1~1_combout\ & \inst3|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~2_combout\,
	datab => \inst3|Equal1~3_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|Equal1~0_combout\,
	combout => \inst3|Equal1~4_combout\);

-- Location: LCCOMB_X13_Y8_N12
\inst3|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal1~8_combout\ = (\inst3|Equal1~6_combout\ & (\inst3|Equal1~5_combout\ & (\inst3|Equal1~7_combout\ & \inst3|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~6_combout\,
	datab => \inst3|Equal1~5_combout\,
	datac => \inst3|Equal1~7_combout\,
	datad => \inst3|Equal1~4_combout\,
	combout => \inst3|Equal1~8_combout\);

-- Location: LCCOMB_X13_Y8_N16
\inst3|ptflag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|ptflag~0_combout\ = \inst3|ptflag~regout\ $ (\inst3|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|ptflag~regout\,
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|ptflag~0_combout\);

-- Location: LCFF_X13_Y8_N17
\inst3|ptflag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|ptflag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|ptflag~regout\);

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

-- Location: LCCOMB_X7_Y4_N18
\inst|key[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[3]~11_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst|key[3]~11_combout\);

-- Location: LCCOMB_X15_Y3_N12
\inst|row[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|row[0]~1_combout\ = !\inst|row\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|row\(3),
	combout => \inst|row[0]~1_combout\);

-- Location: LCCOMB_X10_Y3_N0
\inst6|cnt25[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[0]~6_combout\ = \inst6|cnt25\(0) $ (VCC)
-- \inst6|cnt25[0]~7\ = CARRY(\inst6|cnt25\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt25\(0),
	datad => VCC,
	combout => \inst6|cnt25[0]~6_combout\,
	cout => \inst6|cnt25[0]~7\);

-- Location: LCCOMB_X10_Y3_N28
\inst6|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~0_combout\ = (!\inst6|cnt25\(3) & (((!\inst6|cnt25\(0)) # (!\inst6|cnt25\(2))) # (!\inst6|cnt25\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt25\(3),
	datab => \inst6|cnt25\(1),
	datac => \inst6|cnt25\(2),
	datad => \inst6|cnt25\(0),
	combout => \inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y3_N14
\inst6|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~1_combout\ = (\inst6|cnt25\(5) & ((\inst6|cnt25\(4)) # (!\inst6|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt25\(5),
	datac => \inst6|cnt25\(4),
	datad => \inst6|LessThan0~0_combout\,
	combout => \inst6|LessThan0~1_combout\);

-- Location: LCFF_X10_Y3_N1
\inst6|cnt25[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[0]~6_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(0));

-- Location: LCCOMB_X10_Y3_N2
\inst6|cnt25[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[1]~8_combout\ = (\inst6|cnt25\(1) & (!\inst6|cnt25[0]~7\)) # (!\inst6|cnt25\(1) & ((\inst6|cnt25[0]~7\) # (GND)))
-- \inst6|cnt25[1]~9\ = CARRY((!\inst6|cnt25[0]~7\) # (!\inst6|cnt25\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt25\(1),
	datad => VCC,
	cin => \inst6|cnt25[0]~7\,
	combout => \inst6|cnt25[1]~8_combout\,
	cout => \inst6|cnt25[1]~9\);

-- Location: LCFF_X10_Y3_N3
\inst6|cnt25[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[1]~8_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(1));

-- Location: LCCOMB_X10_Y3_N4
\inst6|cnt25[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|cnt25[2]~10_combout\ = (\inst6|cnt25\(2) & (\inst6|cnt25[1]~9\ $ (GND))) # (!\inst6|cnt25\(2) & (!\inst6|cnt25[1]~9\ & VCC))
-- \inst6|cnt25[2]~11\ = CARRY((\inst6|cnt25\(2) & !\inst6|cnt25[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|cnt25\(2),
	datad => VCC,
	cin => \inst6|cnt25[1]~9\,
	combout => \inst6|cnt25[2]~10_combout\,
	cout => \inst6|cnt25[2]~11\);

-- Location: LCFF_X10_Y3_N5
\inst6|cnt25[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[2]~10_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(2));

-- Location: LCFF_X10_Y3_N9
\inst6|cnt25[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|cnt25[4]~14_combout\,
	sclr => \inst6|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|cnt25\(4));

-- Location: LCCOMB_X10_Y3_N26
\inst6|clk25ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|clk25ms~0_combout\ = \inst6|clk25ms~regout\ $ (((\inst6|cnt25\(5) & ((\inst6|cnt25\(4)) # (!\inst6|LessThan0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|cnt25\(5),
	datab => \inst6|cnt25\(4),
	datac => \inst6|clk25ms~regout\,
	datad => \inst6|LessThan0~0_combout\,
	combout => \inst6|clk25ms~0_combout\);

-- Location: LCFF_X10_Y3_N27
\inst6|clk25ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst6|clk25ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|clk25ms~regout\);

-- Location: LCFF_X15_Y3_N13
\inst|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|row[0]~1_combout\,
	ena => \inst6|clk25ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|row\(0));

-- Location: LCCOMB_X10_Y3_N12
\inst|row[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|row[1]~0_combout\ = !\inst|row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row\(0),
	combout => \inst|row[1]~0_combout\);

-- Location: LCFF_X10_Y3_N13
\inst|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|row[1]~0_combout\,
	ena => \inst6|clk25ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|row\(1));

-- Location: LCCOMB_X15_Y3_N18
\inst|row[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|row[2]~feeder_combout\ = \inst|row\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row\(1),
	combout => \inst|row[2]~feeder_combout\);

-- Location: LCFF_X15_Y3_N19
\inst|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|row[2]~feeder_combout\,
	ena => \inst6|clk25ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|row\(2));

-- Location: LCCOMB_X15_Y3_N4
\inst|row[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|row[3]~feeder_combout\ = \inst|row\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|row\(2),
	combout => \inst|row[3]~feeder_combout\);

-- Location: LCFF_X15_Y3_N5
\inst|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|row[3]~feeder_combout\,
	ena => \inst6|clk25ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|row\(3));

-- Location: LCFF_X15_Y4_N27
\inst|key[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[3]~11_combout\,
	sload => VCC,
	ena => \inst|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(3));

-- Location: LCCOMB_X7_Y4_N26
\inst|key[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[0]~6_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst|key[0]~6_combout\);

-- Location: LCFF_X14_Y4_N17
\inst|key[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	sdata => \inst|key[0]~6_combout\,
	sload => VCC,
	ena => \inst|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(0));

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

-- Location: LCCOMB_X16_Y4_N22
\inst|key[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[4]~3_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst|key[4]~3_combout\);

-- Location: LCFF_X16_Y4_N23
\inst|key[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	datain => \inst|key[4]~3_combout\,
	ena => \inst|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(4));

-- Location: LCCOMB_X16_Y4_N26
\inst|key[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[6]~2_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst|key[6]~2_combout\);

-- Location: LCFF_X15_Y4_N7
\inst|key[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[6]~2_combout\,
	sload => VCC,
	ena => \inst|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(6));

-- Location: LCCOMB_X14_Y4_N16
\inst|key[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[5]~0_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col~combout\(1),
	combout => \inst|key[5]~0_combout\);

-- Location: LCFF_X14_Y4_N3
\inst|key[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[5]~0_combout\,
	sload => VCC,
	ena => \inst|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(5));

-- Location: LCCOMB_X15_Y4_N6
\inst2|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal9~0_combout\ = (!\inst|key\(7) & (!\inst|key\(4) & (!\inst|key\(6) & !\inst|key\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(7),
	datab => \inst|key\(4),
	datac => \inst|key\(6),
	datad => \inst|key\(5),
	combout => \inst2|Equal9~0_combout\);

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

-- Location: LCCOMB_X16_Y4_N8
\inst|key[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[10]~4_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \inst|key[10]~4_combout\);

-- Location: LCFF_X15_Y4_N5
\inst|key[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[10]~4_combout\,
	sload => VCC,
	ena => \inst|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(10));

-- Location: LCCOMB_X12_Y4_N30
\inst|key[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[9]~5_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst|key[9]~5_combout\);

-- Location: LCFF_X14_Y4_N9
\inst|key[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[9]~5_combout\,
	sload => VCC,
	ena => \inst|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(9));

-- Location: LCCOMB_X15_Y4_N4
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst|key\(10) & !\inst|key\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|key\(10),
	datad => \inst|key\(9),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y4_N4
\inst2|Equal12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal12~0_combout\ = (!\inst|key\(8) & (!\inst|key\(0) & (\inst2|Equal9~0_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(8),
	datab => \inst|key\(0),
	datac => \inst2|Equal9~0_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|Equal12~0_combout\);

-- Location: LCCOMB_X16_Y4_N0
\inst|key[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[11]~8_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \inst|key[11]~8_combout\);

-- Location: LCFF_X15_Y4_N13
\inst|key[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[11]~8_combout\,
	sload => VCC,
	ena => \inst|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(11));

-- Location: LCCOMB_X16_Y4_N18
\inst2|Equal12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal12~1_combout\ = (\inst2|Equal4~0_combout\ & (!\inst|key\(3) & (\inst2|Equal12~0_combout\ & \inst|key\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal4~0_combout\,
	datab => \inst|key\(3),
	datac => \inst2|Equal12~0_combout\,
	datad => \inst|key\(11),
	combout => \inst2|Equal12~1_combout\);

-- Location: LCCOMB_X15_Y5_N30
\inst2|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector1~2_combout\ = (!\inst2|pos\(0) & (!\inst2|pos\(1) & \inst2|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pos\(0),
	datac => \inst2|pos\(1),
	datad => \inst2|Equal12~1_combout\,
	combout => \inst2|Selector1~2_combout\);

-- Location: LCCOMB_X12_Y5_N10
\inst2|pos[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pos\(0) = (GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & ((\inst2|Selector1~2_combout\))) # (!GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & (\inst2|pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(0),
	datac => \inst2|Selector1~2_combout\,
	datad => \inst2|Selector3~1clkctrl_outclk\,
	combout => \inst2|pos\(0));

-- Location: LCCOMB_X15_Y5_N18
\inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector0~0_combout\ = (\inst2|Equal12~1_combout\ & \inst2|pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal12~1_combout\,
	datac => \inst2|pos\(0),
	combout => \inst2|Selector0~0_combout\);

-- Location: LCCOMB_X12_Y5_N28
\inst2|pos[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pos\(1) = (GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & ((\inst2|Selector0~0_combout\))) # (!GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & (\inst2|pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pos\(1),
	datac => \inst2|Selector0~0_combout\,
	datad => \inst2|Selector3~1clkctrl_outclk\,
	combout => \inst2|pos\(1));

-- Location: LCCOMB_X12_Y4_N2
\inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~0_combout\ = (!\inst2|pos\(2) & ((!\inst2|pos\(0)) # (!\inst2|pos\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(2),
	datac => \inst2|pos\(1),
	datad => \inst2|pos\(0),
	combout => \inst2|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y4_N20
\inst2|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal4~1_combout\ = (\inst2|Equal4~0_combout\ & (\inst|key\(3) & (\inst2|Equal12~0_combout\ & !\inst|key\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal4~0_combout\,
	datab => \inst|key\(3),
	datac => \inst2|Equal12~0_combout\,
	datad => \inst|key\(11),
	combout => \inst2|Equal4~1_combout\);

-- Location: LCCOMB_X16_Y4_N28
\inst2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector3~1_combout\ = (\inst2|Equal4~1_combout\) # ((\inst2|Selector3~0_combout\ & \inst2|Equal12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Selector3~0_combout\,
	datac => \inst2|Equal4~1_combout\,
	datad => \inst2|Equal12~1_combout\,
	combout => \inst2|Selector3~1_combout\);

-- Location: CLKCTRL_G2
\inst2|Selector3~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|Selector3~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|Selector3~1clkctrl_outclk\);

-- Location: LCCOMB_X15_Y5_N28
\inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Selector2~0_combout\ = (\inst2|Equal12~1_combout\ & \inst2|pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal12~1_combout\,
	datac => \inst2|pos\(1),
	combout => \inst2|Selector2~0_combout\);

-- Location: LCCOMB_X12_Y5_N18
\inst2|pos[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|pos\(2) = (GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & ((\inst2|Selector2~0_combout\))) # (!GLOBAL(\inst2|Selector3~1clkctrl_outclk\) & (\inst2|pos\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pos\(2),
	datac => \inst2|Selector3~1clkctrl_outclk\,
	datad => \inst2|Selector2~0_combout\,
	combout => \inst2|pos\(2));

-- Location: LCCOMB_X12_Y5_N0
\inst3|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst2|pos\(2)) # ((\inst2|pos\(1)) # (\inst2|pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pos\(2),
	datac => \inst2|pos\(1),
	datad => \inst2|pos\(0),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCFF_X12_Y5_N1
\inst3|blink\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst3|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|blink~regout\);

-- Location: LCCOMB_X12_Y5_N14
\inst5|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|always1~1_combout\ = (\inst3|blink~regout\) # (!\inst3|ptflag~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|ptflag~regout\,
	datad => \inst3|blink~regout\,
	combout => \inst5|always1~1_combout\);

-- Location: LCCOMB_X10_Y4_N0
\inst3|Add10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~0_combout\ = \inst3|hours\(0) $ (GND)
-- \inst3|Add10~1\ = CARRY(!\inst3|hours\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(0),
	datad => VCC,
	combout => \inst3|Add10~0_combout\,
	cout => \inst3|Add10~1\);

-- Location: LCCOMB_X7_Y4_N8
\inst|key[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[2]~9_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst|key[2]~9_combout\);

-- Location: LCFF_X15_Y4_N31
\inst|key[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[2]~9_combout\,
	sload => VCC,
	ena => \inst|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(2));

-- Location: LCCOMB_X16_Y4_N30
\inst|key[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[1]~10_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(2),
	combout => \inst|key[1]~10_combout\);

-- Location: LCFF_X16_Y4_N31
\inst|key[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	datain => \inst|key[1]~10_combout\,
	ena => \inst|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(1));

-- Location: LCCOMB_X15_Y4_N30
\inst2|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (!\inst|key\(11) & (!\inst|key\(3) & (!\inst|key\(2) & !\inst|key\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(11),
	datab => \inst|key\(3),
	datac => \inst|key\(2),
	datad => \inst|key\(1),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y4_N16
\inst|key[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[8]~7_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(0),
	combout => \inst|key[8]~7_combout\);

-- Location: LCFF_X16_Y4_N17
\inst|key[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	datain => \inst|key[8]~7_combout\,
	ena => \inst|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(8));

-- Location: LCCOMB_X15_Y4_N18
\inst2|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal11~0_combout\ = (\inst2|Equal9~0_combout\ & (\inst2|Equal1~0_combout\ & (!\inst|key\(8) & !\inst|key\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal9~0_combout\,
	datab => \inst2|Equal1~0_combout\,
	datac => \inst|key\(8),
	datad => \inst|key\(0),
	combout => \inst2|Equal11~0_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst2|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal10~0_combout\ = (!\inst|key\(10) & (\inst|key\(9) & \inst2|Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(10),
	datac => \inst|key\(9),
	datad => \inst2|Equal11~0_combout\,
	combout => \inst2|Equal10~0_combout\);

-- Location: LCCOMB_X15_Y4_N14
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst|key\(9) & (!\inst|key\(10) & (!\inst|key\(8) & \inst2|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(9),
	datab => \inst|key\(10),
	datac => \inst|key\(8),
	datad => \inst2|Equal9~0_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y4_N26
\inst2|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~0_combout\ = (!\inst|key\(11) & (!\inst|key\(0) & (!\inst|key\(3) & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(11),
	datab => \inst|key\(0),
	datac => \inst|key\(3),
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal2~0_combout\);

-- Location: LCCOMB_X16_Y4_N14
\inst2|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal2~1_combout\ = (!\inst|key\(2) & (\inst|key\(1) & \inst2|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(2),
	datab => \inst|key\(1),
	datac => \inst2|Equal2~0_combout\,
	combout => \inst2|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst|key\(0) & \inst2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|key\(0),
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst2|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal5~0_combout\ = (\inst2|Equal0~0_combout\ & (!\inst|key\(8) & (!\inst|key\(5) & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst|key\(8),
	datac => \inst|key\(5),
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal5~0_combout\);

-- Location: LCCOMB_X15_Y3_N30
\inst|key[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|key[7]~1_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(1),
	combout => \inst|key[7]~1_combout\);

-- Location: LCFF_X15_Y4_N3
\inst|key[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~combout\,
	sdata => \inst|key[7]~1_combout\,
	sload => VCC,
	ena => \inst|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|key\(7));

-- Location: LCCOMB_X16_Y4_N6
\inst2|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr11~0_combout\ = (!\inst|key\(4) & (\inst2|Equal5~0_combout\ & (\inst|key\(6) $ (\inst|key\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(6),
	datab => \inst|key\(4),
	datac => \inst2|Equal5~0_combout\,
	datad => \inst|key\(7),
	combout => \inst2|WideOr11~0_combout\);

-- Location: LCCOMB_X16_Y4_N12
\inst2|WideOr11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr11~combout\ = (\inst2|Equal5~1_combout\) # ((\inst2|Equal10~0_combout\) # ((\inst2|Equal2~1_combout\) # (\inst2|WideOr11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~1_combout\,
	datab => \inst2|Equal10~0_combout\,
	datac => \inst2|Equal2~1_combout\,
	datad => \inst2|WideOr11~0_combout\,
	combout => \inst2|WideOr11~combout\);

-- Location: LCCOMB_X15_Y4_N12
\inst2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = ((\inst|key\(3) $ (!\inst|key\(11))) # (!\inst2|Equal12~0_combout\)) # (!\inst2|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal4~0_combout\,
	datab => \inst|key\(3),
	datac => \inst|key\(11),
	datad => \inst2|Equal12~0_combout\,
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X15_Y4_N0
\inst2|WideNor0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~6_combout\ = (\inst2|WideOr2~0_combout\ & ((\inst|key\(0)) # ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(0),
	datab => \inst2|Equal1~0_combout\,
	datac => \inst2|Equal0~1_combout\,
	datad => \inst2|WideOr2~0_combout\,
	combout => \inst2|WideNor0~6_combout\);

-- Location: CLKCTRL_G3
\inst2|WideNor0~6clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|WideNor0~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|WideNor0~6clkctrl_outclk\);

-- Location: LCCOMB_X14_Y4_N4
\inst2|digit[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit\(0) = (GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & (!\inst2|WideOr11~combout\)) # (!GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & ((\inst2|digit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr11~combout\,
	datac => \inst2|digit\(0),
	datad => \inst2|WideNor0~6clkctrl_outclk\,
	combout => \inst2|digit\(0));

-- Location: LCCOMB_X12_Y4_N28
\inst3|hours~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|hours~0_combout\ = (\inst2|flag~combout\ & ((!\inst2|digit\(0)))) # (!\inst2|flag~combout\ & (!\inst3|Add10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datac => \inst3|Add10~0_combout\,
	datad => \inst2|digit\(0),
	combout => \inst3|hours~0_combout\);

-- Location: LCCOMB_X12_Y3_N4
\inst3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = \inst3|seconds\(0) $ (VCC)
-- \inst3|Add1~1\ = CARRY(\inst3|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X12_Y3_N26
\inst3|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~5_combout\ = (\inst3|Add1~0_combout\ & ((\inst2|flag~combout\) # ((\inst3|LessThan0~1_combout\) # (\inst3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst3|Add1~0_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|Add1~5_combout\);

-- Location: LCFF_X12_Y3_N27
\inst3|seconds[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(0));

-- Location: LCCOMB_X12_Y3_N6
\inst3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst3|seconds\(1) & ((\inst3|Add1~1\) # (GND))) # (!\inst3|seconds\(1) & (!\inst3|Add1~1\))
-- \inst3|Add1~3\ = CARRY((\inst3|seconds\(1)) # (!\inst3|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X12_Y3_N28
\inst3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((!\inst2|flag~combout\ & (!\inst3|LessThan0~0_combout\ & !\inst3|LessThan0~1_combout\))) # (!\inst3|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|Add1~2_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|Add1~4_combout\);

-- Location: LCFF_X12_Y3_N29
\inst3|seconds[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(1));

-- Location: LCCOMB_X12_Y3_N10
\inst3|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~9_combout\ = (\inst3|seconds\(3) & (!\inst3|Add1~7\)) # (!\inst3|seconds\(3) & ((\inst3|Add1~7\) # (GND)))
-- \inst3|Add1~10\ = CARRY((!\inst3|Add1~7\) # (!\inst3|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(3),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~9_combout\,
	cout => \inst3|Add1~10\);

-- Location: LCCOMB_X12_Y3_N22
\inst3|Add1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~11_combout\ = (\inst3|Add1~9_combout\ & ((\inst2|flag~combout\) # ((\inst3|LessThan0~0_combout\) # (\inst3|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|Add1~9_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|Add1~11_combout\);

-- Location: LCFF_X12_Y3_N23
\inst3|seconds[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(3));

-- Location: LCCOMB_X12_Y3_N0
\inst3|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = ((!\inst3|seconds\(2) & ((\inst3|seconds\(1)) # (!\inst3|seconds\(0))))) # (!\inst3|seconds\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(2),
	datab => \inst3|seconds\(1),
	datac => \inst3|seconds\(3),
	datad => \inst3|seconds\(0),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y3_N12
\inst3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = (\inst3|seconds\(4) & (!\inst3|Add1~10\ & VCC)) # (!\inst3|seconds\(4) & (\inst3|Add1~10\ $ (GND)))
-- \inst3|Add1~13\ = CARRY((!\inst3|seconds\(4) & !\inst3|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|seconds\(4),
	datad => VCC,
	cin => \inst3|Add1~10\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X12_Y3_N30
\inst3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = ((!\inst2|flag~combout\ & (!\inst3|LessThan0~0_combout\ & !\inst3|LessThan0~1_combout\))) # (!\inst3|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~0_combout\,
	datac => \inst3|Add1~12_combout\,
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|Add1~14_combout\);

-- Location: LCFF_X12_Y3_N31
\inst3|seconds[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(4));

-- Location: LCCOMB_X12_Y3_N14
\inst3|Add1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~15_combout\ = \inst3|seconds\(5) $ (!\inst3|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|seconds\(5),
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~15_combout\);

-- Location: LCCOMB_X12_Y3_N20
\inst3|Add1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~17_combout\ = ((!\inst2|flag~combout\ & (!\inst3|LessThan0~1_combout\ & !\inst3|LessThan0~0_combout\))) # (!\inst3|Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst3|Add1~15_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|Add1~17_combout\);

-- Location: LCFF_X12_Y3_N21
\inst3|seconds[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add1~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|seconds\(5));

-- Location: LCCOMB_X12_Y3_N2
\inst3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|seconds\(5)) # (\inst3|seconds\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|seconds\(5),
	datad => \inst3|seconds\(4),
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y4_N6
\inst3|minutes~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~14_combout\ = (\inst2|flag~combout\ & (((\inst2|pos\(2))))) # (!\inst2|flag~combout\ & ((\inst3|LessThan0~1_combout\) # ((\inst3|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst2|pos\(2),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|minutes~14_combout\);

-- Location: LCCOMB_X14_Y4_N28
\inst2|WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~3_combout\ = (!\inst2|Equal10~0_combout\ & (((!\inst|key\(0)) # (!\inst2|Equal1~0_combout\)) # (!\inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal1~0_combout\,
	datac => \inst|key\(0),
	datad => \inst2|Equal10~0_combout\,
	combout => \inst2|WideNor0~3_combout\);

-- Location: LCCOMB_X14_Y4_N22
\inst2|WideOr7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~1_combout\ = (!\inst|key\(7) & (!\inst|key\(4) & (\inst|key\(6) & \inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(7),
	datab => \inst|key\(4),
	datac => \inst|key\(6),
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|WideOr7~1_combout\);

-- Location: LCCOMB_X14_Y4_N6
\inst2|WideOr7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~2_combout\ = (!\inst2|WideOr7~1_combout\ & (((\inst|key\(9)) # (!\inst2|Equal11~0_combout\)) # (!\inst|key\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(10),
	datab => \inst2|Equal11~0_combout\,
	datac => \inst|key\(9),
	datad => \inst2|WideOr7~1_combout\,
	combout => \inst2|WideOr7~2_combout\);

-- Location: LCCOMB_X15_Y4_N28
\inst2|Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal9~1_combout\ = (\inst|key\(8) & (\inst2|Equal0~0_combout\ & (\inst2|Equal9~0_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(8),
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal9~0_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal9~1_combout\);

-- Location: LCCOMB_X15_Y4_N16
\inst2|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal8~0_combout\ = (\inst|key\(7) & (!\inst|key\(6) & (!\inst|key\(4) & \inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(7),
	datab => \inst|key\(6),
	datac => \inst|key\(4),
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|Equal8~0_combout\);

-- Location: LCCOMB_X15_Y4_N10
\inst2|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal5~1_combout\ = (!\inst|key\(7) & (!\inst|key\(6) & (\inst|key\(4) & \inst2|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|key\(7),
	datab => \inst|key\(6),
	datac => \inst|key\(4),
	datad => \inst2|Equal5~0_combout\,
	combout => \inst2|Equal5~1_combout\);

-- Location: LCCOMB_X15_Y4_N20
\inst2|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~0_combout\ = (!\inst2|Equal3~0_combout\ & (!\inst2|Equal9~1_combout\ & (!\inst2|Equal8~0_combout\ & !\inst2|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal3~0_combout\,
	datab => \inst2|Equal9~1_combout\,
	datac => \inst2|Equal8~0_combout\,
	datad => \inst2|Equal5~1_combout\,
	combout => \inst2|WideOr7~0_combout\);

-- Location: LCCOMB_X12_Y4_N22
\inst2|WideNor0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~4_combout\ = (\inst2|WideNor0~2_combout\ & (\inst2|WideNor0~3_combout\ & (\inst2|WideOr7~2_combout\ & \inst2|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideNor0~2_combout\,
	datab => \inst2|WideNor0~3_combout\,
	datac => \inst2|WideOr7~2_combout\,
	datad => \inst2|WideOr7~0_combout\,
	combout => \inst2|WideNor0~4_combout\);

-- Location: LCCOMB_X14_Y4_N14
\inst2|WideOr2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~combout\ = ((\inst2|WideNor0~4_combout\ & ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~2_combout\)))) # (!\inst2|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|WideOr2~0_combout\,
	datad => \inst2|WideNor0~4_combout\,
	combout => \inst2|WideOr2~combout\);

-- Location: LCCOMB_X12_Y4_N20
\inst2|flag\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|flag~combout\ = (\inst2|WideOr2~combout\ & (\inst2|flag~combout\)) # (!\inst2|WideOr2~combout\ & ((\inst2|WideNor0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datac => \inst2|WideOr2~combout\,
	datad => \inst2|WideNor0~4_combout\,
	combout => \inst2|flag~combout\);

-- Location: LCCOMB_X12_Y6_N12
\inst3|Add9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~6_combout\ = (\inst3|minutes\(3) & ((\inst3|Add9~5\) # (GND))) # (!\inst3|minutes\(3) & (!\inst3|Add9~5\))
-- \inst3|Add9~7\ = CARRY((\inst3|minutes\(3)) # (!\inst3|Add9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(3),
	datad => VCC,
	cin => \inst3|Add9~5\,
	combout => \inst3|Add9~6_combout\,
	cout => \inst3|Add9~7\);

-- Location: LCCOMB_X12_Y6_N14
\inst3|Add9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~8_combout\ = (\inst3|minutes\(4) & (!\inst3|Add9~7\ & VCC)) # (!\inst3|minutes\(4) & (\inst3|Add9~7\ $ (GND)))
-- \inst3|Add9~9\ = CARRY((!\inst3|minutes\(4) & !\inst3|Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(4),
	datad => VCC,
	cin => \inst3|Add9~7\,
	combout => \inst3|Add9~8_combout\,
	cout => \inst3|Add9~9\);

-- Location: LCCOMB_X12_Y6_N16
\inst3|Add9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~10_combout\ = \inst3|Add9~9\ $ (!\inst3|minutes\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|minutes\(5),
	cin => \inst3|Add9~9\,
	combout => \inst3|Add9~10_combout\);

-- Location: LCCOMB_X14_Y4_N8
\inst2|WideOr7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr7~combout\ = (!\inst2|WideOr7~2_combout\) # (!\inst2|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|WideOr7~0_combout\,
	datad => \inst2|WideOr7~2_combout\,
	combout => \inst2|WideOr7~combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst2|digit[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit\(2) = (GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & ((!\inst2|WideOr7~combout\))) # (!GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & (\inst2|digit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|digit\(2),
	datac => \inst2|WideOr7~combout\,
	datad => \inst2|WideNor0~6clkctrl_outclk\,
	combout => \inst2|digit\(2));

-- Location: LCCOMB_X14_Y4_N24
\inst2|WideNor0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideNor0~5_combout\ = (\inst2|WideNor0~2_combout\ & \inst2|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideNor0~2_combout\,
	datad => \inst2|WideOr7~0_combout\,
	combout => \inst2|WideNor0~5_combout\);

-- Location: LCCOMB_X14_Y4_N12
\inst2|digit[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit\(1) = (GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & ((\inst2|WideNor0~5_combout\))) # (!GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & (\inst2|digit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datac => \inst2|WideNor0~5_combout\,
	datad => \inst2|WideNor0~6clkctrl_outclk\,
	combout => \inst2|digit\(1));

-- Location: LCCOMB_X14_Y4_N20
\inst3|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add4~0_combout\ = (\inst2|digit\(3) & ((\inst2|digit\(1)) # ((\inst2|digit\(2) & \inst2|digit\(0))))) # (!\inst2|digit\(3) & (\inst2|digit\(2) & (\inst2|digit\(0) & \inst2|digit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(1),
	combout => \inst3|Add4~0_combout\);

-- Location: LCCOMB_X16_Y4_N10
\inst2|WideOr5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~combout\ = (\inst2|Equal5~1_combout\) # ((\inst2|Equal9~1_combout\) # (\inst2|WideNor0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal5~1_combout\,
	datac => \inst2|Equal9~1_combout\,
	datad => \inst2|WideNor0~4_combout\,
	combout => \inst2|WideOr5~combout\);

-- Location: LCCOMB_X16_Y4_N24
\inst2|digit[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|digit\(3) = (GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & ((\inst2|WideOr5~combout\))) # (!GLOBAL(\inst2|WideNor0~6clkctrl_outclk\) & (\inst2|digit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datac => \inst2|WideNor0~6clkctrl_outclk\,
	datad => \inst2|WideOr5~combout\,
	combout => \inst2|digit\(3));

-- Location: LCCOMB_X14_Y4_N10
\inst3|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add4~1_combout\ = \inst2|digit\(1) $ (\inst2|digit\(3) $ (((\inst2|digit\(2) & \inst2|digit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datab => \inst2|digit\(2),
	datac => \inst2|digit\(0),
	datad => \inst2|digit\(3),
	combout => \inst3|Add4~1_combout\);

-- Location: LCCOMB_X13_Y6_N4
\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst3|minutes\(5) & (!\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC)) # (!\inst3|minutes\(5) & 
-- (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND)))
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst3|minutes\(5) & !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(5),
	datad => VCC,
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X13_Y6_N6
\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst3|Div1|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|minutes\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|minutes\(4),
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X14_Y6_N2
\inst3|Div1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|minutes\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|minutes\(3),
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X14_Y6_N8
\inst3|Div1|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|minutes\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|minutes\(2),
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X14_Y6_N20
\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\)))
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\) # (\inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[15]~23_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[15]~22_combout\,
	datad => VCC,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X14_Y6_N22
\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X14_Y6_N24
\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X13_Y6_N28
\inst3|Div1|auto_generated|divider|divider|StageOut[18]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\);

-- Location: LCCOMB_X14_Y6_N26
\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst3|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\ & (!\inst3|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\ & 
-- !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datad => VCC,
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y6_N28
\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y6_N12
\inst3|Div1|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X14_Y6_N30
\inst3|Div1|auto_generated|divider|divider|StageOut[22]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\);

-- Location: LCCOMB_X14_Y6_N14
\inst3|Div1|auto_generated|divider|divider|StageOut[21]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ = (\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\);

-- Location: LCCOMB_X12_Y6_N6
\inst3|Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~0_combout\ = \inst3|minutes\(0) $ (GND)
-- \inst3|Add9~1\ = CARRY(!\inst3|minutes\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(0),
	datad => VCC,
	combout => \inst3|Add9~0_combout\,
	cout => \inst3|Add9~1\);

-- Location: LCCOMB_X12_Y4_N8
\inst3|minutes~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~0_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(1) & (\inst3|digit4\(0))) # (!\inst2|pos\(1) & ((\inst2|digit\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit4\(0),
	datab => \inst2|pos\(1),
	datac => \inst2|flag~combout\,
	datad => \inst2|digit\(0),
	combout => \inst3|minutes~0_combout\);

-- Location: LCCOMB_X12_Y4_N12
\inst3|minutes~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~1_combout\ = (!\inst3|minutes~0_combout\ & ((\inst2|flag~combout\) # (!\inst3|Add9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|Add9~0_combout\,
	datac => \inst3|minutes~0_combout\,
	combout => \inst3|minutes~1_combout\);

-- Location: LCCOMB_X13_Y4_N18
\inst3|minutes[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[5]~2_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(2)) # (\inst2|pos\(1) $ (!\inst2|pos\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(1),
	datab => \inst2|pos\(2),
	datac => \inst2|flag~combout\,
	datad => \inst2|pos\(0),
	combout => \inst3|minutes[5]~2_combout\);

-- Location: LCCOMB_X13_Y4_N16
\inst3|minutes[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[5]~3_combout\ = (!\inst3|minutes[5]~2_combout\ & ((\inst2|flag~combout\) # ((!\inst3|LessThan0~0_combout\ & !\inst3|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~0_combout\,
	datab => \inst3|LessThan0~1_combout\,
	datac => \inst2|flag~combout\,
	datad => \inst3|minutes[5]~2_combout\,
	combout => \inst3|minutes[5]~3_combout\);

-- Location: LCFF_X12_Y4_N13
\inst3|minutes[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes~1_combout\,
	ena => \inst3|minutes[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(0));

-- Location: LCCOMB_X12_Y6_N8
\inst3|Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~2_combout\ = (\inst3|minutes\(1) & ((\inst3|Add9~1\) # (GND))) # (!\inst3|minutes\(1) & (!\inst3|Add9~1\))
-- \inst3|Add9~3\ = CARRY((\inst3|minutes\(1)) # (!\inst3|Add9~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(1),
	datad => VCC,
	cin => \inst3|Add9~1\,
	combout => \inst3|Add9~2_combout\,
	cout => \inst3|Add9~3\);

-- Location: LCCOMB_X14_Y3_N8
\inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ = (!\inst3|minutes\(5) & \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(5),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X13_Y3_N22
\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|minutes\(4) & (!\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst3|minutes\(4) & 
-- (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst3|minutes\(4) & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(4),
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X14_Y3_N2
\inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X14_Y3_N0
\inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\ = (\inst3|minutes\(2) & !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(2),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X14_Y3_N20
\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ & 
-- (!\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\)))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ & 
-- !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~21_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X14_Y3_N24
\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y3_N26
\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X15_Y3_N2
\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\ = (!\inst3|minutes\(1) & !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(1),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\);

-- Location: LCCOMB_X15_Y3_N20
\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\)))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[20]~25_combout\,
	datad => VCC,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X14_Y3_N16
\inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((!\inst3|minutes\(4)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \inst3|minutes\(4),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\);

-- Location: LCCOMB_X15_Y3_N8
\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ = (\inst3|minutes\(2) & \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(2),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\);

-- Location: LCCOMB_X15_Y3_N22
\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- (!\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\)))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\ & 
-- !\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X15_Y3_N24
\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))))
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- (\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X15_Y3_N26
\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\ & (!\inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\ & 
-- !\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[23]~33_combout\,
	datad => VCC,
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X15_Y3_N28
\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X15_Y3_N14
\inst3|Mod1|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst3|minutes\(1))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & ((\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(1),
	datac => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCFF_X15_Y3_N15
\inst3|digit4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod1|auto_generated|divider|divider|StageOut[26]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit4\(1));

-- Location: LCCOMB_X13_Y4_N0
\inst3|Add5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add5~0_combout\ = (\inst2|digit\(0) & (\inst3|digit4\(1) $ (VCC))) # (!\inst2|digit\(0) & (\inst3|digit4\(1) & VCC))
-- \inst3|Add5~1\ = CARRY((\inst2|digit\(0) & \inst3|digit4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(0),
	datab => \inst3|digit4\(1),
	datad => VCC,
	combout => \inst3|Add5~0_combout\,
	cout => \inst3|Add5~1\);

-- Location: LCCOMB_X17_Y4_N2
\inst3|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add3~0_combout\ = (\inst2|digit\(1) & (\inst3|digit3\(0) $ (VCC))) # (!\inst2|digit\(1) & (\inst3|digit3\(0) & VCC))
-- \inst3|Add3~1\ = CARRY((\inst2|digit\(1) & \inst3|digit3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datab => \inst3|digit3\(0),
	datad => VCC,
	combout => \inst3|Add3~0_combout\,
	cout => \inst3|Add3~1\);

-- Location: LCCOMB_X13_Y4_N22
\inst3|minutes~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~16_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(1) & (\inst3|Add5~0_combout\)) # (!\inst2|pos\(1) & ((\inst3|Add3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|Add5~0_combout\,
	datac => \inst3|Add3~0_combout\,
	datad => \inst2|pos\(1),
	combout => \inst3|minutes~16_combout\);

-- Location: LCCOMB_X13_Y4_N24
\inst3|minutes~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~17_combout\ = (!\inst3|minutes~16_combout\ & ((\inst2|flag~combout\) # (!\inst3|Add9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add9~2_combout\,
	datac => \inst2|flag~combout\,
	datad => \inst3|minutes~16_combout\,
	combout => \inst3|minutes~17_combout\);

-- Location: LCFF_X13_Y4_N25
\inst3|minutes[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes~17_combout\,
	ena => \inst3|minutes[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(1));

-- Location: LCCOMB_X13_Y6_N26
\inst3|Div1|auto_generated|divider|divider|StageOut[20]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\ = (!\inst3|minutes\(1) & !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(1),
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\);

-- Location: LCCOMB_X13_Y6_N14
\inst3|digit3[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[0]~2_cout\ = CARRY((\inst3|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\) # (\inst3|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datad => VCC,
	cout => \inst3|digit3[0]~2_cout\);

-- Location: LCCOMB_X13_Y6_N16
\inst3|digit3[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[0]~4_cout\ = CARRY((!\inst3|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\ & (!\inst3|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\ & !\inst3|digit3[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datad => VCC,
	cin => \inst3|digit3[0]~2_cout\,
	cout => \inst3|digit3[0]~4_cout\);

-- Location: LCCOMB_X13_Y6_N18
\inst3|digit3[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[0]~6_cout\ = CARRY((!\inst3|digit3[0]~4_cout\ & ((\inst3|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\) # (\inst3|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datad => VCC,
	cin => \inst3|digit3[0]~4_cout\,
	cout => \inst3|digit3[0]~6_cout\);

-- Location: LCCOMB_X13_Y6_N20
\inst3|digit3[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[0]~8_cout\ = CARRY((!\inst3|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\inst3|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\ & !\inst3|digit3[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div1|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \inst3|Div1|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \inst3|digit3[0]~6_cout\,
	cout => \inst3|digit3[0]~8_cout\);

-- Location: LCCOMB_X13_Y6_N22
\inst3|digit3[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[0]~9_combout\ = !\inst3|digit3[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|digit3[0]~8_cout\,
	combout => \inst3|digit3[0]~9_combout\);

-- Location: LCFF_X13_Y6_N23
\inst3|digit3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit3[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit3\(0));

-- Location: LCCOMB_X15_Y5_N14
\inst3|digit3[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[2]~12_combout\ = !\inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|digit3[2]~12_combout\);

-- Location: LCFF_X15_Y5_N15
\inst3|digit3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit3[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit3\(2));

-- Location: LCCOMB_X17_Y4_N26
\inst3|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~2_combout\ = \inst3|digit3\(0) $ (\inst3|digit3\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|digit3\(0),
	datad => \inst3|digit3\(2),
	combout => \inst3|Add2~2_combout\);

-- Location: LCCOMB_X17_Y4_N4
\inst3|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add3~2_combout\ = (\inst3|digit3\(1) & ((\inst2|digit\(2) & (\inst3|Add3~1\ & VCC)) # (!\inst2|digit\(2) & (!\inst3|Add3~1\)))) # (!\inst3|digit3\(1) & ((\inst2|digit\(2) & (!\inst3|Add3~1\)) # (!\inst2|digit\(2) & ((\inst3|Add3~1\) # (GND)))))
-- \inst3|Add3~3\ = CARRY((\inst3|digit3\(1) & (!\inst2|digit\(2) & !\inst3|Add3~1\)) # (!\inst3|digit3\(1) & ((!\inst3|Add3~1\) # (!\inst2|digit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit3\(1),
	datab => \inst2|digit\(2),
	datad => VCC,
	cin => \inst3|Add3~1\,
	combout => \inst3|Add3~2_combout\,
	cout => \inst3|Add3~3\);

-- Location: LCCOMB_X17_Y4_N6
\inst3|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add3~4_combout\ = ((\inst2|digit\(3) $ (\inst3|Add2~2_combout\ $ (!\inst3|Add3~3\)))) # (GND)
-- \inst3|Add3~5\ = CARRY((\inst2|digit\(3) & ((\inst3|Add2~2_combout\) # (!\inst3|Add3~3\))) # (!\inst2|digit\(3) & (\inst3|Add2~2_combout\ & !\inst3|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst3|Add2~2_combout\,
	datad => VCC,
	cin => \inst3|Add3~3\,
	combout => \inst3|Add3~4_combout\,
	cout => \inst3|Add3~5\);

-- Location: LCCOMB_X17_Y4_N8
\inst3|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add3~6_combout\ = (\inst3|Add2~1_combout\ & (!\inst3|Add3~5\)) # (!\inst3|Add2~1_combout\ & ((\inst3|Add3~5\) # (GND)))
-- \inst3|Add3~7\ = CARRY((!\inst3|Add3~5\) # (!\inst3|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add2~1_combout\,
	datad => VCC,
	cin => \inst3|Add3~5\,
	combout => \inst3|Add3~6_combout\,
	cout => \inst3|Add3~7\);

-- Location: LCCOMB_X13_Y4_N28
\inst3|minutes~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~7_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(1) & (\inst3|Add5~6_combout\)) # (!\inst2|pos\(1) & ((\inst3|Add3~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add5~6_combout\,
	datab => \inst2|pos\(1),
	datac => \inst2|flag~combout\,
	datad => \inst3|Add3~6_combout\,
	combout => \inst3|minutes~7_combout\);

-- Location: LCCOMB_X13_Y4_N20
\inst3|minutes~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~8_combout\ = (!\inst3|minutes~7_combout\ & ((!\inst3|Add9~8_combout\) # (!\inst3|minutes~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes~5_combout\,
	datac => \inst3|Add9~8_combout\,
	datad => \inst3|minutes~7_combout\,
	combout => \inst3|minutes~8_combout\);

-- Location: LCFF_X13_Y4_N21
\inst3|minutes[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes~8_combout\,
	ena => \inst3|minutes[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(4));

-- Location: LCCOMB_X13_Y3_N26
\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X14_Y3_N28
\inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\ = (!\inst3|minutes\(3) & \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(3),
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X14_Y3_N4
\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\);

-- Location: LCCOMB_X15_Y3_N6
\inst3|Mod1|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\) # 
-- ((\inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datac => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCFF_X15_Y3_N7
\inst3|digit4[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod1|auto_generated|divider|divider|StageOut[28]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit4\(3));

-- Location: LCCOMB_X13_Y4_N2
\inst3|Add5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add5~2_combout\ = (\inst3|digit4\(2) & ((\inst2|digit\(1) & (\inst3|Add5~1\ & VCC)) # (!\inst2|digit\(1) & (!\inst3|Add5~1\)))) # (!\inst3|digit4\(2) & ((\inst2|digit\(1) & (!\inst3|Add5~1\)) # (!\inst2|digit\(1) & ((\inst3|Add5~1\) # (GND)))))
-- \inst3|Add5~3\ = CARRY((\inst3|digit4\(2) & (!\inst2|digit\(1) & !\inst3|Add5~1\)) # (!\inst3|digit4\(2) & ((!\inst3|Add5~1\) # (!\inst2|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit4\(2),
	datab => \inst2|digit\(1),
	datad => VCC,
	cin => \inst3|Add5~1\,
	combout => \inst3|Add5~2_combout\,
	cout => \inst3|Add5~3\);

-- Location: LCCOMB_X13_Y4_N4
\inst3|Add5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add5~4_combout\ = ((\inst3|Add4~2_combout\ $ (\inst3|digit4\(3) $ (!\inst3|Add5~3\)))) # (GND)
-- \inst3|Add5~5\ = CARRY((\inst3|Add4~2_combout\ & ((\inst3|digit4\(3)) # (!\inst3|Add5~3\))) # (!\inst3|Add4~2_combout\ & (\inst3|digit4\(3) & !\inst3|Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add4~2_combout\,
	datab => \inst3|digit4\(3),
	datad => VCC,
	cin => \inst3|Add5~3\,
	combout => \inst3|Add5~4_combout\,
	cout => \inst3|Add5~5\);

-- Location: LCCOMB_X13_Y4_N8
\inst3|Add5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add5~8_combout\ = \inst2|digit\(2) $ (\inst3|Add5~7\ $ (!\inst3|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(2),
	datad => \inst3|Add4~0_combout\,
	cin => \inst3|Add5~7\,
	combout => \inst3|Add5~8_combout\);

-- Location: LCCOMB_X14_Y6_N16
\inst3|digit3[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit3[1]~11_combout\ = !\inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|digit3[1]~11_combout\);

-- Location: LCFF_X14_Y6_N17
\inst3|digit3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit3[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit3\(1));

-- Location: LCCOMB_X17_Y4_N0
\inst3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = (\inst3|digit3\(0) & (\inst3|digit3\(1) & \inst3|digit3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digit3\(0),
	datac => \inst3|digit3\(1),
	datad => \inst3|digit3\(2),
	combout => \inst3|Add2~0_combout\);

-- Location: LCCOMB_X17_Y4_N10
\inst3|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add3~8_combout\ = \inst3|digit3\(2) $ (\inst3|Add3~7\ $ (!\inst3|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit3\(2),
	datad => \inst3|Add2~0_combout\,
	cin => \inst3|Add3~7\,
	combout => \inst3|Add3~8_combout\);

-- Location: LCCOMB_X13_Y4_N30
\inst3|minutes~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~4_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(1) & (\inst3|Add5~8_combout\)) # (!\inst2|pos\(1) & ((\inst3|Add3~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst2|pos\(1),
	datac => \inst3|Add5~8_combout\,
	datad => \inst3|Add3~8_combout\,
	combout => \inst3|minutes~4_combout\);

-- Location: LCCOMB_X13_Y4_N26
\inst3|minutes~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~6_combout\ = (!\inst3|minutes~4_combout\ & ((!\inst3|Add9~10_combout\) # (!\inst3|minutes~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes~5_combout\,
	datac => \inst3|Add9~10_combout\,
	datad => \inst3|minutes~4_combout\,
	combout => \inst3|minutes~6_combout\);

-- Location: LCFF_X13_Y4_N27
\inst3|minutes[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes~6_combout\,
	ena => \inst3|minutes[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(5));

-- Location: LCCOMB_X12_Y4_N16
\inst3|minutes~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~5_combout\ = (!\inst2|flag~combout\ & ((\inst3|minutes\(4)) # ((\inst3|Equal2~0_combout\) # (\inst3|minutes\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(4),
	datab => \inst3|Equal2~0_combout\,
	datac => \inst2|flag~combout\,
	datad => \inst3|minutes\(5),
	combout => \inst3|minutes~5_combout\);

-- Location: LCCOMB_X12_Y6_N10
\inst3|Add9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add9~4_combout\ = (\inst3|minutes\(2) & (\inst3|Add9~3\ $ (GND))) # (!\inst3|minutes\(2) & (!\inst3|Add9~3\ & VCC))
-- \inst3|Add9~5\ = CARRY((\inst3|minutes\(2) & !\inst3|Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|minutes\(2),
	datad => VCC,
	cin => \inst3|Add9~3\,
	combout => \inst3|Add9~4_combout\,
	cout => \inst3|Add9~5\);

-- Location: LCCOMB_X13_Y4_N10
\inst3|minutes[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[2]~11_combout\ = (\inst2|pos\(1) & (!\inst2|pos\(0) & (\inst3|Add5~2_combout\))) # (!\inst2|pos\(1) & (\inst2|pos\(0) & ((\inst3|Add3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(1),
	datab => \inst2|pos\(0),
	datac => \inst3|Add5~2_combout\,
	datad => \inst3|Add3~2_combout\,
	combout => \inst3|minutes[2]~11_combout\);

-- Location: LCCOMB_X13_Y4_N12
\inst3|minutes[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[2]~12_combout\ = (\inst2|flag~combout\ & ((\inst3|minutes[2]~11_combout\) # ((\inst3|minutes~5_combout\ & \inst3|Add9~4_combout\)))) # (!\inst2|flag~combout\ & (\inst3|minutes~5_combout\ & (\inst3|Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|minutes~5_combout\,
	datac => \inst3|Add9~4_combout\,
	datad => \inst3|minutes[2]~11_combout\,
	combout => \inst3|minutes[2]~12_combout\);

-- Location: LCCOMB_X13_Y4_N14
\inst3|minutes[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes[2]~15_combout\ = (\inst3|minutes~14_combout\ & (((\inst3|minutes\(2))))) # (!\inst3|minutes~14_combout\ & ((\inst3|minutes[2]~12_combout\) # ((\inst3|minutes[2]~13_combout\ & \inst3|minutes\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes[2]~13_combout\,
	datab => \inst3|minutes~14_combout\,
	datac => \inst3|minutes\(2),
	datad => \inst3|minutes[2]~12_combout\,
	combout => \inst3|minutes[2]~15_combout\);

-- Location: LCFF_X13_Y4_N15
\inst3|minutes[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(2));

-- Location: LCCOMB_X13_Y3_N30
\inst3|minutes~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~9_combout\ = (\inst2|flag~combout\ & ((\inst2|pos\(1) & (\inst3|Add5~4_combout\)) # (!\inst2|pos\(1) & ((\inst3|Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(1),
	datab => \inst2|flag~combout\,
	datac => \inst3|Add5~4_combout\,
	datad => \inst3|Add3~4_combout\,
	combout => \inst3|minutes~9_combout\);

-- Location: LCCOMB_X13_Y3_N28
\inst3|minutes~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|minutes~10_combout\ = (!\inst3|minutes~9_combout\ & ((!\inst3|Add9~6_combout\) # (!\inst3|minutes~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes~5_combout\,
	datab => \inst3|Add9~6_combout\,
	datad => \inst3|minutes~9_combout\,
	combout => \inst3|minutes~10_combout\);

-- Location: LCFF_X13_Y3_N29
\inst3|minutes[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|minutes~10_combout\,
	ena => \inst3|minutes[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|minutes\(3));

-- Location: LCCOMB_X13_Y3_N0
\inst3|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (\inst3|minutes\(0)) # ((\inst3|minutes\(3)) # ((\inst3|minutes\(1)) # (\inst3|minutes\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|minutes\(0),
	datab => \inst3|minutes\(3),
	datac => \inst3|minutes\(1),
	datad => \inst3|minutes\(2),
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y4_N18
\inst3|hours[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|hours[3]~1_combout\ = (\inst3|Equal2~1_combout\) # ((\inst3|Equal2~0_combout\) # ((\inst3|LessThan0~1_combout\) # (\inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~1_combout\,
	datab => \inst3|Equal2~0_combout\,
	datac => \inst3|LessThan0~1_combout\,
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|hours[3]~1_combout\);

-- Location: LCCOMB_X12_Y4_N26
\inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst2|pos\(1) & !\inst2|pos\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|pos\(1),
	datad => \inst2|pos\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y4_N10
\inst3|hours[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|hours[3]~2_combout\ = (\inst2|flag~combout\ & (((\inst2|pos\(2) & \inst3|Equal0~0_combout\)))) # (!\inst2|flag~combout\ & (!\inst3|hours[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|hours[3]~1_combout\,
	datac => \inst2|pos\(2),
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|hours[3]~2_combout\);

-- Location: LCFF_X12_Y4_N29
\inst3|hours[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|hours~0_combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(0));

-- Location: LCCOMB_X10_Y4_N2
\inst3|Add10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~2_combout\ = (\inst3|hours\(1) & ((\inst3|Add10~1\) # (GND))) # (!\inst3|hours\(1) & (!\inst3|Add10~1\))
-- \inst3|Add10~3\ = CARRY((\inst3|hours\(1)) # (!\inst3|Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(1),
	datad => VCC,
	cin => \inst3|Add10~1\,
	combout => \inst3|Add10~2_combout\,
	cout => \inst3|Add10~3\);

-- Location: LCCOMB_X10_Y4_N4
\inst3|Add10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~4_combout\ = (\inst3|hours\(2) & (!\inst3|Add10~3\ & VCC)) # (!\inst3|hours\(2) & (\inst3|Add10~3\ $ (GND)))
-- \inst3|Add10~5\ = CARRY((!\inst3|hours\(2) & !\inst3|Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(2),
	datad => VCC,
	cin => \inst3|Add10~3\,
	combout => \inst3|Add10~4_combout\,
	cout => \inst3|Add10~5\);

-- Location: LCCOMB_X9_Y4_N10
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|hours\(3) $ (VCC)
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|hours\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(3),
	datad => VCC,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X9_Y4_N12
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst3|hours\(4) & (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)) # (!\inst3|hours\(4) & 
-- (\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((\inst3|hours\(4) & !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(4),
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X9_Y4_N8
\inst3|Div0|auto_generated|divider|divider|StageOut[17]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\);

-- Location: LCCOMB_X9_Y4_N30
\inst3|Div0|auto_generated|divider|divider|StageOut[16]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\ = (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[16]~21_combout\);

-- Location: LCCOMB_X8_Y4_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\inst3|hours\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|hours\(2),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[15]~22_combout\);

-- Location: LCCOMB_X8_Y4_N20
\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))) # (!\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\)))))
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\) # 
-- (\inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X8_Y4_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[23]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\);

-- Location: LCCOMB_X8_Y4_N10
\inst3|Div0|auto_generated|divider|divider|StageOut[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst3|hours\(3))) # 
-- (!\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst3|hours\(3),
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\);

-- Location: LCCOMB_X7_Y5_N26
\inst3|Div0|auto_generated|divider|divider|StageOut[21]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst3|hours\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|hours\(2),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\);

-- Location: LCCOMB_X7_Y5_N0
\inst3|Div0|auto_generated|divider|divider|StageOut[20]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & !\inst3|hours\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst3|hours\(1),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\);

-- Location: LCCOMB_X7_Y5_N12
\inst3|digit1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[0]~2_cout\ = CARRY((\inst3|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[20]~29_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[20]~28_combout\,
	datad => VCC,
	cout => \inst3|digit1[0]~2_cout\);

-- Location: LCCOMB_X7_Y5_N14
\inst3|digit1[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[0]~4_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\ & !\inst3|digit1[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[21]~27_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[21]~26_combout\,
	datad => VCC,
	cin => \inst3|digit1[0]~2_cout\,
	cout => \inst3|digit1[0]~4_cout\);

-- Location: LCCOMB_X7_Y5_N16
\inst3|digit1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[0]~6_cout\ = CARRY((!\inst3|digit1[0]~4_cout\ & ((\inst3|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\) # (\inst3|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[22]~25_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[22]~31_combout\,
	datad => VCC,
	cin => \inst3|digit1[0]~4_cout\,
	cout => \inst3|digit1[0]~6_cout\);

-- Location: LCCOMB_X7_Y5_N18
\inst3|digit1[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[0]~8_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\ & !\inst3|digit1[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[23]~30_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[23]~24_combout\,
	datad => VCC,
	cin => \inst3|digit1[0]~6_cout\,
	cout => \inst3|digit1[0]~8_cout\);

-- Location: LCCOMB_X7_Y5_N20
\inst3|digit1[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[0]~9_combout\ = !\inst3|digit1[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|digit1[0]~8_cout\,
	combout => \inst3|digit1[0]~9_combout\);

-- Location: LCFF_X7_Y5_N21
\inst3|digit1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit1[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit1\(0));

-- Location: LCCOMB_X10_Y4_N18
\inst3|Add7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~0_combout\ = (\inst2|digit\(1) & (\inst3|digit1\(0) $ (VCC))) # (!\inst2|digit\(1) & (\inst3|digit1\(0) & VCC))
-- \inst3|Add7~1\ = CARRY((\inst2|digit\(1) & \inst3|digit1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(1),
	datab => \inst3|digit1\(0),
	datad => VCC,
	combout => \inst3|Add7~0_combout\,
	cout => \inst3|Add7~1\);

-- Location: LCCOMB_X12_Y4_N0
\inst3|Add7~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~13_combout\ = (\inst2|flag~combout\ & (!\inst3|Add7~0_combout\)) # (!\inst2|flag~combout\ & ((!\inst3|Add10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datac => \inst3|Add7~0_combout\,
	datad => \inst3|Add10~2_combout\,
	combout => \inst3|Add7~13_combout\);

-- Location: LCFF_X12_Y4_N1
\inst3|hours[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add7~13_combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(1));

-- Location: LCCOMB_X9_Y4_N22
\inst3|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (!\inst3|hours\(0) & (!\inst3|hours\(4) & (!\inst3|hours\(1) & !\inst3|hours\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(0),
	datab => \inst3|hours\(4),
	datac => \inst3|hours\(1),
	datad => \inst3|hours\(2),
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X9_Y4_N0
\inst3|hours~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|hours~3_combout\ = (\inst3|Add10~6_combout\ & ((\inst3|hours\(5)) # ((\inst3|hours\(3)) # (!\inst3|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add10~6_combout\,
	datab => \inst3|hours\(5),
	datac => \inst3|hours\(3),
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|hours~3_combout\);

-- Location: LCCOMB_X15_Y5_N16
\inst3|digit1[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[2]~12_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|digit1[2]~12_combout\);

-- Location: LCFF_X15_Y5_N17
\inst3|digit1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit1[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit1\(2));

-- Location: LCCOMB_X7_Y4_N12
\inst3|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add6~2_combout\ = \inst3|digit1\(2) $ (\inst3|digit1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|digit1\(2),
	datad => \inst3|digit1\(0),
	combout => \inst3|Add6~2_combout\);

-- Location: LCCOMB_X10_Y4_N20
\inst3|Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~2_combout\ = (\inst2|digit\(2) & ((\inst3|digit1\(1) & (\inst3|Add7~1\ & VCC)) # (!\inst3|digit1\(1) & (!\inst3|Add7~1\)))) # (!\inst2|digit\(2) & ((\inst3|digit1\(1) & (!\inst3|Add7~1\)) # (!\inst3|digit1\(1) & ((\inst3|Add7~1\) # (GND)))))
-- \inst3|Add7~3\ = CARRY((\inst2|digit\(2) & (!\inst3|digit1\(1) & !\inst3|Add7~1\)) # (!\inst2|digit\(2) & ((!\inst3|Add7~1\) # (!\inst3|digit1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(2),
	datab => \inst3|digit1\(1),
	datad => VCC,
	cin => \inst3|Add7~1\,
	combout => \inst3|Add7~2_combout\,
	cout => \inst3|Add7~3\);

-- Location: LCCOMB_X10_Y4_N22
\inst3|Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~4_combout\ = ((\inst2|digit\(3) $ (\inst3|Add6~2_combout\ $ (!\inst3|Add7~3\)))) # (GND)
-- \inst3|Add7~5\ = CARRY((\inst2|digit\(3) & ((\inst3|Add6~2_combout\) # (!\inst3|Add7~3\))) # (!\inst2|digit\(3) & (\inst3|Add6~2_combout\ & !\inst3|Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|digit\(3),
	datab => \inst3|Add6~2_combout\,
	datad => VCC,
	cin => \inst3|Add7~3\,
	combout => \inst3|Add7~4_combout\,
	cout => \inst3|Add7~5\);

-- Location: LCFF_X9_Y4_N1
\inst3|hours[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|hours~3_combout\,
	sdata => \inst3|Add7~4_combout\,
	sload => \inst2|flag~combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(3));

-- Location: LCCOMB_X9_Y4_N28
\inst3|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal3~1_combout\ = (!\inst3|hours\(3) & (!\inst3|hours\(5) & \inst3|Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(3),
	datac => \inst3|hours\(5),
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|Equal3~1_combout\);

-- Location: LCCOMB_X10_Y4_N8
\inst3|Add10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~8_combout\ = (\inst3|hours\(4) & (!\inst3|Add10~7\ & VCC)) # (!\inst3|hours\(4) & (\inst3|Add10~7\ $ (GND)))
-- \inst3|Add10~9\ = CARRY((!\inst3|hours\(4) & !\inst3|Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(4),
	datad => VCC,
	cin => \inst3|Add10~7\,
	combout => \inst3|Add10~8_combout\,
	cout => \inst3|Add10~9\);

-- Location: LCCOMB_X10_Y4_N28
\inst3|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add6~1_combout\ = \inst3|digit1\(1) $ (((\inst3|digit1\(0) & \inst3|digit1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit1\(0),
	datac => \inst3|digit1\(2),
	datad => \inst3|digit1\(1),
	combout => \inst3|Add6~1_combout\);

-- Location: LCCOMB_X10_Y4_N24
\inst3|Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~6_combout\ = (\inst3|Add6~1_combout\ & (!\inst3|Add7~5\)) # (!\inst3|Add6~1_combout\ & ((\inst3|Add7~5\) # (GND)))
-- \inst3|Add7~7\ = CARRY((!\inst3|Add7~5\) # (!\inst3|Add6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add6~1_combout\,
	datad => VCC,
	cin => \inst3|Add7~5\,
	combout => \inst3|Add7~6_combout\,
	cout => \inst3|Add7~7\);

-- Location: LCCOMB_X9_Y4_N24
\inst3|Add7~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~11_combout\ = (\inst2|flag~combout\ & (((!\inst3|Add7~6_combout\)))) # (!\inst2|flag~combout\ & ((\inst3|Equal3~1_combout\) # ((!\inst3|Add10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|Equal3~1_combout\,
	datac => \inst3|Add10~8_combout\,
	datad => \inst3|Add7~6_combout\,
	combout => \inst3|Add7~11_combout\);

-- Location: LCFF_X9_Y4_N25
\inst3|hours[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add7~11_combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(4));

-- Location: LCCOMB_X10_Y4_N10
\inst3|Add10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add10~10_combout\ = \inst3|Add10~9\ $ (\inst3|hours\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|hours\(5),
	cin => \inst3|Add10~9\,
	combout => \inst3|Add10~10_combout\);

-- Location: LCCOMB_X10_Y4_N30
\inst3|Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add6~0_combout\ = (\inst3|digit1\(2) & (\inst3|digit1\(0) & \inst3|digit1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digit1\(2),
	datac => \inst3|digit1\(0),
	datad => \inst3|digit1\(1),
	combout => \inst3|Add6~0_combout\);

-- Location: LCCOMB_X10_Y4_N26
\inst3|Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~8_combout\ = \inst3|digit1\(2) $ (\inst3|Add7~7\ $ (!\inst3|Add6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|digit1\(2),
	datad => \inst3|Add6~0_combout\,
	cin => \inst3|Add7~7\,
	combout => \inst3|Add7~8_combout\);

-- Location: LCCOMB_X9_Y4_N2
\inst3|Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~10_combout\ = (\inst2|flag~combout\ & ((\inst3|Add7~8_combout\))) # (!\inst2|flag~combout\ & (\inst3|Add10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|flag~combout\,
	datab => \inst3|Add10~10_combout\,
	datac => \inst3|Add7~8_combout\,
	combout => \inst3|Add7~10_combout\);

-- Location: LCFF_X9_Y4_N3
\inst3|hours[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add7~10_combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(5));

-- Location: LCCOMB_X9_Y4_N16
\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X8_Y4_N4
\inst3|Div0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst3|hours\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|hours\(5),
	combout => \inst3|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X8_Y4_N22
\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst3|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\inst3|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Div0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \inst3|Div0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X8_Y4_N24
\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X7_Y5_N24
\inst3|digit1[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit1[1]~11_combout\ = !\inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|digit1[1]~11_combout\);

-- Location: LCFF_X7_Y5_N25
\inst3|digit1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit1[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit1\(1));

-- Location: LCCOMB_X10_Y4_N16
\inst3|Add7~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add7~12_combout\ = (\inst2|flag~combout\ & ((!\inst3|Add7~2_combout\))) # (!\inst2|flag~combout\ & (!\inst3|Add10~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add10~4_combout\,
	datac => \inst3|Add7~2_combout\,
	datad => \inst2|flag~combout\,
	combout => \inst3|Add7~12_combout\);

-- Location: LCFF_X10_Y4_N17
\inst3|hours[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ALT_INV_ptflag~clkctrl_outclk\,
	datain => \inst3|Add7~12_combout\,
	ena => \inst3|hours[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|hours\(2));

-- Location: LCCOMB_X9_Y5_N24
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst3|hours\(3) $ (VCC)
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst3|hours\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(3),
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X9_Y5_N30
\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X9_Y5_N22
\inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ = (\inst3|hours\(5) & \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(5),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\);

-- Location: LCCOMB_X9_Y5_N14
\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\ = (!\inst3|hours\(4) & \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(4),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\);

-- Location: LCCOMB_X9_Y5_N18
\inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\ = (\inst3|hours\(3) & \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(3),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[16]~20_combout\);

-- Location: LCCOMB_X8_Y5_N28
\inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\ = (!\inst3|hours\(2) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(2),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[15]~23_combout\);

-- Location: LCCOMB_X9_Y5_N4
\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\)))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~19_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[17]~18_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X9_Y5_N6
\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\ & 
-- !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~17_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[18]~16_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X9_Y5_N8
\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y5_N0
\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ = (!\inst3|hours\(2) & \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(2),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\);

-- Location: LCCOMB_X10_Y5_N4
\inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\);

-- Location: LCCOMB_X10_Y5_N18
\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst3|hours\(3))) # 
-- (!\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|hours\(3),
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\);

-- Location: LCCOMB_X10_Y5_N2
\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\ = (!\inst3|hours\(1) & !\inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|hours\(1),
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\);

-- Location: LCCOMB_X10_Y5_N6
\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\) # (\inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~24_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[20]~25_combout\,
	datad => VCC,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X10_Y5_N8
\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ & 
-- (!\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\ & 
-- !\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X10_Y5_N10
\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))))
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- (\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X10_Y5_N12
\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\ & (!\inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\ & 
-- !\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~33_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[23]~26_combout\,
	datad => VCC,
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y5_N14
\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X10_Y5_N22
\inst3|Mod0|auto_generated|divider|divider|StageOut[27]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- ((\inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCFF_X10_Y5_N23
\inst3|digit2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod0|auto_generated|divider|divider|StageOut[27]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit2\(2));

-- Location: LCCOMB_X14_Y5_N8
\inst5|cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[1]~2_combout\ = \inst5|cnt\(1) $ (\inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datad => \inst5|cnt\(0),
	combout => \inst5|cnt[1]~2_combout\);

-- Location: LCFF_X13_Y5_N9
\inst5|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	sdata => \inst5|cnt[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(1));

-- Location: LCCOMB_X13_Y5_N10
\inst5|cnt[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt[2]~3_combout\ = \inst5|cnt\(2) $ (((\inst5|cnt\(0) & \inst5|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(2),
	datad => \inst5|cnt\(1),
	combout => \inst5|cnt[2]~3_combout\);

-- Location: LCFF_X13_Y5_N11
\inst5|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(2));

-- Location: LCCOMB_X13_Y5_N28
\inst5|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|cnt~1_combout\ = (!\inst5|cnt\(0) & (((\inst5|cnt\(1)) # (\inst5|cnt\(2))) # (!\inst5|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(3),
	datab => \inst5|cnt\(1),
	datac => \inst5|cnt\(0),
	datad => \inst5|cnt\(2),
	combout => \inst5|cnt~1_combout\);

-- Location: LCFF_X13_Y5_N29
\inst5|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|cnt\(0));

-- Location: LCCOMB_X13_Y5_N8
\inst5|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal5~0_combout\ = (!\inst5|cnt\(3) & (!\inst5|cnt\(0) & (!\inst5|cnt\(1) & !\inst5|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(3),
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(1),
	datad => \inst5|cnt\(2),
	combout => \inst5|Equal5~0_combout\);

-- Location: LCCOMB_X14_Y5_N14
\inst5|digout~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~11_combout\ = (!\inst5|digbuff\(2) & (!\inst5|Equal5~0_combout\ & (!\inst5|digbuff\(1) & !\inst5|digbuff\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digbuff\(2),
	datab => \inst5|Equal5~0_combout\,
	datac => \inst5|digbuff\(1),
	datad => \inst5|digbuff\(3),
	combout => \inst5|digout~11_combout\);

-- Location: LCCOMB_X13_Y5_N14
\inst5|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal3~0_combout\ = (!\inst5|cnt\(0) & (!\inst5|cnt\(1) & !\inst5|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(1),
	datad => \inst5|cnt\(2),
	combout => \inst5|Equal3~0_combout\);

-- Location: LCCOMB_X13_Y5_N12
\inst5|digout[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout[1]~5_combout\ = (\inst5|digbuff\(0) & ((\inst5|digbuff\(3) & ((\inst5|digbuff\(1)) # (\inst5|digbuff\(2)))) # (!\inst5|digbuff\(3) & (\inst5|digbuff\(1) $ (!\inst5|digbuff\(2)))))) # (!\inst5|digbuff\(0) & ((\inst5|digbuff\(3)) # 
-- ((\inst5|digbuff\(1)) # (\inst5|digbuff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digbuff\(0),
	datab => \inst5|digbuff\(3),
	datac => \inst5|digbuff\(1),
	datad => \inst5|digbuff\(2),
	combout => \inst5|digout[1]~5_combout\);

-- Location: LCCOMB_X13_Y5_N22
\inst5|digout[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout[1]~6_combout\ = (\inst5|Equal3~0_combout\ & ((!\inst5|digout[1]~5_combout\) # (!\inst5|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(3),
	datac => \inst5|Equal3~0_combout\,
	datad => \inst5|digout[1]~5_combout\,
	combout => \inst5|digout[1]~6_combout\);

-- Location: LCFF_X14_Y5_N15
\inst5|digout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|digout~11_combout\,
	ena => \inst5|digout[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digout\(1));

-- Location: LCFF_X13_Y5_N5
\inst5|digbuff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	sdata => \inst5|digout\(1),
	sload => VCC,
	ena => \inst5|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digbuff\(1));

-- Location: LCCOMB_X14_Y5_N16
\inst5|digout~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~12_combout\ = (!\inst5|digbuff\(2) & (!\inst5|Equal5~0_combout\ & (\inst5|digbuff\(1) & !\inst5|digbuff\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digbuff\(2),
	datab => \inst5|Equal5~0_combout\,
	datac => \inst5|digbuff\(1),
	datad => \inst5|digbuff\(3),
	combout => \inst5|digout~12_combout\);

-- Location: LCFF_X14_Y5_N17
\inst5|digout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|digout~12_combout\,
	ena => \inst5|digout[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digout\(2));

-- Location: LCFF_X13_Y5_N1
\inst5|digbuff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	sdata => \inst5|digout\(2),
	sload => VCC,
	ena => \inst5|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digbuff\(2));

-- Location: LCCOMB_X14_Y5_N24
\inst5|digout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~4_combout\ = (!\inst5|Equal5~0_combout\ & (\inst5|digbuff\(2) & !\inst5|digbuff\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|Equal5~0_combout\,
	datac => \inst5|digbuff\(2),
	datad => \inst5|digbuff\(3),
	combout => \inst5|digout~4_combout\);

-- Location: LCFF_X14_Y5_N25
\inst5|digout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|digout~4_combout\,
	ena => \inst5|digout[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digout\(3));

-- Location: LCFF_X13_Y5_N19
\inst5|digbuff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	sdata => \inst5|digout\(3),
	sload => VCC,
	ena => \inst5|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digbuff\(3));

-- Location: LCCOMB_X13_Y5_N4
\inst5|digit[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digit[3]~0_combout\ = (\inst5|digbuff\(3)) # ((\inst5|digbuff\(1) & !\inst5|digbuff\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|digbuff\(3),
	datac => \inst5|digbuff\(1),
	datad => \inst5|digbuff\(2),
	combout => \inst5|digit[3]~0_combout\);

-- Location: LCCOMB_X15_Y3_N0
\inst3|Mod1|auto_generated|divider|divider|StageOut[27]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\ = (\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\) # 
-- ((\inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\)))) # (!\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~29_combout\,
	datab => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst3|Mod1|auto_generated|divider|divider|StageOut[21]~28_combout\,
	datad => \inst3|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst3|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\);

-- Location: LCFF_X15_Y3_N1
\inst3|digit4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod1|auto_generated|divider|divider|StageOut[27]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit4\(2));

-- Location: LCCOMB_X14_Y5_N0
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst5|digout~7_combout\ & (((\inst5|digit[3]~0_combout\)))) # (!\inst5|digout~7_combout\ & ((\inst5|digit[3]~0_combout\ & (\inst3|digit1\(2))) # (!\inst5|digit[3]~0_combout\ & ((\inst3|digit4\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst3|digit1\(2),
	datac => \inst5|digit[3]~0_combout\,
	datad => \inst3|digit4\(2),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y5_N28
\inst5|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~1_combout\ = (\inst5|digout~7_combout\ & ((\inst5|Mux5~0_combout\ & ((\inst3|digit3\(2)))) # (!\inst5|Mux5~0_combout\ & (\inst3|digit2\(2))))) # (!\inst5|digout~7_combout\ & (((\inst5|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst3|digit2\(2),
	datac => \inst3|digit3\(2),
	datad => \inst5|Mux5~0_combout\,
	combout => \inst5|Mux5~1_combout\);

-- Location: LCCOMB_X13_Y5_N30
\inst5|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Equal3~1_combout\ = (\inst5|cnt\(3) & (!\inst5|cnt\(0) & (!\inst5|cnt\(1) & !\inst5|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(3),
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(1),
	datad => \inst5|cnt\(2),
	combout => \inst5|Equal3~1_combout\);

-- Location: LCCOMB_X14_Y5_N20
\inst5|digit[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digit[3]~1_combout\ = (\inst5|Equal3~1_combout\ & !\inst5|digout[1]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|Equal3~1_combout\,
	datad => \inst5|digout[1]~5_combout\,
	combout => \inst5|digit[3]~1_combout\);

-- Location: LCFF_X14_Y5_N29
\inst5|digit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|Mux5~1_combout\,
	ena => \inst5|digit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digit\(2));

-- Location: LCCOMB_X10_Y5_N28
\inst3|Mod0|auto_generated|divider|divider|StageOut[26]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\inst3|hours\(1)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ 
-- & (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst3|hours\(1),
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\);

-- Location: LCFF_X10_Y5_N29
\inst3|digit2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod0|auto_generated|divider|divider|StageOut[26]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit2\(1));

-- Location: LCCOMB_X14_Y5_N18
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst5|digout~7_combout\ & ((\inst5|digit[3]~0_combout\) # ((\inst3|digit2\(1))))) # (!\inst5|digout~7_combout\ & (!\inst5|digit[3]~0_combout\ & (\inst3|digit4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst5|digit[3]~0_combout\,
	datac => \inst3|digit4\(1),
	datad => \inst3|digit2\(1),
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y5_N30
\inst5|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~1_combout\ = (\inst5|digit[3]~0_combout\ & ((\inst5|Mux6~0_combout\ & (!\inst3|digit3\(1))) # (!\inst5|Mux6~0_combout\ & ((!\inst3|digit1\(1)))))) # (!\inst5|digit[3]~0_combout\ & (((!\inst5|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|digit3\(1),
	datab => \inst5|digit[3]~0_combout\,
	datac => \inst3|digit1\(1),
	datad => \inst5|Mux6~0_combout\,
	combout => \inst5|Mux6~1_combout\);

-- Location: LCFF_X14_Y5_N31
\inst5|digit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|Mux6~1_combout\,
	ena => \inst5|digit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digit\(1));

-- Location: LCCOMB_X15_Y5_N26
\inst3|digit2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit2[0]~0_combout\ = !\inst3|hours\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|hours\(0),
	combout => \inst3|digit2[0]~0_combout\);

-- Location: LCFF_X15_Y5_N27
\inst3|digit2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit2[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit2\(0));

-- Location: LCCOMB_X15_Y5_N4
\inst3|digit4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|digit4[0]~0_combout\ = !\inst3|minutes\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|minutes\(0),
	combout => \inst3|digit4[0]~0_combout\);

-- Location: LCFF_X15_Y5_N5
\inst3|digit4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|digit4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit4\(0));

-- Location: LCCOMB_X14_Y5_N2
\inst5|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~0_combout\ = (\inst5|digout~7_combout\ & (((\inst5|digit[3]~0_combout\)))) # (!\inst5|digout~7_combout\ & ((\inst5|digit[3]~0_combout\ & ((\inst3|digit1\(0)))) # (!\inst5|digit[3]~0_combout\ & (\inst3|digit4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst3|digit4\(0),
	datac => \inst5|digit[3]~0_combout\,
	datad => \inst3|digit1\(0),
	combout => \inst5|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y5_N12
\inst5|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux7~1_combout\ = (\inst5|digout~7_combout\ & ((\inst5|Mux7~0_combout\ & ((!\inst3|digit3\(0)))) # (!\inst5|Mux7~0_combout\ & (!\inst3|digit2\(0))))) # (!\inst5|digout~7_combout\ & (((!\inst5|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst3|digit2\(0),
	datac => \inst3|digit3\(0),
	datad => \inst5|Mux7~0_combout\,
	combout => \inst5|Mux7~1_combout\);

-- Location: LCFF_X14_Y5_N13
\inst5|digit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|Mux7~1_combout\,
	ena => \inst5|digit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digit\(0));

-- Location: LCCOMB_X15_Y5_N20
\inst5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|WideOr0~0_combout\ = (\inst5|digit\(2) & (!\inst5|digit\(3) & ((\inst5|digit\(1)) # (\inst5|digit\(0))))) # (!\inst5|digit\(2) & (\inst5|digit\(3) $ ((!\inst5|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digit\(3),
	datab => \inst5|digit\(2),
	datac => \inst5|digit\(1),
	datad => \inst5|digit\(0),
	combout => \inst5|WideOr0~0_combout\);

-- Location: LCCOMB_X12_Y5_N8
\inst5|seg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~0_combout\ = (\inst2|pos\(0) & (!\inst5|digit\(0) & (\inst2|pos\(1) $ (\inst5|digit\(1))))) # (!\inst2|pos\(0) & (\inst5|digit\(0) & (\inst2|pos\(1) $ (\inst5|digit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pos\(0),
	datab => \inst2|pos\(1),
	datac => \inst5|digit\(0),
	datad => \inst5|digit\(1),
	combout => \inst5|seg~0_combout\);

-- Location: LCCOMB_X10_Y5_N24
\inst3|Mod0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\) # 
-- ((\inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\)))) # (!\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (((\inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~27_combout\,
	datab => \inst3|Mod0|auto_generated|divider|divider|StageOut[22]~34_combout\,
	datac => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst3|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst3|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCFF_X10_Y5_N25
\inst3|digit2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|ptflag~clkctrl_outclk\,
	datain => \inst3|Mod0|auto_generated|divider|divider|StageOut[28]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|digit2\(3));

-- Location: LCCOMB_X14_Y5_N10
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (!\inst5|digit[3]~0_combout\ & ((\inst5|digout~7_combout\ & (\inst3|digit2\(3))) # (!\inst5|digout~7_combout\ & ((\inst3|digit4\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~7_combout\,
	datab => \inst5|digit[3]~0_combout\,
	datac => \inst3|digit2\(3),
	datad => \inst3|digit4\(3),
	combout => \inst5|Mux4~0_combout\);

-- Location: LCFF_X14_Y5_N11
\inst5|digit[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|Mux4~0_combout\,
	ena => \inst5|digit[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digit\(3));

-- Location: LCCOMB_X12_Y5_N30
\inst5|seg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~1_combout\ = (!\inst5|digit\(3) & (\inst5|digit\(2) $ (!\inst2|pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|digit\(3),
	datac => \inst5|digit\(2),
	datad => \inst2|pos\(2),
	combout => \inst5|seg~1_combout\);

-- Location: LCCOMB_X12_Y5_N12
\inst5|seg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~2_combout\ = (\inst5|Equal3~1_combout\ & (((\inst5|seg~0_combout\ & \inst5|seg~1_combout\)) # (!\inst5|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal3~1_combout\,
	datab => \inst5|seg~0_combout\,
	datac => \inst5|always1~1_combout\,
	datad => \inst5|seg~1_combout\,
	combout => \inst5|seg~2_combout\);

-- Location: LCCOMB_X12_Y5_N22
\inst5|seg~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~4_combout\ = (\inst5|seg~2_combout\ & (((\inst5|always1~1_combout\) # (!\inst5|WideOr0~0_combout\)))) # (!\inst5|seg~2_combout\ & (\inst5|seg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|seg\(5),
	datab => \inst5|always1~1_combout\,
	datac => \inst5|WideOr0~0_combout\,
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~4_combout\);

-- Location: LCFF_X12_Y5_N23
\inst5|seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(6));

-- Location: LCCOMB_X12_Y5_N16
\inst5|seg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|seg~3_combout\ = (\inst5|seg\(6)) # (\inst5|seg~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|seg\(6),
	datad => \inst5|seg~2_combout\,
	combout => \inst5|seg~3_combout\);

-- Location: LCFF_X12_Y5_N17
\inst5|seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|seg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|seg\(7));

-- Location: LCCOMB_X13_Y5_N18
\inst5|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|always1~0_combout\ = (\inst5|digbuff\(0) & (!\inst5|digbuff\(1) & (\inst5|digbuff\(3) & !\inst5|digbuff\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digbuff\(0),
	datab => \inst5|digbuff\(1),
	datac => \inst5|digbuff\(3),
	datad => \inst5|digbuff\(2),
	combout => \inst5|always1~0_combout\);

-- Location: LCCOMB_X13_Y5_N6
\inst5|segout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|segout~0_combout\ = (\inst5|seg\(7) & (((\inst3|ptflag~regout\) # (!\inst5|always1~0_combout\)) # (!\inst5|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal5~0_combout\,
	datab => \inst5|seg\(7),
	datac => \inst5|always1~0_combout\,
	datad => \inst3|ptflag~regout\,
	combout => \inst5|segout~0_combout\);

-- Location: LCFF_X13_Y5_N7
\inst5|segout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|segout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|segout~regout\);

-- Location: LCCOMB_X13_Y5_N16
\inst5|digout~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~8_combout\ = (\inst5|Equal3~1_combout\ & (\inst5|digbuff\(3) $ (!\inst5|digout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|digbuff\(3),
	datac => \inst5|digout\(0),
	datad => \inst5|Equal3~1_combout\,
	combout => \inst5|digout~8_combout\);

-- Location: LCCOMB_X13_Y5_N24
\inst5|digout~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|digout~10_combout\ = (\inst5|Equal5~0_combout\) # ((\inst5|digout~8_combout\ & (!\inst5|digout~9_combout\)) # (!\inst5|digout~8_combout\ & ((\inst5|digout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|digout~9_combout\,
	datab => \inst5|Equal5~0_combout\,
	datac => \inst5|digout\(0),
	datad => \inst5|digout~8_combout\,
	combout => \inst5|digout~10_combout\);

-- Location: LCFF_X13_Y5_N25
\inst5|digout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst5|led_clk~clkctrl_outclk\,
	datain => \inst5|digout~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|digout\(0));

-- Location: LCCOMB_X32_Y5_N0
\inst5|led_clk_x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|led_clk_x~0_combout\ = (\inst5|led_clk~regout\) # (((\inst5|digout\(2)) # (\inst5|digout\(1))) # (!\inst5|digout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|led_clk~regout\,
	datab => \inst5|digout\(0),
	datac => \inst5|digout\(2),
	datad => \inst5|digout\(1),
	combout => \inst5|led_clk_x~0_combout\);

-- Location: LCCOMB_X32_Y5_N22
\inst5|led_clk_x~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|led_clk_x~1_combout\ = (\inst5|digout\(3)) # (\inst5|led_clk_x~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|digout\(3),
	datad => \inst5|led_clk_x~0_combout\,
	combout => \inst5|led_clk_x~1_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst5|segout~regout\,
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
	datain => \inst5|ALT_INV_led_clk_x~1_combout\,
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
	datain => \inst5|digout\(3),
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
	datain => \inst5|digout\(2),
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
	datain => \inst5|digout\(1),
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
	datain => \inst5|ALT_INV_digout\(0),
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
	datain => \inst|ALT_INV_row\(3),
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
	datain => \inst|ALT_INV_row\(2),
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
	datain => \inst|ALT_INV_row\(1),
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
	datain => \inst|row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(0));
END structure;


