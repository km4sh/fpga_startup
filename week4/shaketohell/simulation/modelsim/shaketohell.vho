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

-- DATE "04/20/2017 18:13:41"

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

ENTITY 	shaketohell IS
    PORT (
	clk : IN std_logic;
	keyin : IN std_logic;
	keyout : OUT std_logic
	);
END shaketohell;

-- Design Ports Information
-- keyout	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- keyin	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF shaketohell IS
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
SIGNAL ww_keyin : std_logic;
SIGNAL ww_keyout : std_logic;
SIGNAL \en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt[4]~22_combout\ : std_logic;
SIGNAL \cnt[6]~26_combout\ : std_logic;
SIGNAL \cnt[7]~28_combout\ : std_logic;
SIGNAL \cnt[9]~32_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cnt[1]~16_combout\ : std_logic;
SIGNAL \cnt[1]~17\ : std_logic;
SIGNAL \cnt[2]~18_combout\ : std_logic;
SIGNAL \cnt[2]~19\ : std_logic;
SIGNAL \cnt[3]~20_combout\ : std_logic;
SIGNAL \cnt[3]~21\ : std_logic;
SIGNAL \cnt[4]~23\ : std_logic;
SIGNAL \cnt[5]~24_combout\ : std_logic;
SIGNAL \cnt[5]~25\ : std_logic;
SIGNAL \cnt[6]~27\ : std_logic;
SIGNAL \cnt[7]~29\ : std_logic;
SIGNAL \cnt[8]~30_combout\ : std_logic;
SIGNAL \cnt[8]~31\ : std_logic;
SIGNAL \cnt[9]~33\ : std_logic;
SIGNAL \cnt[10]~34_combout\ : std_logic;
SIGNAL \cnt[10]~35\ : std_logic;
SIGNAL \cnt[11]~37\ : std_logic;
SIGNAL \cnt[12]~38_combout\ : std_logic;
SIGNAL \cnt[12]~39\ : std_logic;
SIGNAL \cnt[13]~41\ : std_logic;
SIGNAL \cnt[14]~42_combout\ : std_logic;
SIGNAL \cnt[14]~43\ : std_logic;
SIGNAL \cnt[15]~44_combout\ : std_logic;
SIGNAL \cnt[15]~45\ : std_logic;
SIGNAL \cnt[16]~46_combout\ : std_logic;
SIGNAL \cnt[11]~36_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \cnt[0]~48_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cnt[13]~40_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \en~0_combout\ : std_logic;
SIGNAL \en~regout\ : std_logic;
SIGNAL \en~clkctrl_outclk\ : std_logic;
SIGNAL \keyin~combout\ : std_logic;
SIGNAL \keybuf~feeder_combout\ : std_logic;
SIGNAL \keybuf~regout\ : std_logic;
SIGNAL \keyout~0_combout\ : std_logic;
SIGNAL \keyout~reg0_regout\ : std_logic;
SIGNAL cnt : std_logic_vector(16 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_keyin <= keyin;
keyout <= ww_keyout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\en~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \en~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X13_Y11_N7
\cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4));

-- Location: LCFF_X13_Y11_N11
\cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[6]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(6));

-- Location: LCFF_X13_Y11_N13
\cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(7));

-- Location: LCFF_X13_Y11_N17
\cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[9]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(9));

-- Location: LCCOMB_X13_Y11_N6
\cnt[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[4]~22_combout\ = (cnt(4) & (!\cnt[3]~21\)) # (!cnt(4) & ((\cnt[3]~21\) # (GND)))
-- \cnt[4]~23\ = CARRY((!\cnt[3]~21\) # (!cnt(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datad => VCC,
	cin => \cnt[3]~21\,
	combout => \cnt[4]~22_combout\,
	cout => \cnt[4]~23\);

-- Location: LCCOMB_X13_Y11_N10
\cnt[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[6]~26_combout\ = (cnt(6) & (!\cnt[5]~25\)) # (!cnt(6) & ((\cnt[5]~25\) # (GND)))
-- \cnt[6]~27\ = CARRY((!\cnt[5]~25\) # (!cnt(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(6),
	datad => VCC,
	cin => \cnt[5]~25\,
	combout => \cnt[6]~26_combout\,
	cout => \cnt[6]~27\);

-- Location: LCCOMB_X13_Y11_N12
\cnt[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[7]~28_combout\ = (cnt(7) & (\cnt[6]~27\ $ (GND))) # (!cnt(7) & (!\cnt[6]~27\ & VCC))
-- \cnt[7]~29\ = CARRY((cnt(7) & !\cnt[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(7),
	datad => VCC,
	cin => \cnt[6]~27\,
	combout => \cnt[7]~28_combout\,
	cout => \cnt[7]~29\);

-- Location: LCCOMB_X13_Y11_N16
\cnt[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[9]~32_combout\ = (cnt(9) & (\cnt[8]~31\ $ (GND))) # (!cnt(9) & (!\cnt[8]~31\ & VCC))
-- \cnt[9]~33\ = CARRY((cnt(9) & !\cnt[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datad => VCC,
	cin => \cnt[8]~31\,
	combout => \cnt[9]~32_combout\,
	cout => \cnt[9]~33\);

-- Location: LCCOMB_X12_Y11_N10
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!cnt(4) & (!cnt(7) & (!cnt(6) & !cnt(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(4),
	datab => cnt(7),
	datac => cnt(6),
	datad => cnt(5),
	combout => \Equal0~1_combout\);

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

-- Location: LCCOMB_X13_Y11_N0
\cnt[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[1]~16_combout\ = (cnt(0) & (cnt(1) $ (VCC))) # (!cnt(0) & (cnt(1) & VCC))
-- \cnt[1]~17\ = CARRY((cnt(0) & cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => cnt(1),
	datad => VCC,
	combout => \cnt[1]~16_combout\,
	cout => \cnt[1]~17\);

-- Location: LCFF_X13_Y11_N1
\cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1));

-- Location: LCCOMB_X13_Y11_N2
\cnt[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[2]~18_combout\ = (cnt(2) & (!\cnt[1]~17\)) # (!cnt(2) & ((\cnt[1]~17\) # (GND)))
-- \cnt[2]~19\ = CARRY((!\cnt[1]~17\) # (!cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(2),
	datad => VCC,
	cin => \cnt[1]~17\,
	combout => \cnt[2]~18_combout\,
	cout => \cnt[2]~19\);

-- Location: LCFF_X13_Y11_N3
\cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2));

-- Location: LCCOMB_X13_Y11_N4
\cnt[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[3]~20_combout\ = (cnt(3) & (\cnt[2]~19\ $ (GND))) # (!cnt(3) & (!\cnt[2]~19\ & VCC))
-- \cnt[3]~21\ = CARRY((cnt(3) & !\cnt[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(3),
	datad => VCC,
	cin => \cnt[2]~19\,
	combout => \cnt[3]~20_combout\,
	cout => \cnt[3]~21\);

-- Location: LCFF_X13_Y11_N5
\cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[3]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3));

-- Location: LCCOMB_X13_Y11_N8
\cnt[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[5]~24_combout\ = (cnt(5) & (\cnt[4]~23\ $ (GND))) # (!cnt(5) & (!\cnt[4]~23\ & VCC))
-- \cnt[5]~25\ = CARRY((cnt(5) & !\cnt[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(5),
	datad => VCC,
	cin => \cnt[4]~23\,
	combout => \cnt[5]~24_combout\,
	cout => \cnt[5]~25\);

-- Location: LCFF_X13_Y11_N9
\cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LCCOMB_X13_Y11_N14
\cnt[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[8]~30_combout\ = (cnt(8) & (!\cnt[7]~29\)) # (!cnt(8) & ((\cnt[7]~29\) # (GND)))
-- \cnt[8]~31\ = CARRY((!\cnt[7]~29\) # (!cnt(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(8),
	datad => VCC,
	cin => \cnt[7]~29\,
	combout => \cnt[8]~30_combout\,
	cout => \cnt[8]~31\);

-- Location: LCFF_X13_Y11_N15
\cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(8));

-- Location: LCCOMB_X13_Y11_N18
\cnt[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[10]~34_combout\ = (cnt(10) & (!\cnt[9]~33\)) # (!cnt(10) & ((\cnt[9]~33\) # (GND)))
-- \cnt[10]~35\ = CARRY((!\cnt[9]~33\) # (!cnt(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(10),
	datad => VCC,
	cin => \cnt[9]~33\,
	combout => \cnt[10]~34_combout\,
	cout => \cnt[10]~35\);

-- Location: LCFF_X13_Y11_N19
\cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(10));

-- Location: LCCOMB_X13_Y11_N20
\cnt[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[11]~36_combout\ = (cnt(11) & (\cnt[10]~35\ $ (GND))) # (!cnt(11) & (!\cnt[10]~35\ & VCC))
-- \cnt[11]~37\ = CARRY((cnt(11) & !\cnt[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(11),
	datad => VCC,
	cin => \cnt[10]~35\,
	combout => \cnt[11]~36_combout\,
	cout => \cnt[11]~37\);

-- Location: LCCOMB_X13_Y11_N22
\cnt[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[12]~38_combout\ = (cnt(12) & (!\cnt[11]~37\)) # (!cnt(12) & ((\cnt[11]~37\) # (GND)))
-- \cnt[12]~39\ = CARRY((!\cnt[11]~37\) # (!cnt(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(12),
	datad => VCC,
	cin => \cnt[11]~37\,
	combout => \cnt[12]~38_combout\,
	cout => \cnt[12]~39\);

-- Location: LCFF_X13_Y11_N23
\cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[12]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(12));

-- Location: LCCOMB_X13_Y11_N24
\cnt[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[13]~40_combout\ = (cnt(13) & (\cnt[12]~39\ $ (GND))) # (!cnt(13) & (!\cnt[12]~39\ & VCC))
-- \cnt[13]~41\ = CARRY((cnt(13) & !\cnt[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt(13),
	datad => VCC,
	cin => \cnt[12]~39\,
	combout => \cnt[13]~40_combout\,
	cout => \cnt[13]~41\);

-- Location: LCCOMB_X13_Y11_N26
\cnt[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[14]~42_combout\ = (cnt(14) & (!\cnt[13]~41\)) # (!cnt(14) & ((\cnt[13]~41\) # (GND)))
-- \cnt[14]~43\ = CARRY((!\cnt[13]~41\) # (!cnt(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(14),
	datad => VCC,
	cin => \cnt[13]~41\,
	combout => \cnt[14]~42_combout\,
	cout => \cnt[14]~43\);

-- Location: LCFF_X13_Y11_N27
\cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[14]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(14));

-- Location: LCCOMB_X13_Y11_N28
\cnt[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[15]~44_combout\ = (cnt(15) & (\cnt[14]~43\ $ (GND))) # (!cnt(15) & (!\cnt[14]~43\ & VCC))
-- \cnt[15]~45\ = CARRY((cnt(15) & !\cnt[14]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt(15),
	datad => VCC,
	cin => \cnt[14]~43\,
	combout => \cnt[15]~44_combout\,
	cout => \cnt[15]~45\);

-- Location: LCFF_X13_Y11_N29
\cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[15]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(15));

-- Location: LCCOMB_X13_Y11_N30
\cnt[16]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[16]~46_combout\ = \cnt[15]~45\ $ (cnt(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt(16),
	cin => \cnt[15]~45\,
	combout => \cnt[16]~46_combout\);

-- Location: LCFF_X13_Y11_N31
\cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[16]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(16));

-- Location: LCFF_X13_Y11_N21
\cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[11]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(11));

-- Location: LCCOMB_X12_Y11_N0
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!cnt(9) & (!cnt(11) & (!cnt(8) & !cnt(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(9),
	datab => cnt(11),
	datac => cnt(8),
	datad => cnt(10),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y11_N14
\cnt[0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt[0]~48_combout\ = !cnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cnt(0),
	combout => \cnt[0]~48_combout\);

-- Location: LCFF_X12_Y11_N15
\cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[0]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0));

-- Location: LCCOMB_X12_Y11_N24
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!cnt(2) & (!cnt(0) & (!cnt(1) & !cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(0),
	datac => cnt(1),
	datad => cnt(3),
	combout => \Equal0~0_combout\);

-- Location: LCFF_X13_Y11_N25
\cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt[13]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(13));

-- Location: LCCOMB_X12_Y11_N2
\Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!cnt(14) & (!cnt(13) & (!cnt(12) & !cnt(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(14),
	datab => cnt(13),
	datac => cnt(12),
	datad => cnt(15),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X12_Y11_N18
\Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X12_Y11_N16
\en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \en~0_combout\ = \en~regout\ $ (((!cnt(16) & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(16),
	datac => \en~regout\,
	datad => \Equal0~4_combout\,
	combout => \en~0_combout\);

-- Location: LCFF_X12_Y11_N17
en : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \en~regout\);

-- Location: CLKCTRL_G3
\en~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \en~clkctrl_outclk\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\keyin~I\ : cycloneii_io
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
	padio => ww_keyin,
	combout => \keyin~combout\);

-- Location: LCCOMB_X12_Y1_N30
\keybuf~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \keybuf~feeder_combout\ = \keyin~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keyin~combout\,
	combout => \keybuf~feeder_combout\);

-- Location: LCFF_X12_Y1_N31
keybuf : cycloneii_lcell_ff
PORT MAP (
	clk => \en~clkctrl_outclk\,
	datain => \keybuf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keybuf~regout\);

-- Location: LCCOMB_X12_Y1_N8
\keyout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \keyout~0_combout\ = (\keyin~combout\ & ((\keyout~reg0_regout\) # (\keybuf~regout\))) # (!\keyin~combout\ & (\keyout~reg0_regout\ & \keybuf~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyin~combout\,
	datac => \keyout~reg0_regout\,
	datad => \keybuf~regout\,
	combout => \keyout~0_combout\);

-- Location: LCFF_X12_Y1_N9
\keyout~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \en~clkctrl_outclk\,
	datain => \keyout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \keyout~reg0_regout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\keyout~I\ : cycloneii_io
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
	datain => \keyout~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_keyout);
END structure;


