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

-- DATE "05/11/2017 19:39:16"

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

ENTITY 	freq IS
    PORT (
	led_rst : OUT std_logic;
	clk : IN std_logic;
	\signal\ : IN std_logic;
	segout : OUT std_logic;
	led_clk_x : OUT std_logic;
	digout : OUT std_logic_vector(3 DOWNTO 0)
	);
END freq;

-- Design Ports Information
-- led_rst	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- signal	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- segout	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led_clk_x	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[3]	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[2]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- digout[0]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF freq IS
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
SIGNAL \ww_signal\ : std_logic;
SIGNAL ww_segout : std_logic;
SIGNAL ww_led_clk_x : std_logic;
SIGNAL ww_digout : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|led_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|tictoc~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|led_clk~0_combout\ : std_logic;
SIGNAL \inst|led_clk~regout\ : std_logic;
SIGNAL \inst|led_clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst|cnt[2]~3_combout\ : std_logic;
SIGNAL \inst|cnt~1_combout\ : std_logic;
SIGNAL \inst|cnt[1]~2_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|digout~3_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|digout[3]~2_combout\ : std_logic;
SIGNAL \inst|digout~4_combout\ : std_logic;
SIGNAL \inst|digout~5_combout\ : std_logic;
SIGNAL \inst|digout~0_combout\ : std_logic;
SIGNAL \inst|digout~6_combout\ : std_logic;
SIGNAL \inst|digout~7_combout\ : std_logic;
SIGNAL \inst|digout[3]~1_combout\ : std_logic;
SIGNAL \inst|digit[0]~0_combout\ : std_logic;
SIGNAL \inst|seg~3_combout\ : std_logic;
SIGNAL \inst|seg~2_combout\ : std_logic;
SIGNAL \inst|seg~1_combout\ : std_logic;
SIGNAL \inst|seg~0_combout\ : std_logic;
SIGNAL \inst|segout~regout\ : std_logic;
SIGNAL \inst|led_clk_x~0_combout\ : std_logic;
SIGNAL \inst|led_clk_x~1_combout\ : std_logic;
SIGNAL \inst|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|seg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|digout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|tictoc\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|digbuff\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|digit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_led_clk_x~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_digout\ : std_logic_vector(0 DOWNTO 0);

BEGIN

led_rst <= ww_led_rst;
ww_clk <= clk;
\ww_signal\ <= \signal\;
segout <= ww_segout;
led_clk_x <= ww_led_clk_x;
digout <= ww_digout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|led_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|led_clk~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst|ALT_INV_led_clk_x~1_combout\ <= NOT \inst|led_clk_x~1_combout\;
\inst|ALT_INV_digout\(0) <= NOT \inst|digout\(0);

-- Location: LCCOMB_X1_Y9_N16
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|tictoc\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|tictoc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X1_Y9_N24
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|tictoc\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|tictoc\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|tictoc\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X1_Y8_N6
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|tictoc\(11) & (!\inst|Add0~21\)) # (!\inst|tictoc\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|tictoc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X1_Y8_N10
\inst|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|tictoc\(13) & (!\inst|Add0~25\)) # (!\inst|tictoc\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|tictoc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCFF_X1_Y9_N17
\inst|tictoc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(0));

-- Location: LCFF_X1_Y9_N25
\inst|tictoc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(4));

-- Location: LCCOMB_X1_Y9_N10
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|tictoc\(4) & (!\inst|tictoc\(6) & (!\inst|tictoc\(5) & !\inst|tictoc\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(4),
	datab => \inst|tictoc\(6),
	datac => \inst|tictoc\(5),
	datad => \inst|tictoc\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCFF_X1_Y8_N7
\inst|tictoc[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(11));

-- Location: LCFF_X1_Y8_N11
\inst|tictoc[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(13));

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

-- Location: LCCOMB_X1_Y9_N18
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|tictoc\(1) & (!\inst|Add0~1\)) # (!\inst|tictoc\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|tictoc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X1_Y9_N20
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|tictoc\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|tictoc\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|tictoc\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCFF_X1_Y9_N21
\inst|tictoc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(2));

-- Location: LCCOMB_X1_Y9_N14
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|tictoc\(0) & (!\inst|tictoc\(1) & (!\inst|tictoc\(2) & !\inst|tictoc\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(0),
	datab => \inst|tictoc\(1),
	datac => \inst|tictoc\(2),
	datad => \inst|tictoc\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y8_N22
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|tictoc\(11) & (!\inst|tictoc\(8) & (!\inst|tictoc\(10) & !\inst|tictoc\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(11),
	datab => \inst|tictoc\(8),
	datac => \inst|tictoc\(10),
	datad => \inst|tictoc\(9),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|tictoc\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|tictoc\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|tictoc\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCFF_X1_Y8_N13
\inst|tictoc[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(14));

-- Location: LCCOMB_X1_Y8_N20
\inst|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|tictoc\(13) & (!\inst|tictoc\(12) & (!\inst|tictoc\(15) & !\inst|tictoc\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|tictoc\(13),
	datab => \inst|tictoc\(12),
	datac => \inst|tictoc\(15),
	datad => \inst|tictoc\(14),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X1_Y9_N2
\inst|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y9_N8
\inst|tictoc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|tictoc~0_combout\ = (\inst|Add0~2_combout\ & ((\inst|tictoc\(16)) # (!\inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(16),
	datac => \inst|Add0~2_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|tictoc~0_combout\);

-- Location: LCFF_X1_Y9_N9
\inst|tictoc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|tictoc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(1));

-- Location: LCCOMB_X1_Y9_N22
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|tictoc\(3) & (!\inst|Add0~5\)) # (!\inst|tictoc\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|tictoc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCFF_X1_Y9_N23
\inst|tictoc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(3));

-- Location: LCCOMB_X1_Y9_N26
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|tictoc\(5) & (!\inst|Add0~9\)) # (!\inst|tictoc\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|tictoc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCFF_X1_Y9_N27
\inst|tictoc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(5));

-- Location: LCCOMB_X1_Y9_N28
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|tictoc\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|tictoc\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|tictoc\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCFF_X1_Y9_N29
\inst|tictoc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(6));

-- Location: LCCOMB_X1_Y9_N30
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|tictoc\(7) & (!\inst|Add0~13\)) # (!\inst|tictoc\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|tictoc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCFF_X1_Y9_N31
\inst|tictoc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(7));

-- Location: LCCOMB_X1_Y8_N0
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|tictoc\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|tictoc\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|tictoc\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCFF_X1_Y8_N1
\inst|tictoc[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(8));

-- Location: LCCOMB_X1_Y8_N2
\inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|tictoc\(9) & (!\inst|Add0~17\)) # (!\inst|tictoc\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|tictoc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCFF_X1_Y8_N3
\inst|tictoc[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(9));

-- Location: LCCOMB_X1_Y8_N4
\inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|tictoc\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|tictoc\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|tictoc\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCFF_X1_Y8_N5
\inst|tictoc[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(10));

-- Location: LCCOMB_X1_Y8_N8
\inst|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|tictoc\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|tictoc\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|tictoc\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCFF_X1_Y8_N9
\inst|tictoc[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(12));

-- Location: LCCOMB_X1_Y8_N14
\inst|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|tictoc\(15) & (!\inst|Add0~29\)) # (!\inst|tictoc\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|tictoc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCFF_X1_Y8_N15
\inst|tictoc[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(15));

-- Location: LCCOMB_X1_Y8_N16
\inst|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = \inst|Add0~31\ $ (!\inst|tictoc\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|tictoc\(16),
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\);

-- Location: LCFF_X1_Y8_N17
\inst|tictoc[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|tictoc\(16));

-- Location: LCCOMB_X1_Y9_N12
\inst|led_clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|led_clk~0_combout\ = \inst|led_clk~regout\ $ (((!\inst|tictoc\(16) & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|tictoc\(16),
	datac => \inst|led_clk~regout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|led_clk~0_combout\);

-- Location: LCFF_X1_Y9_N13
\inst|led_clk\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|led_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|led_clk~regout\);

-- Location: CLKCTRL_G3
\inst|led_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|led_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|led_clk~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y18_N22
\inst|cnt[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[2]~3_combout\ = \inst|cnt\(2) $ (((\inst|cnt\(1) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(0),
	combout => \inst|cnt[2]~3_combout\);

-- Location: LCFF_X26_Y18_N23
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|cnt[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X26_Y18_N4
\inst|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~1_combout\ = (!\inst|cnt\(0) & (((\inst|cnt\(1)) # (\inst|cnt\(2))) # (!\inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(2),
	combout => \inst|cnt~1_combout\);

-- Location: LCFF_X26_Y18_N5
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCCOMB_X26_Y18_N2
\inst|cnt[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[1]~2_combout\ = \inst|cnt\(1) $ (\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst|cnt[1]~2_combout\);

-- Location: LCFF_X26_Y18_N3
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|cnt[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X26_Y18_N16
\inst|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (\inst|cnt\(2) & (\inst|cnt\(3) $ (((\inst|cnt\(1) & \inst|cnt\(0)))))) # (!\inst|cnt\(2) & (\inst|cnt\(3) & ((\inst|cnt\(1)) # (\inst|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(3),
	datad => \inst|cnt\(0),
	combout => \inst|cnt~0_combout\);

-- Location: LCFF_X26_Y18_N17
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCCOMB_X26_Y18_N20
\inst|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|cnt\(3) & (!\inst|cnt\(0) & (!\inst|cnt\(1) & !\inst|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst|digout~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~3_combout\ = (!\inst|digbuff\(3) & (!\inst|digbuff\(2) & (!\inst|digbuff\(1) & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digbuff\(3),
	datab => \inst|digbuff\(2),
	datac => \inst|digbuff\(1),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|digout~3_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|cnt\(0) & (!\inst|cnt\(1) & !\inst|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(1),
	datad => \inst|cnt\(2),
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst|digout[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout[3]~2_combout\ = (\inst|Equal3~0_combout\ & ((!\inst|digout[3]~1_combout\) # (!\inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|digout[3]~1_combout\,
	datad => \inst|Equal3~0_combout\,
	combout => \inst|digout[3]~2_combout\);

-- Location: LCFF_X25_Y18_N31
\inst|digout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|digout~3_combout\,
	ena => \inst|digout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digout\(1));

-- Location: LCFF_X26_Y18_N13
\inst|digbuff[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	sdata => \inst|digout\(1),
	sload => VCC,
	ena => \inst|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digbuff\(1));

-- Location: LCCOMB_X25_Y18_N0
\inst|digout~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~4_combout\ = (!\inst|digbuff\(3) & (!\inst|digbuff\(2) & (\inst|digbuff\(1) & !\inst|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digbuff\(3),
	datab => \inst|digbuff\(2),
	datac => \inst|digbuff\(1),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|digout~4_combout\);

-- Location: LCFF_X25_Y18_N1
\inst|digout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|digout~4_combout\,
	ena => \inst|digout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digout\(2));

-- Location: LCFF_X26_Y18_N11
\inst|digbuff[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	sdata => \inst|digout\(2),
	sload => VCC,
	ena => \inst|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digbuff\(2));

-- Location: LCCOMB_X26_Y18_N12
\inst|digout~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~5_combout\ = (\inst|digbuff\(0) & ((\inst|digbuff\(1) & (!\inst|digout\(0) & \inst|digbuff\(2))) # (!\inst|digbuff\(1) & ((!\inst|digbuff\(2)))))) # (!\inst|digbuff\(0) & (!\inst|digout\(0) & ((\inst|digbuff\(1)) # (\inst|digbuff\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digout\(0),
	datab => \inst|digbuff\(0),
	datac => \inst|digbuff\(1),
	datad => \inst|digbuff\(2),
	combout => \inst|digout~5_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst|digout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~0_combout\ = (!\inst|digbuff\(3) & (\inst|digbuff\(2) & !\inst|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digbuff\(3),
	datac => \inst|digbuff\(2),
	datad => \inst|Equal4~0_combout\,
	combout => \inst|digout~0_combout\);

-- Location: LCFF_X25_Y18_N21
\inst|digout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|digout~0_combout\,
	ena => \inst|digout[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digout\(3));

-- Location: LCFF_X26_Y18_N19
\inst|digbuff[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	sdata => \inst|digout\(3),
	sload => VCC,
	ena => \inst|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digbuff\(3));

-- Location: LCCOMB_X26_Y18_N18
\inst|digout~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~6_combout\ = (\inst|digout\(0) & (\inst|digout~5_combout\ & \inst|digbuff\(3))) # (!\inst|digout\(0) & ((\inst|digout~5_combout\) # (\inst|digbuff\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digout\(0),
	datab => \inst|digout~5_combout\,
	datac => \inst|digbuff\(3),
	combout => \inst|digout~6_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst|digout~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout~7_combout\ = (\inst|Equal3~0_combout\ & (((!\inst|digout~6_combout\)) # (!\inst|cnt\(3)))) # (!\inst|Equal3~0_combout\ & (((\inst|digout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|cnt\(3),
	datac => \inst|digout\(0),
	datad => \inst|digout~6_combout\,
	combout => \inst|digout~7_combout\);

-- Location: LCFF_X26_Y18_N25
\inst|digout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|digout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digout\(0));

-- Location: LCFF_X26_Y18_N15
\inst|digbuff[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	sdata => \inst|digout\(0),
	sload => VCC,
	ena => \inst|Equal4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digbuff\(0));

-- Location: LCCOMB_X26_Y18_N14
\inst|digout[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digout[3]~1_combout\ = (\inst|digbuff\(3) & ((\inst|digbuff\(2)) # ((\inst|digbuff\(1)) # (!\inst|digbuff\(0))))) # (!\inst|digbuff\(3) & ((\inst|digbuff\(2) & ((\inst|digbuff\(1)) # (!\inst|digbuff\(0)))) # (!\inst|digbuff\(2) & (\inst|digbuff\(0) 
-- $ (\inst|digbuff\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digbuff\(3),
	datab => \inst|digbuff\(2),
	datac => \inst|digbuff\(0),
	datad => \inst|digbuff\(1),
	combout => \inst|digout[3]~1_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst|digit[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|digit[0]~0_combout\ = (\inst|digit\(0)) # ((\inst|Equal3~0_combout\ & (\inst|cnt\(3) & !\inst|digout[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|cnt\(3),
	datac => \inst|digit\(0),
	datad => \inst|digout[3]~1_combout\,
	combout => \inst|digit[0]~0_combout\);

-- Location: LCFF_X26_Y18_N9
\inst|digit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|digit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|digit\(0));

-- Location: LCCOMB_X26_Y18_N6
\inst|seg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seg~3_combout\ = (\inst|Equal3~0_combout\ & (\inst|cnt\(3) & !\inst|digit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datac => \inst|cnt\(3),
	datad => \inst|digit\(0),
	combout => \inst|seg~3_combout\);

-- Location: LCFF_X26_Y18_N7
\inst|seg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|seg~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seg\(4));

-- Location: LCCOMB_X26_Y18_N26
\inst|seg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seg~2_combout\ = (\inst|cnt\(3) & ((\inst|Equal3~0_combout\ & (!\inst|digit\(0))) # (!\inst|Equal3~0_combout\ & ((\inst|seg\(4)))))) # (!\inst|cnt\(3) & (((\inst|seg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digit\(0),
	datab => \inst|seg\(4),
	datac => \inst|cnt\(3),
	datad => \inst|Equal3~0_combout\,
	combout => \inst|seg~2_combout\);

-- Location: LCFF_X26_Y18_N27
\inst|seg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|seg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seg\(5));

-- Location: LCCOMB_X26_Y18_N0
\inst|seg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seg~1_combout\ = (\inst|Equal3~0_combout\ & ((\inst|cnt\(3) & ((\inst|digit\(0)))) # (!\inst|cnt\(3) & (\inst|seg\(5))))) # (!\inst|Equal3~0_combout\ & (((\inst|seg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datab => \inst|cnt\(3),
	datac => \inst|seg\(5),
	datad => \inst|digit\(0),
	combout => \inst|seg~1_combout\);

-- Location: LCFF_X26_Y18_N1
\inst|seg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|seg~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seg\(6));

-- Location: LCCOMB_X26_Y18_N28
\inst|seg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|seg~0_combout\ = (\inst|seg\(6)) # ((\inst|Equal3~0_combout\ & \inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal3~0_combout\,
	datac => \inst|cnt\(3),
	datad => \inst|seg\(6),
	combout => \inst|seg~0_combout\);

-- Location: LCFF_X26_Y18_N29
\inst|seg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	datain => \inst|seg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|seg\(7));

-- Location: LCFF_X26_Y18_N31
\inst|segout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|led_clk~clkctrl_outclk\,
	sdata => \inst|seg\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|segout~regout\);

-- Location: LCCOMB_X25_Y18_N14
\inst|led_clk_x~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|led_clk_x~0_combout\ = ((\inst|digout\(2)) # ((\inst|led_clk~regout\) # (\inst|digout\(1)))) # (!\inst|digout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digout\(0),
	datab => \inst|digout\(2),
	datac => \inst|led_clk~regout\,
	datad => \inst|digout\(1),
	combout => \inst|led_clk_x~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst|led_clk_x~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|led_clk_x~1_combout\ = (\inst|digout\(3)) # (\inst|led_clk_x~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|digout\(3),
	datac => \inst|led_clk_x~0_combout\,
	combout => \inst|led_clk_x~1_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\signal~I\ : cycloneii_io
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
	padio => \ww_signal\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|segout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segout);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|ALT_INV_led_clk_x~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led_clk_x);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|digout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(3));

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|digout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(2));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|digout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(1));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|ALT_INV_digout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_digout(0));
END structure;


