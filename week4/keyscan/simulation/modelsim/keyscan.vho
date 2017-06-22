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

-- DATE "04/20/2017 20:19:50"

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

ENTITY 	Block1 IS
    PORT (
	keyr : OUT std_logic_vector(3 DOWNTO 0);
	clk50m : IN std_logic;
	keyc : IN std_logic_vector(2 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END Block1;

-- Design Ports Information
-- keyr[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyr[2]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyr[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyr[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyc[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keyc[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keyc[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50m	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_keyr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk50m : std_logic;
SIGNAL ww_keyc : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clk5ms~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50m~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \clk50m~combout\ : std_logic;
SIGNAL \clk50m~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cnt25~0_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|cnt25~1_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|cnt25~2_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|clk5ms~0_combout\ : std_logic;
SIGNAL \inst|clk5ms~regout\ : std_logic;
SIGNAL \inst|clk5ms~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|keyr[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|keyrbuf[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|keyr[0]~2_combout\ : std_logic;
SIGNAL \inst1|keyr[3]~0_combout\ : std_logic;
SIGNAL \inst1|keyr[3]~1_combout\ : std_logic;
SIGNAL \inst1|keyr[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|led[3]~2_combout\ : std_logic;
SIGNAL \inst1|led[3]~3_combout\ : std_logic;
SIGNAL \inst1|led[3]~4_combout\ : std_logic;
SIGNAL \inst1|led~1_combout\ : std_logic;
SIGNAL \inst1|led~5_combout\ : std_logic;
SIGNAL \inst1|led[3]~9_combout\ : std_logic;
SIGNAL \inst1|led[3]~10_combout\ : std_logic;
SIGNAL \inst1|led~6_combout\ : std_logic;
SIGNAL \inst1|led~7_combout\ : std_logic;
SIGNAL \inst1|led~0_combout\ : std_logic;
SIGNAL \inst1|led~8_combout\ : std_logic;
SIGNAL \inst|cnt25\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \keyc~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|led\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|keyrbuf\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|keyr\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_keyrbuf\ : std_logic_vector(3 DOWNTO 3);

BEGIN

keyr <= ww_keyr;
ww_clk50m <= clk50m;
ww_keyc <= keyc;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clk5ms~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|clk5ms~regout\);

\clk50m~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk50m~combout\);
\inst1|ALT_INV_keyrbuf\(3) <= NOT \inst1|keyrbuf\(3);

-- Location: LCCOMB_X2_Y9_N10
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|cnt25\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|cnt25\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|cnt25\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCFF_X2_Y9_N11
\inst|cnt25[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(4));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyc[1]~I\ : cycloneii_io
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
	padio => ww_keyc(1),
	combout => \keyc~combout\(1));

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

-- Location: LCCOMB_X2_Y9_N2
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|cnt25\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|cnt25\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCFF_X2_Y9_N3
\inst|cnt25[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(0));

-- Location: LCCOMB_X2_Y9_N4
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|cnt25\(1) & (!\inst|Add0~1\)) # (!\inst|cnt25\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|cnt25\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCFF_X2_Y9_N5
\inst|cnt25[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(1));

-- Location: LCCOMB_X2_Y9_N6
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|cnt25\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|cnt25\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|cnt25\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X2_Y9_N8
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|cnt25\(3) & (!\inst|Add0~5\)) # (!\inst|cnt25\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|cnt25\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCFF_X2_Y9_N7
\inst|cnt25[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(2));

-- Location: LCCOMB_X1_Y9_N14
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt25\(1) & (!\inst|cnt25\(3) & (\inst|cnt25\(0) & \inst|cnt25\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(1),
	datab => \inst|cnt25\(3),
	datac => \inst|cnt25\(0),
	datad => \inst|cnt25\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y9_N28
\inst|cnt25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~0_combout\ = (\inst|Add0~6_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt25~0_combout\);

-- Location: LCFF_X2_Y9_N29
\inst|cnt25[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|cnt25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(3));

-- Location: LCCOMB_X2_Y9_N12
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|cnt25\(5) & (!\inst|Add0~9\)) # (!\inst|cnt25\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|cnt25\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X2_Y9_N14
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|cnt25\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|cnt25\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|cnt25\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X2_Y9_N26
\inst|cnt25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~1_combout\ = (\inst|Add0~12_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~12_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt25~1_combout\);

-- Location: LCFF_X2_Y9_N27
\inst|cnt25[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|cnt25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(6));

-- Location: LCCOMB_X2_Y9_N16
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|cnt25\(7) & (!\inst|Add0~13\)) # (!\inst|cnt25\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|cnt25\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCFF_X2_Y9_N17
\inst|cnt25[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(7));

-- Location: LCFF_X2_Y9_N13
\inst|cnt25[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(5));

-- Location: LCCOMB_X2_Y9_N0
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt25\(4) & (\inst|cnt25\(6) & (!\inst|cnt25\(7) & !\inst|cnt25\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(4),
	datab => \inst|cnt25\(6),
	datac => \inst|cnt25\(7),
	datad => \inst|cnt25\(5),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y9_N18
\inst|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|cnt25\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|cnt25\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|cnt25\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCFF_X2_Y9_N19
\inst|cnt25[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(8));

-- Location: LCCOMB_X2_Y9_N20
\inst|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|cnt25\(9) & (!\inst|Add0~17\)) # (!\inst|cnt25\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|cnt25\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCFF_X2_Y9_N21
\inst|cnt25[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(9));

-- Location: LCCOMB_X2_Y9_N22
\inst|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|cnt25\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|cnt25\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|cnt25\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCFF_X2_Y9_N23
\inst|cnt25[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(10));

-- Location: LCCOMB_X2_Y9_N24
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = \inst|Add0~21\ $ (\inst|cnt25\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt25\(11),
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\);

-- Location: LCCOMB_X2_Y9_N30
\inst|cnt25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~2_combout\ = (\inst|Add0~22_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt25~2_combout\);

-- Location: LCFF_X2_Y9_N31
\inst|cnt25[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|cnt25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(11));

-- Location: LCCOMB_X1_Y9_N30
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|cnt25\(10) & (!\inst|cnt25\(8) & (!\inst|cnt25\(9) & \inst|cnt25\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(10),
	datab => \inst|cnt25\(8),
	datac => \inst|cnt25\(9),
	datad => \inst|cnt25\(11),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y9_N12
\inst|clk5ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk5ms~0_combout\ = \inst|clk5ms~regout\ $ (((\inst|Equal0~0_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|clk5ms~regout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|clk5ms~0_combout\);

-- Location: LCFF_X1_Y9_N13
\inst|clk5ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk50m~clkctrl_outclk\,
	datain => \inst|clk5ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk5ms~regout\);

-- Location: CLKCTRL_G0
\inst|clk5ms~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clk5ms~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clk5ms~clkctrl_outclk\);

-- Location: LCCOMB_X6_Y1_N0
\inst1|keyr[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyr[2]~feeder_combout\ = \inst1|Mux12~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Mux12~0_combout\,
	combout => \inst1|keyr[2]~feeder_combout\);

-- Location: LCCOMB_X5_Y1_N4
\inst1|keyrbuf[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyrbuf[3]~feeder_combout\ = \inst1|keyr\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keyr\(3),
	combout => \inst1|keyrbuf[3]~feeder_combout\);

-- Location: LCFF_X5_Y1_N5
\inst1|keyrbuf[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|keyrbuf[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyrbuf\(3));

-- Location: LCCOMB_X5_Y1_N16
\inst1|keyr[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyr[0]~2_combout\ = (\inst1|keyr[3]~0_combout\ & ((\inst1|keyrbuf\(3)))) # (!\inst1|keyr[3]~0_combout\ & (\inst1|keyr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|keyr[3]~0_combout\,
	datac => \inst1|keyr\(0),
	datad => \inst1|keyrbuf\(3),
	combout => \inst1|keyr[0]~2_combout\);

-- Location: LCFF_X5_Y1_N17
\inst1|keyr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|keyr[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyr\(0));

-- Location: LCFF_X5_Y1_N29
\inst1|keyrbuf[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	sdata => \inst1|keyr\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyrbuf\(0));

-- Location: LCCOMB_X5_Y1_N2
\inst1|keyr[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyr[3]~0_combout\ = (\inst1|keyrbuf\(1) & ((\inst1|keyrbuf\(3) & (\inst1|keyrbuf\(2) $ (\inst1|keyrbuf\(0)))) # (!\inst1|keyrbuf\(3) & (\inst1|keyrbuf\(2) & \inst1|keyrbuf\(0))))) # (!\inst1|keyrbuf\(1) & (\inst1|keyrbuf\(3) & (\inst1|keyrbuf\(2) 
-- & \inst1|keyrbuf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(1),
	datab => \inst1|keyrbuf\(3),
	datac => \inst1|keyrbuf\(2),
	datad => \inst1|keyrbuf\(0),
	combout => \inst1|keyr[3]~0_combout\);

-- Location: LCFF_X6_Y1_N1
\inst1|keyr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|keyr[2]~feeder_combout\,
	sdata => VCC,
	sload => \inst1|ALT_INV_keyrbuf\(3),
	ena => \inst1|keyr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyr\(2));

-- Location: LCFF_X5_Y1_N9
\inst1|keyrbuf[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	sdata => \inst1|keyr\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyrbuf\(2));

-- Location: LCCOMB_X5_Y1_N6
\inst1|keyr[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyr[3]~1_combout\ = (!\inst1|keyrbuf\(2)) # (!\inst1|keyrbuf\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(1),
	datad => \inst1|keyrbuf\(2),
	combout => \inst1|keyr[3]~1_combout\);

-- Location: LCCOMB_X6_Y1_N10
\inst1|keyr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|keyr[1]~feeder_combout\ = \inst1|keyr[3]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|keyr[3]~1_combout\,
	combout => \inst1|keyr[1]~feeder_combout\);

-- Location: LCFF_X6_Y1_N11
\inst1|keyr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|keyr[1]~feeder_combout\,
	sdata => VCC,
	sload => \inst1|ALT_INV_keyrbuf\(3),
	ena => \inst1|keyr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyr\(1));

-- Location: LCFF_X5_Y1_N25
\inst1|keyrbuf[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	sdata => \inst1|keyr\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyrbuf\(1));

-- Location: LCCOMB_X5_Y1_N24
\inst1|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst1|keyrbuf\(1)) # (!\inst1|keyrbuf\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|keyrbuf\(1),
	datad => \inst1|keyrbuf\(2),
	combout => \inst1|Mux12~0_combout\);

-- Location: LCFF_X4_Y1_N17
\inst1|keyr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	sdata => \inst1|Mux12~0_combout\,
	sclr => \inst1|ALT_INV_keyrbuf\(3),
	sload => VCC,
	ena => \inst1|keyr[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|keyr\(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyc[0]~I\ : cycloneii_io
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
	padio => ww_keyc(0),
	combout => \keyc~combout\(0));

-- Location: LCCOMB_X5_Y1_N8
\inst1|led[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led[3]~2_combout\ = (!\inst1|keyrbuf\(3) & (!\inst1|keyrbuf\(2) & !\keyc~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(3),
	datac => \inst1|keyrbuf\(2),
	datad => \keyc~combout\(0),
	combout => \inst1|led[3]~2_combout\);

-- Location: LCCOMB_X5_Y1_N18
\inst1|led[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led[3]~3_combout\ = (\inst1|keyrbuf\(1) & (\inst1|keyrbuf\(2) $ (\inst1|keyrbuf\(3) $ (\inst1|keyrbuf\(0))))) # (!\inst1|keyrbuf\(1) & ((\inst1|keyrbuf\(2) $ (\inst1|keyrbuf\(3))) # (!\inst1|keyrbuf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(2),
	datab => \inst1|keyrbuf\(3),
	datac => \inst1|keyrbuf\(1),
	datad => \inst1|keyrbuf\(0),
	combout => \inst1|led[3]~3_combout\);

-- Location: LCCOMB_X5_Y1_N20
\inst1|led[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led[3]~4_combout\ = (\keyc~combout\(1) & ((\keyc~combout\(0)) # ((\inst1|led[3]~3_combout\)))) # (!\keyc~combout\(1) & (!\inst1|keyr[3]~0_combout\ & ((\keyc~combout\(0)) # (\inst1|led[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyc~combout\(1),
	datab => \keyc~combout\(0),
	datac => \inst1|keyr[3]~0_combout\,
	datad => \inst1|led[3]~3_combout\,
	combout => \inst1|led[3]~4_combout\);

-- Location: LCCOMB_X5_Y1_N26
\inst1|led~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~1_combout\ = (\inst1|keyr[3]~1_combout\ $ (((!\keyc~combout\(0) & \inst1|keyr[3]~0_combout\)))) # (!\inst1|keyrbuf\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyr[3]~1_combout\,
	datab => \keyc~combout\(0),
	datac => \inst1|keyrbuf\(3),
	datad => \inst1|keyr[3]~0_combout\,
	combout => \inst1|led~1_combout\);

-- Location: LCCOMB_X5_Y1_N0
\inst1|led~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~5_combout\ = (\inst1|led[3]~2_combout\ & (\inst1|led~0_combout\)) # (!\inst1|led[3]~2_combout\ & ((\inst1|led[3]~4_combout\ & (\inst1|led~0_combout\)) # (!\inst1|led[3]~4_combout\ & ((\inst1|led~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|led~0_combout\,
	datab => \inst1|led[3]~2_combout\,
	datac => \inst1|led[3]~4_combout\,
	datad => \inst1|led~1_combout\,
	combout => \inst1|led~5_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyc[2]~I\ : cycloneii_io
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
	padio => ww_keyc(2),
	combout => \keyc~combout\(2));

-- Location: LCCOMB_X5_Y1_N12
\inst1|led[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led[3]~9_combout\ = ((!\keyc~combout\(1) & (!\inst1|keyrbuf\(2) & !\inst1|keyrbuf\(3)))) # (!\inst1|keyr[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyc~combout\(1),
	datab => \inst1|keyrbuf\(2),
	datac => \inst1|keyrbuf\(3),
	datad => \inst1|keyr[3]~0_combout\,
	combout => \inst1|led[3]~9_combout\);

-- Location: LCCOMB_X5_Y1_N30
\inst1|led[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led[3]~10_combout\ = (!\inst1|led[3]~9_combout\ & (((!\keyc~combout\(2)) # (!\keyc~combout\(0))) # (!\keyc~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyc~combout\(1),
	datab => \keyc~combout\(0),
	datac => \keyc~combout\(2),
	datad => \inst1|led[3]~9_combout\,
	combout => \inst1|led[3]~10_combout\);

-- Location: LCFF_X5_Y1_N1
\inst1|led[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|led~5_combout\,
	ena => \inst1|led[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|led\(3));

-- Location: LCCOMB_X5_Y1_N14
\inst1|led~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~6_combout\ = \inst1|keyrbuf\(3) $ (((\keyc~combout\(0)) # (!\inst1|keyr[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(3),
	datab => \keyc~combout\(0),
	datad => \inst1|keyr[3]~0_combout\,
	combout => \inst1|led~6_combout\);

-- Location: LCCOMB_X5_Y1_N22
\inst1|led~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~7_combout\ = (\inst1|led[3]~4_combout\ & (!\inst1|keyrbuf\(3))) # (!\inst1|led[3]~4_combout\ & ((\inst1|led[3]~2_combout\ & (!\inst1|keyrbuf\(3))) # (!\inst1|led[3]~2_combout\ & ((!\inst1|led~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(3),
	datab => \inst1|led~6_combout\,
	datac => \inst1|led[3]~4_combout\,
	datad => \inst1|led[3]~2_combout\,
	combout => \inst1|led~7_combout\);

-- Location: LCFF_X5_Y1_N23
\inst1|led[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|led~7_combout\,
	ena => \inst1|led[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|led\(2));

-- Location: LCCOMB_X5_Y1_N28
\inst1|led~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~0_combout\ = (\inst1|keyrbuf\(3) & ((!\inst1|keyrbuf\(2)) # (!\inst1|keyrbuf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(3),
	datab => \inst1|keyrbuf\(1),
	datad => \inst1|keyrbuf\(2),
	combout => \inst1|led~0_combout\);

-- Location: LCFF_X5_Y1_N7
\inst1|led[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	sdata => \inst1|led~0_combout\,
	sload => VCC,
	ena => \inst1|led[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|led\(1));

-- Location: LCCOMB_X5_Y1_N10
\inst1|led~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|led~8_combout\ = (\inst1|keyrbuf\(3) & ((\inst1|keyrbuf\(1)) # (!\inst1|keyrbuf\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|keyrbuf\(3),
	datab => \inst1|keyrbuf\(1),
	datad => \inst1|keyrbuf\(2),
	combout => \inst1|led~8_combout\);

-- Location: LCFF_X5_Y1_N11
\inst1|led[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~clkctrl_outclk\,
	datain => \inst1|led~8_combout\,
	ena => \inst1|led[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|led\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyr[3]~I\ : cycloneii_io
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
	datain => \inst1|keyr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyr(3));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyr[2]~I\ : cycloneii_io
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
	datain => \inst1|keyr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyr(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyr[1]~I\ : cycloneii_io
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
	datain => \inst1|keyr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyr(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyr[0]~I\ : cycloneii_io
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
	datain => \inst1|keyr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyr(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[3]~I\ : cycloneii_io
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
	datain => \inst1|led\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(3));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[2]~I\ : cycloneii_io
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
	datain => \inst1|led\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[1]~I\ : cycloneii_io
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
	datain => \inst1|led\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led[0]~I\ : cycloneii_io
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
	datain => \inst1|led\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));
END structure;


