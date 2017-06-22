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

-- DATE "04/06/2017 16:35:12"

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

ENTITY 	cntr IS
    PORT (
	clk : IN std_logic;
	cnt : OUT std_logic_vector(7 DOWNTO 0)
	);
END cntr;

-- Design Ports Information
-- cnt[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[2]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[3]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[4]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[5]	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[6]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cnt[7]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cntr IS
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
SIGNAL ww_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[0]~21_combout\ : std_logic;
SIGNAL \cnt[0]~reg0_regout\ : std_logic;
SIGNAL \cnt[1]~7_combout\ : std_logic;
SIGNAL \cnt[1]~reg0_regout\ : std_logic;
SIGNAL \cnt[1]~8\ : std_logic;
SIGNAL \cnt[2]~9_combout\ : std_logic;
SIGNAL \cnt[2]~reg0_regout\ : std_logic;
SIGNAL \cnt[2]~10\ : std_logic;
SIGNAL \cnt[3]~11_combout\ : std_logic;
SIGNAL \cnt[3]~reg0_regout\ : std_logic;
SIGNAL \cnt[3]~12\ : std_logic;
SIGNAL \cnt[4]~13_combout\ : std_logic;
SIGNAL \cnt[4]~reg0_regout\ : std_logic;
SIGNAL \cnt[4]~14\ : std_logic;
SIGNAL \cnt[5]~15_combout\ : std_logic;
SIGNAL \cnt[5]~reg0_regout\ : std_logic;
SIGNAL \cnt[5]~16\ : std_logic;
SIGNAL \cnt[6]~17_combout\ : std_logic;
SIGNAL \cnt[6]~reg0_regout\ : std_logic;
SIGNAL \cnt[6]~18\ : std_logic;
SIGNAL \cnt[7]~19_combout\ : std_logic;
SIGNAL \cnt[7]~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
cnt <= ww_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LCCOMB_X1_Y2_N28
\cnt[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~21_combout\ = !\cnt[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cnt[0]~reg0_regout\,
	combout => \cnt[0]~21_combout\);

-- Location: LCFF_X1_Y2_N29
\cnt[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[0]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N10
\cnt[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~7_combout\ = (\cnt[1]~reg0_regout\ & (\cnt[0]~reg0_regout\ $ (VCC))) # (!\cnt[1]~reg0_regout\ & (\cnt[0]~reg0_regout\ & VCC))
-- \cnt[1]~8\ = CARRY((\cnt[1]~reg0_regout\ & \cnt[0]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[1]~reg0_regout\,
	datab => \cnt[0]~reg0_regout\,
	datad => VCC,
	combout => \cnt[1]~7_combout\,
	cout => \cnt[1]~8\);

-- Location: LCFF_X1_Y2_N11
\cnt[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N12
\cnt[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~9_combout\ = (\cnt[2]~reg0_regout\ & (!\cnt[1]~8\)) # (!\cnt[2]~reg0_regout\ & ((\cnt[1]~8\) # (GND)))
-- \cnt[2]~10\ = CARRY((!\cnt[1]~8\) # (!\cnt[2]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[2]~reg0_regout\,
	datad => VCC,
	cin => \cnt[1]~8\,
	combout => \cnt[2]~9_combout\,
	cout => \cnt[2]~10\);

-- Location: LCFF_X1_Y2_N13
\cnt[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N14
\cnt[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~11_combout\ = (\cnt[3]~reg0_regout\ & (\cnt[2]~10\ $ (GND))) # (!\cnt[3]~reg0_regout\ & (!\cnt[2]~10\ & VCC))
-- \cnt[3]~12\ = CARRY((\cnt[3]~reg0_regout\ & !\cnt[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[3]~reg0_regout\,
	datad => VCC,
	cin => \cnt[2]~10\,
	combout => \cnt[3]~11_combout\,
	cout => \cnt[3]~12\);

-- Location: LCFF_X1_Y2_N15
\cnt[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[3]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N16
\cnt[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~13_combout\ = (\cnt[4]~reg0_regout\ & (!\cnt[3]~12\)) # (!\cnt[4]~reg0_regout\ & ((\cnt[3]~12\) # (GND)))
-- \cnt[4]~14\ = CARRY((!\cnt[3]~12\) # (!\cnt[4]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[4]~reg0_regout\,
	datad => VCC,
	cin => \cnt[3]~12\,
	combout => \cnt[4]~13_combout\,
	cout => \cnt[4]~14\);

-- Location: LCFF_X1_Y2_N17
\cnt[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N18
\cnt[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~15_combout\ = (\cnt[5]~reg0_regout\ & (\cnt[4]~14\ $ (GND))) # (!\cnt[5]~reg0_regout\ & (!\cnt[4]~14\ & VCC))
-- \cnt[5]~16\ = CARRY((\cnt[5]~reg0_regout\ & !\cnt[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cnt[5]~reg0_regout\,
	datad => VCC,
	cin => \cnt[4]~14\,
	combout => \cnt[5]~15_combout\,
	cout => \cnt[5]~16\);

-- Location: LCFF_X1_Y2_N19
\cnt[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[5]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N20
\cnt[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~17_combout\ = (\cnt[6]~reg0_regout\ & (!\cnt[5]~16\)) # (!\cnt[6]~reg0_regout\ & ((\cnt[5]~16\) # (GND)))
-- \cnt[6]~18\ = CARRY((!\cnt[5]~16\) # (!\cnt[6]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[6]~reg0_regout\,
	datad => VCC,
	cin => \cnt[5]~16\,
	combout => \cnt[6]~17_combout\,
	cout => \cnt[6]~18\);

-- Location: LCFF_X1_Y2_N21
\cnt[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[6]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[6]~reg0_regout\);

-- Location: LCCOMB_X1_Y2_N22
\cnt[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[7]~19_combout\ = \cnt[6]~18\ $ (!\cnt[7]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cnt[7]~reg0_regout\,
	cin => \cnt[6]~18\,
	combout => \cnt[7]~19_combout\);

-- Location: LCFF_X1_Y2_N23
\cnt[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[7]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cnt[7]~reg0_regout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[0]~I\ : cycloneii_io
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
	datain => \cnt[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(0));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[1]~I\ : cycloneii_io
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
	datain => \cnt[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[2]~I\ : cycloneii_io
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
	datain => \cnt[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(2));

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[3]~I\ : cycloneii_io
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
	datain => \cnt[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(3));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[4]~I\ : cycloneii_io
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
	datain => \cnt[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(4));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[5]~I\ : cycloneii_io
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
	datain => \cnt[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(5));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[6]~I\ : cycloneii_io
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
	datain => \cnt[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(6));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cnt[7]~I\ : cycloneii_io
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
	datain => \cnt[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cnt(7));
END structure;


