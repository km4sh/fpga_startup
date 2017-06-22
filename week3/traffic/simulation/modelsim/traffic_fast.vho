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

-- DATE "04/13/2017 19:57:56"

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

ENTITY 	traffic IS
    PORT (
	clk : IN std_logic;
	clr : IN std_logic;
	lights : OUT std_logic_vector(2 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- lights[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lights[1]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lights[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_lights : std_logic_vector(2 DOWNTO 0);
SIGNAL \clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \state.S3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~10\ : std_logic;
SIGNAL \count[1]~15_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \clr~clkctrl_outclk\ : std_logic;
SIGNAL \count[3]~20\ : std_logic;
SIGNAL \count[4]~21_combout\ : std_logic;
SIGNAL \count[2]~17_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \count[4]~22\ : std_logic;
SIGNAL \count[5]~24\ : std_logic;
SIGNAL \count[6]~25_combout\ : std_logic;
SIGNAL \count[6]~26\ : std_logic;
SIGNAL \count[7]~27_combout\ : std_logic;
SIGNAL \count[0]~8_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.S1~regout\ : std_logic;
SIGNAL \count[5]~23_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S2~regout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.S0~regout\ : std_logic;
SIGNAL \count[0]~13_combout\ : std_logic;
SIGNAL \count[0]~11_combout\ : std_logic;
SIGNAL \count[0]~12_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \count[0]~14_combout\ : std_logic;
SIGNAL \count[1]~16\ : std_logic;
SIGNAL \count[2]~18\ : std_logic;
SIGNAL \count[3]~19_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \state.S3~regout\ : std_logic;
SIGNAL \state.S3~clkctrl_outclk\ : std_logic;
SIGNAL \lights~0_combout\ : std_logic;
SIGNAL \lights[0]$latch~combout\ : std_logic;
SIGNAL \lights[1]$latch~combout\ : std_logic;
SIGNAL \count[0]~9_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL count : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_clr <= clr;
lights <= ww_lights;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clr~combout\);

\state.S3~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \state.S3~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

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

-- Location: LCCOMB_X33_Y10_N6
\count[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~9_combout\ = count(0) $ (VCC)
-- \count[0]~10\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	combout => \count[0]~9_combout\,
	cout => \count[0]~10\);

-- Location: LCCOMB_X33_Y10_N8
\count[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[1]~15_combout\ = (count(1) & (!\count[0]~10\)) # (!count(1) & ((\count[0]~10\) # (GND)))
-- \count[1]~16\ = CARRY((!\count[0]~10\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~10\,
	combout => \count[1]~15_combout\,
	cout => \count[1]~16\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
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
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: CLKCTRL_G1
\clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y10_N12
\count[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[3]~19_combout\ = (count(3) & (!\count[2]~18\)) # (!count(3) & ((\count[2]~18\) # (GND)))
-- \count[3]~20\ = CARRY((!\count[2]~18\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~18\,
	combout => \count[3]~19_combout\,
	cout => \count[3]~20\);

-- Location: LCCOMB_X33_Y10_N14
\count[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[4]~21_combout\ = (count(4) & (\count[3]~20\ $ (GND))) # (!count(4) & (!\count[3]~20\ & VCC))
-- \count[4]~22\ = CARRY((count(4) & !\count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~20\,
	combout => \count[4]~21_combout\,
	cout => \count[4]~22\);

-- Location: LCFF_X33_Y10_N15
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[4]~21_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X33_Y10_N10
\count[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[2]~17_combout\ = (count(2) & (\count[1]~16\ $ (GND))) # (!count(2) & (!\count[1]~16\ & VCC))
-- \count[2]~18\ = CARRY((count(2) & !\count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~16\,
	combout => \count[2]~17_combout\,
	cout => \count[2]~18\);

-- Location: LCFF_X33_Y10_N11
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[2]~17_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X32_Y10_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (((!count(2)) # (!count(3))) # (!count(1))) # (!count(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y10_N16
\count[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[5]~23_combout\ = (count(5) & (!\count[4]~22\)) # (!count(5) & ((\count[4]~22\) # (GND)))
-- \count[5]~24\ = CARRY((!\count[4]~22\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~22\,
	combout => \count[5]~23_combout\,
	cout => \count[5]~24\);

-- Location: LCCOMB_X33_Y10_N18
\count[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[6]~25_combout\ = (count(6) & (\count[5]~24\ $ (GND))) # (!count(6) & (!\count[5]~24\ & VCC))
-- \count[6]~26\ = CARRY((count(6) & !\count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~24\,
	combout => \count[6]~25_combout\,
	cout => \count[6]~26\);

-- Location: LCFF_X33_Y10_N19
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[6]~25_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X33_Y10_N20
\count[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[7]~27_combout\ = count(7) $ (\count[6]~26\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	cin => \count[6]~26\,
	combout => \count[7]~27_combout\);

-- Location: LCFF_X33_Y10_N21
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[7]~27_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X33_Y10_N26
\count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~8_combout\ = (!count(5) & (!count(7) & !count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datac => count(7),
	datad => count(6),
	combout => \count[0]~8_combout\);

-- Location: LCCOMB_X32_Y10_N4
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.S1~regout\ & (!count(3) & (!count(4) & \count[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~regout\,
	datab => count(3),
	datac => count(4),
	datad => \count[0]~8_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X32_Y10_N12
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((!\state.S0~regout\ & ((!\count[0]~8_combout\) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~regout\,
	datab => \LessThan0~0_combout\,
	datac => \Selector1~0_combout\,
	datad => \count[0]~8_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X32_Y10_N13
\state.S1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S1~regout\);

-- Location: LCFF_X33_Y10_N17
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[5]~23_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X33_Y10_N0
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!count(3) & (!count(4) & !count(2)))) # (!count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => count(5),
	datad => count(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X32_Y10_N26
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(6) & (\LessThan1~0_combout\ & !count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datac => \LessThan1~0_combout\,
	datad => count(7),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X32_Y10_N8
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\LessThan2~0_combout\ & ((\state.S1~regout\) # ((\state.S2~regout\ & \LessThan1~1_combout\)))) # (!\LessThan2~0_combout\ & (((\state.S2~regout\ & \LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \state.S1~regout\,
	datac => \state.S2~regout\,
	datad => \LessThan1~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X32_Y10_N9
\state.S2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S2~regout\);

-- Location: LCCOMB_X33_Y10_N2
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Selector0~0_combout\ & ((!\LessThan2~0_combout\) # (!\state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.S3~regout\,
	datad => \LessThan2~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCFF_X33_Y10_N3
\state.S0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector0~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S0~regout\);

-- Location: LCCOMB_X33_Y10_N4
\count[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~13_combout\ = (\state.S0~regout\ & ((\state.S2~regout\) # ((!count(3) & !count(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(4),
	datac => \state.S2~regout\,
	datad => \state.S0~regout\,
	combout => \count[0]~13_combout\);

-- Location: LCCOMB_X33_Y10_N22
\count[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~11_combout\ = (!count(3) & (\state.S0~regout\ & (!count(4) & !count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => \state.S0~regout\,
	datac => count(4),
	datad => count(2),
	combout => \count[0]~11_combout\);

-- Location: LCCOMB_X33_Y10_N24
\count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~12_combout\ = (\state.S2~regout\ & (!count(6) & (!count(7) & \count[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~regout\,
	datab => count(6),
	datac => count(7),
	datad => \count[0]~11_combout\,
	combout => \count[0]~12_combout\);

-- Location: LCCOMB_X32_Y10_N14
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\state.S0~regout\ & (\count[0]~8_combout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~regout\,
	datac => \count[0]~8_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X33_Y10_N28
\count[0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \count[0]~14_combout\ = (!\count[0]~12_combout\ & (!\Selector0~0_combout\ & ((!\count[0]~13_combout\) # (!\count[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count[0]~8_combout\,
	datab => \count[0]~13_combout\,
	datac => \count[0]~12_combout\,
	datad => \Selector0~0_combout\,
	combout => \count[0]~14_combout\);

-- Location: LCFF_X33_Y10_N9
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[1]~15_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCFF_X33_Y10_N13
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[3]~19_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCCOMB_X32_Y10_N24
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (count(3)) # ((count(4)) # (!\count[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datac => count(4),
	datad => \count[0]~8_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y10_N30
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.S2~regout\ & (((!\LessThan2~0_combout\ & \state.S3~regout\)) # (!\LessThan1~1_combout\))) # (!\state.S2~regout\ & (!\LessThan2~0_combout\ & (\state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~regout\,
	datab => \LessThan2~0_combout\,
	datac => \state.S3~regout\,
	datad => \LessThan1~1_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X33_Y10_N31
\state.S3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S3~regout\);

-- Location: CLKCTRL_G6
\state.S3~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \state.S3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \state.S3~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y10_N6
\lights~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights~0_combout\ = (\state.S2~regout\) # (\state.S1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S2~regout\,
	datad => \state.S1~regout\,
	combout => \lights~0_combout\);

-- Location: LCCOMB_X32_Y10_N18
\lights[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights[0]$latch~combout\ = (GLOBAL(\state.S3~clkctrl_outclk\) & (\lights[0]$latch~combout\)) # (!GLOBAL(\state.S3~clkctrl_outclk\) & ((!\lights~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lights[0]$latch~combout\,
	datac => \state.S3~clkctrl_outclk\,
	datad => \lights~0_combout\,
	combout => \lights[0]$latch~combout\);

-- Location: LCCOMB_X32_Y10_N20
\lights[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \lights[1]$latch~combout\ = (GLOBAL(\state.S3~clkctrl_outclk\) & ((\lights[1]$latch~combout\))) # (!GLOBAL(\state.S3~clkctrl_outclk\) & (\state.S1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~regout\,
	datac => \lights[1]$latch~combout\,
	datad => \state.S3~clkctrl_outclk\,
	combout => \lights[1]$latch~combout\);

-- Location: LCFF_X33_Y10_N7
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \count[0]~9_combout\,
	aclr => \clr~clkctrl_outclk\,
	sclr => \count[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X32_Y10_N30
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.S2~regout\) # ((\state.S3~regout\ & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~regout\,
	datac => \state.S3~regout\,
	datad => count(0),
	combout => \Selector12~0_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lights[0]~I\ : cycloneii_io
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
	datain => \lights[0]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lights(0));

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lights[1]~I\ : cycloneii_io
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
	datain => \lights[1]$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lights(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\lights[2]~I\ : cycloneii_io
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
	datain => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_lights(2));
END structure;


