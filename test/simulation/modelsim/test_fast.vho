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

-- DATE "06/01/2017 14:05:49"

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

ENTITY 	test IS
    PORT (
	clkin : IN std_logic;
	clkout : OUT std_logic
	);
END test;

-- Design Ports Information
-- clkout	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clkin	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF test IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin : std_logic;
SIGNAL ww_clkout : std_logic;
SIGNAL \clkin~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin~combout\ : std_logic;
SIGNAL \clkin~clkctrl_outclk\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \clkout~0_combout\ : std_logic;
SIGNAL step : std_logic_vector(1 DOWNTO 0);
SIGNAL step1 : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_clkin~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clkout~0_combout\ : std_logic;

BEGIN

ww_clkin <= clkin;
clkout <= ww_clkout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkin~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clkin~combout\);
\ALT_INV_clkin~clkctrl_outclk\ <= NOT \clkin~clkctrl_outclk\;
\ALT_INV_clkout~0_combout\ <= NOT \clkout~0_combout\;

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clkin~I\ : cycloneii_io
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
	padio => ww_clkin,
	combout => \clkin~combout\);

-- Location: CLKCTRL_G2
\clkin~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y8_N12
\Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!step1(0) & !step1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step1(0),
	datad => step1(1),
	combout => \Decoder1~1_combout\);

-- Location: LCFF_X1_Y8_N13
\step1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clkin~clkctrl_outclk\,
	datain => \Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step1(0));

-- Location: LCCOMB_X1_Y8_N30
\Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!step1(1) & step1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step1(1),
	datad => step1(0),
	combout => \Decoder1~0_combout\);

-- Location: LCFF_X1_Y8_N31
\step1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clkin~clkctrl_outclk\,
	datain => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step1(1));

-- Location: LCCOMB_X1_Y8_N26
\Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!step(0) & !step(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step(0),
	datad => step(1),
	combout => \Decoder0~1_combout\);

-- Location: LCFF_X1_Y8_N27
\step[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkin~clkctrl_outclk\,
	datain => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step(0));

-- Location: LCCOMB_X1_Y8_N0
\Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!step(1) & step(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => step(1),
	datad => step(0),
	combout => \Decoder0~0_combout\);

-- Location: LCFF_X1_Y8_N1
\step[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clkin~clkctrl_outclk\,
	datain => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => step(1));

-- Location: LCCOMB_X1_Y8_N28
\clkout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clkout~0_combout\ = (step1(1)) # (step(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => step1(1),
	datad => step(1),
	combout => \clkout~0_combout\);

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clkout~I\ : cycloneii_io
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
	datain => \ALT_INV_clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clkout);
END structure;


