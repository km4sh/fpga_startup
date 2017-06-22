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

-- DATE "04/13/2017 18:35:37"

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

ENTITY 	breath IS
    PORT (
	clk : IN std_logic;
	led : OUT std_logic
	);
END breath;

-- Design Ports Information
-- led	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF breath IS
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
SIGNAL ww_led : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cnt1ms[4]~21_combout\ : std_logic;
SIGNAL \cnt1ms[6]~25_combout\ : std_logic;
SIGNAL \cnt1ms[7]~27_combout\ : std_logic;
SIGNAL \cnt1ms[13]~39_combout\ : std_logic;
SIGNAL \flag~regout\ : std_logic;
SIGNAL \flag~0_combout\ : std_logic;
SIGNAL \flag~1_combout\ : std_logic;
SIGNAL \flag~2_combout\ : std_logic;
SIGNAL \flag~3_combout\ : std_logic;
SIGNAL \flag~4_combout\ : std_logic;
SIGNAL \flag~5_combout\ : std_logic;
SIGNAL \flag~6_combout\ : std_logic;
SIGNAL \flag~7_combout\ : std_logic;
SIGNAL \flag~8_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \cnt1024[0]~10_combout\ : std_logic;
SIGNAL \cnt1024[0]~11\ : std_logic;
SIGNAL \cnt1024[1]~12_combout\ : std_logic;
SIGNAL \cnt1024[1]~13\ : std_logic;
SIGNAL \cnt1024[2]~14_combout\ : std_logic;
SIGNAL \cnt1024[2]~15\ : std_logic;
SIGNAL \cnt1024[3]~16_combout\ : std_logic;
SIGNAL \cnt1024[3]~17\ : std_logic;
SIGNAL \cnt1024[4]~18_combout\ : std_logic;
SIGNAL \cnt1024[4]~19\ : std_logic;
SIGNAL \cnt1024[5]~20_combout\ : std_logic;
SIGNAL \cnt1024[5]~21\ : std_logic;
SIGNAL \cnt1024[6]~22_combout\ : std_logic;
SIGNAL \cnt1024[6]~23\ : std_logic;
SIGNAL \cnt1024[7]~24_combout\ : std_logic;
SIGNAL \cnt1024[7]~25\ : std_logic;
SIGNAL \cnt1024[8]~26_combout\ : std_logic;
SIGNAL \cnt1024[8]~27\ : std_logic;
SIGNAL \cnt1024[9]~28_combout\ : std_logic;
SIGNAL \cnt1ms[1]~15_combout\ : std_logic;
SIGNAL \cnt1ms[1]~16\ : std_logic;
SIGNAL \cnt1ms[2]~17_combout\ : std_logic;
SIGNAL \cnt1ms[2]~18\ : std_logic;
SIGNAL \cnt1ms[3]~19_combout\ : std_logic;
SIGNAL \cnt1ms[3]~20\ : std_logic;
SIGNAL \cnt1ms[4]~22\ : std_logic;
SIGNAL \cnt1ms[5]~23_combout\ : std_logic;
SIGNAL \cnt1ms[5]~24\ : std_logic;
SIGNAL \cnt1ms[6]~26\ : std_logic;
SIGNAL \cnt1ms[7]~28\ : std_logic;
SIGNAL \cnt1ms[8]~29_combout\ : std_logic;
SIGNAL \cnt1ms[8]~30\ : std_logic;
SIGNAL \cnt1ms[9]~32\ : std_logic;
SIGNAL \cnt1ms[10]~33_combout\ : std_logic;
SIGNAL \cnt1ms[10]~34\ : std_logic;
SIGNAL \cnt1ms[11]~36\ : std_logic;
SIGNAL \cnt1ms[12]~37_combout\ : std_logic;
SIGNAL \cnt1ms[12]~38\ : std_logic;
SIGNAL \cnt1ms[13]~40\ : std_logic;
SIGNAL \cnt1ms[14]~41_combout\ : std_logic;
SIGNAL \cnt1ms[14]~42\ : std_logic;
SIGNAL \cnt1ms[15]~43_combout\ : std_logic;
SIGNAL \cnt1ms[11]~35_combout\ : std_logic;
SIGNAL \cnt1ms[9]~31_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \led~reg0_regout\ : std_logic;
SIGNAL cnt1024 : std_logic_vector(9 DOWNTO 0);
SIGNAL cnt1ms : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_clk <= clk;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X31_Y12_N25
\cnt1ms[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[13]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(13));

-- Location: LCFF_X31_Y12_N13
\cnt1ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[7]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(7));

-- Location: LCFF_X31_Y12_N11
\cnt1ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(6));

-- Location: LCFF_X31_Y12_N7
\cnt1ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(4));

-- Location: LCCOMB_X31_Y12_N6
\cnt1ms[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[4]~21_combout\ = (cnt1ms(4) & (!\cnt1ms[3]~20\)) # (!cnt1ms(4) & ((\cnt1ms[3]~20\) # (GND)))
-- \cnt1ms[4]~22\ = CARRY((!\cnt1ms[3]~20\) # (!cnt1ms(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(4),
	datad => VCC,
	cin => \cnt1ms[3]~20\,
	combout => \cnt1ms[4]~21_combout\,
	cout => \cnt1ms[4]~22\);

-- Location: LCCOMB_X31_Y12_N10
\cnt1ms[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[6]~25_combout\ = (cnt1ms(6) & (!\cnt1ms[5]~24\)) # (!cnt1ms(6) & ((\cnt1ms[5]~24\) # (GND)))
-- \cnt1ms[6]~26\ = CARRY((!\cnt1ms[5]~24\) # (!cnt1ms(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(6),
	datad => VCC,
	cin => \cnt1ms[5]~24\,
	combout => \cnt1ms[6]~25_combout\,
	cout => \cnt1ms[6]~26\);

-- Location: LCCOMB_X31_Y12_N12
\cnt1ms[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[7]~27_combout\ = (cnt1ms(7) & (\cnt1ms[6]~26\ $ (GND))) # (!cnt1ms(7) & (!\cnt1ms[6]~26\ & VCC))
-- \cnt1ms[7]~28\ = CARRY((cnt1ms(7) & !\cnt1ms[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(7),
	datad => VCC,
	cin => \cnt1ms[6]~26\,
	combout => \cnt1ms[7]~27_combout\,
	cout => \cnt1ms[7]~28\);

-- Location: LCCOMB_X31_Y12_N24
\cnt1ms[13]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[13]~39_combout\ = (cnt1ms(13) & (\cnt1ms[12]~38\ $ (GND))) # (!cnt1ms(13) & (!\cnt1ms[12]~38\ & VCC))
-- \cnt1ms[13]~40\ = CARRY((cnt1ms(13) & !\cnt1ms[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(13),
	datad => VCC,
	cin => \cnt1ms[12]~38\,
	combout => \cnt1ms[13]~39_combout\,
	cout => \cnt1ms[13]~40\);

-- Location: LCFF_X29_Y12_N21
flag : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \flag~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \flag~regout\);

-- Location: LCCOMB_X30_Y12_N24
\flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~0_combout\ = (cnt1024(8) & (cnt1024(9) & (cnt1024(0) & cnt1024(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(8),
	datab => cnt1024(9),
	datac => cnt1024(0),
	datad => cnt1024(1),
	combout => \flag~0_combout\);

-- Location: LCCOMB_X30_Y12_N22
\flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~1_combout\ = (cnt1024(3) & (cnt1024(2) & (cnt1024(4) & cnt1024(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(3),
	datab => cnt1024(2),
	datac => cnt1024(4),
	datad => cnt1024(5),
	combout => \flag~1_combout\);

-- Location: LCCOMB_X30_Y12_N28
\flag~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~2_combout\ = (cnt1024(6) & (cnt1024(7) & (\flag~0_combout\ & \flag~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(6),
	datab => cnt1024(7),
	datac => \flag~0_combout\,
	datad => \flag~1_combout\,
	combout => \flag~2_combout\);

-- Location: LCCOMB_X30_Y12_N26
\flag~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~3_combout\ = (cnt1ms(14)) # ((cnt1024(0)) # ((cnt1ms(1)) # (cnt1ms(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(14),
	datab => cnt1024(0),
	datac => cnt1ms(1),
	datad => cnt1ms(15),
	combout => \flag~3_combout\);

-- Location: LCCOMB_X30_Y12_N20
\flag~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~4_combout\ = (cnt1ms(2)) # ((cnt1ms(5)) # ((cnt1ms(3)) # (cnt1ms(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(2),
	datab => cnt1ms(5),
	datac => cnt1ms(3),
	datad => cnt1ms(4),
	combout => \flag~4_combout\);

-- Location: LCCOMB_X31_Y12_N30
\flag~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~5_combout\ = (cnt1ms(7)) # ((cnt1ms(8)) # ((cnt1ms(9)) # (cnt1ms(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(7),
	datab => cnt1ms(8),
	datac => cnt1ms(9),
	datad => cnt1ms(6),
	combout => \flag~5_combout\);

-- Location: LCCOMB_X30_Y12_N30
\flag~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~6_combout\ = (cnt1ms(11)) # ((cnt1ms(13)) # ((cnt1ms(10)) # (cnt1ms(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(11),
	datab => cnt1ms(13),
	datac => cnt1ms(10),
	datad => cnt1ms(12),
	combout => \flag~6_combout\);

-- Location: LCCOMB_X29_Y12_N30
\flag~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~7_combout\ = (\flag~5_combout\) # ((\flag~6_combout\) # ((\flag~3_combout\) # (\flag~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \flag~5_combout\,
	datab => \flag~6_combout\,
	datac => \flag~3_combout\,
	datad => \flag~4_combout\,
	combout => \flag~7_combout\);

-- Location: LCCOMB_X29_Y12_N20
\flag~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \flag~8_combout\ = (\flag~2_combout\) # ((\flag~regout\ & \flag~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \flag~2_combout\,
	datac => \flag~regout\,
	datad => \flag~7_combout\,
	combout => \flag~8_combout\);

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

-- Location: LCCOMB_X30_Y12_N0
\cnt1024[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[0]~10_combout\ = cnt1024(0) $ (VCC)
-- \cnt1024[0]~11\ = CARRY(cnt1024(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt1024(0),
	datad => VCC,
	combout => \cnt1024[0]~10_combout\,
	cout => \cnt1024[0]~11\);

-- Location: LCFF_X30_Y12_N1
\cnt1024[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(0));

-- Location: LCCOMB_X30_Y12_N2
\cnt1024[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[1]~12_combout\ = (\flag~regout\ & ((cnt1024(1) & (\cnt1024[0]~11\ & VCC)) # (!cnt1024(1) & (!\cnt1024[0]~11\)))) # (!\flag~regout\ & ((cnt1024(1) & (!\cnt1024[0]~11\)) # (!cnt1024(1) & ((\cnt1024[0]~11\) # (GND)))))
-- \cnt1024[1]~13\ = CARRY((\flag~regout\ & (!cnt1024(1) & !\cnt1024[0]~11\)) # (!\flag~regout\ & ((!\cnt1024[0]~11\) # (!cnt1024(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(1),
	datad => VCC,
	cin => \cnt1024[0]~11\,
	combout => \cnt1024[1]~12_combout\,
	cout => \cnt1024[1]~13\);

-- Location: LCFF_X30_Y12_N3
\cnt1024[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(1));

-- Location: LCCOMB_X30_Y12_N4
\cnt1024[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[2]~14_combout\ = ((\flag~regout\ $ (cnt1024(2) $ (!\cnt1024[1]~13\)))) # (GND)
-- \cnt1024[2]~15\ = CARRY((\flag~regout\ & ((cnt1024(2)) # (!\cnt1024[1]~13\))) # (!\flag~regout\ & (cnt1024(2) & !\cnt1024[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(2),
	datad => VCC,
	cin => \cnt1024[1]~13\,
	combout => \cnt1024[2]~14_combout\,
	cout => \cnt1024[2]~15\);

-- Location: LCFF_X30_Y12_N5
\cnt1024[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(2));

-- Location: LCCOMB_X30_Y12_N6
\cnt1024[3]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[3]~16_combout\ = (\flag~regout\ & ((cnt1024(3) & (\cnt1024[2]~15\ & VCC)) # (!cnt1024(3) & (!\cnt1024[2]~15\)))) # (!\flag~regout\ & ((cnt1024(3) & (!\cnt1024[2]~15\)) # (!cnt1024(3) & ((\cnt1024[2]~15\) # (GND)))))
-- \cnt1024[3]~17\ = CARRY((\flag~regout\ & (!cnt1024(3) & !\cnt1024[2]~15\)) # (!\flag~regout\ & ((!\cnt1024[2]~15\) # (!cnt1024(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(3),
	datad => VCC,
	cin => \cnt1024[2]~15\,
	combout => \cnt1024[3]~16_combout\,
	cout => \cnt1024[3]~17\);

-- Location: LCFF_X30_Y12_N7
\cnt1024[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(3));

-- Location: LCCOMB_X30_Y12_N8
\cnt1024[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[4]~18_combout\ = ((\flag~regout\ $ (cnt1024(4) $ (!\cnt1024[3]~17\)))) # (GND)
-- \cnt1024[4]~19\ = CARRY((\flag~regout\ & ((cnt1024(4)) # (!\cnt1024[3]~17\))) # (!\flag~regout\ & (cnt1024(4) & !\cnt1024[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(4),
	datad => VCC,
	cin => \cnt1024[3]~17\,
	combout => \cnt1024[4]~18_combout\,
	cout => \cnt1024[4]~19\);

-- Location: LCFF_X30_Y12_N9
\cnt1024[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(4));

-- Location: LCCOMB_X30_Y12_N10
\cnt1024[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[5]~20_combout\ = (\flag~regout\ & ((cnt1024(5) & (\cnt1024[4]~19\ & VCC)) # (!cnt1024(5) & (!\cnt1024[4]~19\)))) # (!\flag~regout\ & ((cnt1024(5) & (!\cnt1024[4]~19\)) # (!cnt1024(5) & ((\cnt1024[4]~19\) # (GND)))))
-- \cnt1024[5]~21\ = CARRY((\flag~regout\ & (!cnt1024(5) & !\cnt1024[4]~19\)) # (!\flag~regout\ & ((!\cnt1024[4]~19\) # (!cnt1024(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(5),
	datad => VCC,
	cin => \cnt1024[4]~19\,
	combout => \cnt1024[5]~20_combout\,
	cout => \cnt1024[5]~21\);

-- Location: LCFF_X30_Y12_N11
\cnt1024[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(5));

-- Location: LCCOMB_X30_Y12_N12
\cnt1024[6]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[6]~22_combout\ = ((\flag~regout\ $ (cnt1024(6) $ (!\cnt1024[5]~21\)))) # (GND)
-- \cnt1024[6]~23\ = CARRY((\flag~regout\ & ((cnt1024(6)) # (!\cnt1024[5]~21\))) # (!\flag~regout\ & (cnt1024(6) & !\cnt1024[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(6),
	datad => VCC,
	cin => \cnt1024[5]~21\,
	combout => \cnt1024[6]~22_combout\,
	cout => \cnt1024[6]~23\);

-- Location: LCFF_X30_Y12_N13
\cnt1024[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(6));

-- Location: LCCOMB_X30_Y12_N14
\cnt1024[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[7]~24_combout\ = (\flag~regout\ & ((cnt1024(7) & (\cnt1024[6]~23\ & VCC)) # (!cnt1024(7) & (!\cnt1024[6]~23\)))) # (!\flag~regout\ & ((cnt1024(7) & (!\cnt1024[6]~23\)) # (!cnt1024(7) & ((\cnt1024[6]~23\) # (GND)))))
-- \cnt1024[7]~25\ = CARRY((\flag~regout\ & (!cnt1024(7) & !\cnt1024[6]~23\)) # (!\flag~regout\ & ((!\cnt1024[6]~23\) # (!cnt1024(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(7),
	datad => VCC,
	cin => \cnt1024[6]~23\,
	combout => \cnt1024[7]~24_combout\,
	cout => \cnt1024[7]~25\);

-- Location: LCFF_X30_Y12_N15
\cnt1024[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(7));

-- Location: LCCOMB_X30_Y12_N16
\cnt1024[8]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[8]~26_combout\ = ((\flag~regout\ $ (cnt1024(8) $ (!\cnt1024[7]~25\)))) # (GND)
-- \cnt1024[8]~27\ = CARRY((\flag~regout\ & ((cnt1024(8)) # (!\cnt1024[7]~25\))) # (!\flag~regout\ & (cnt1024(8) & !\cnt1024[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(8),
	datad => VCC,
	cin => \cnt1024[7]~25\,
	combout => \cnt1024[8]~26_combout\,
	cout => \cnt1024[8]~27\);

-- Location: LCFF_X30_Y12_N17
\cnt1024[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(8));

-- Location: LCCOMB_X30_Y12_N18
\cnt1024[9]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1024[9]~28_combout\ = \flag~regout\ $ (cnt1024(9) $ (\cnt1024[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \flag~regout\,
	datab => cnt1024(9),
	cin => \cnt1024[8]~27\,
	combout => \cnt1024[9]~28_combout\);

-- Location: LCFF_X30_Y12_N19
\cnt1024[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1024[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1024(9));

-- Location: LCCOMB_X31_Y12_N0
\cnt1ms[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[1]~15_combout\ = (cnt1024(0) & (cnt1ms(1) $ (VCC))) # (!cnt1024(0) & (cnt1ms(1) & VCC))
-- \cnt1ms[1]~16\ = CARRY((cnt1024(0) & cnt1ms(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(0),
	datab => cnt1ms(1),
	datad => VCC,
	combout => \cnt1ms[1]~15_combout\,
	cout => \cnt1ms[1]~16\);

-- Location: LCFF_X31_Y12_N1
\cnt1ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[1]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(1));

-- Location: LCCOMB_X31_Y12_N2
\cnt1ms[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[2]~17_combout\ = (cnt1ms(2) & (!\cnt1ms[1]~16\)) # (!cnt1ms(2) & ((\cnt1ms[1]~16\) # (GND)))
-- \cnt1ms[2]~18\ = CARRY((!\cnt1ms[1]~16\) # (!cnt1ms(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(2),
	datad => VCC,
	cin => \cnt1ms[1]~16\,
	combout => \cnt1ms[2]~17_combout\,
	cout => \cnt1ms[2]~18\);

-- Location: LCFF_X31_Y12_N3
\cnt1ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(2));

-- Location: LCCOMB_X31_Y12_N4
\cnt1ms[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[3]~19_combout\ = (cnt1ms(3) & (\cnt1ms[2]~18\ $ (GND))) # (!cnt1ms(3) & (!\cnt1ms[2]~18\ & VCC))
-- \cnt1ms[3]~20\ = CARRY((cnt1ms(3) & !\cnt1ms[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(3),
	datad => VCC,
	cin => \cnt1ms[2]~18\,
	combout => \cnt1ms[3]~19_combout\,
	cout => \cnt1ms[3]~20\);

-- Location: LCFF_X31_Y12_N5
\cnt1ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(3));

-- Location: LCCOMB_X31_Y12_N8
\cnt1ms[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[5]~23_combout\ = (cnt1ms(5) & (\cnt1ms[4]~22\ $ (GND))) # (!cnt1ms(5) & (!\cnt1ms[4]~22\ & VCC))
-- \cnt1ms[5]~24\ = CARRY((cnt1ms(5) & !\cnt1ms[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(5),
	datad => VCC,
	cin => \cnt1ms[4]~22\,
	combout => \cnt1ms[5]~23_combout\,
	cout => \cnt1ms[5]~24\);

-- Location: LCFF_X31_Y12_N9
\cnt1ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[5]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(5));

-- Location: LCCOMB_X31_Y12_N14
\cnt1ms[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[8]~29_combout\ = (cnt1ms(8) & (!\cnt1ms[7]~28\)) # (!cnt1ms(8) & ((\cnt1ms[7]~28\) # (GND)))
-- \cnt1ms[8]~30\ = CARRY((!\cnt1ms[7]~28\) # (!cnt1ms(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(8),
	datad => VCC,
	cin => \cnt1ms[7]~28\,
	combout => \cnt1ms[8]~29_combout\,
	cout => \cnt1ms[8]~30\);

-- Location: LCFF_X31_Y12_N15
\cnt1ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[8]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(8));

-- Location: LCCOMB_X31_Y12_N16
\cnt1ms[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[9]~31_combout\ = (cnt1ms(9) & (\cnt1ms[8]~30\ $ (GND))) # (!cnt1ms(9) & (!\cnt1ms[8]~30\ & VCC))
-- \cnt1ms[9]~32\ = CARRY((cnt1ms(9) & !\cnt1ms[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(9),
	datad => VCC,
	cin => \cnt1ms[8]~30\,
	combout => \cnt1ms[9]~31_combout\,
	cout => \cnt1ms[9]~32\);

-- Location: LCCOMB_X31_Y12_N18
\cnt1ms[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[10]~33_combout\ = (cnt1ms(10) & (!\cnt1ms[9]~32\)) # (!cnt1ms(10) & ((\cnt1ms[9]~32\) # (GND)))
-- \cnt1ms[10]~34\ = CARRY((!\cnt1ms[9]~32\) # (!cnt1ms(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(10),
	datad => VCC,
	cin => \cnt1ms[9]~32\,
	combout => \cnt1ms[10]~33_combout\,
	cout => \cnt1ms[10]~34\);

-- Location: LCFF_X31_Y12_N19
\cnt1ms[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[10]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(10));

-- Location: LCCOMB_X31_Y12_N20
\cnt1ms[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[11]~35_combout\ = (cnt1ms(11) & (\cnt1ms[10]~34\ $ (GND))) # (!cnt1ms(11) & (!\cnt1ms[10]~34\ & VCC))
-- \cnt1ms[11]~36\ = CARRY((cnt1ms(11) & !\cnt1ms[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(11),
	datad => VCC,
	cin => \cnt1ms[10]~34\,
	combout => \cnt1ms[11]~35_combout\,
	cout => \cnt1ms[11]~36\);

-- Location: LCCOMB_X31_Y12_N22
\cnt1ms[12]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[12]~37_combout\ = (cnt1ms(12) & (!\cnt1ms[11]~36\)) # (!cnt1ms(12) & ((\cnt1ms[11]~36\) # (GND)))
-- \cnt1ms[12]~38\ = CARRY((!\cnt1ms[11]~36\) # (!cnt1ms(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(12),
	datad => VCC,
	cin => \cnt1ms[11]~36\,
	combout => \cnt1ms[12]~37_combout\,
	cout => \cnt1ms[12]~38\);

-- Location: LCFF_X31_Y12_N23
\cnt1ms[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(12));

-- Location: LCCOMB_X31_Y12_N26
\cnt1ms[14]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[14]~41_combout\ = (cnt1ms(14) & (!\cnt1ms[13]~40\)) # (!cnt1ms(14) & ((\cnt1ms[13]~40\) # (GND)))
-- \cnt1ms[14]~42\ = CARRY((!\cnt1ms[13]~40\) # (!cnt1ms(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1ms(14),
	datad => VCC,
	cin => \cnt1ms[13]~40\,
	combout => \cnt1ms[14]~41_combout\,
	cout => \cnt1ms[14]~42\);

-- Location: LCFF_X31_Y12_N27
\cnt1ms[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[14]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(14));

-- Location: LCCOMB_X31_Y12_N28
\cnt1ms[15]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \cnt1ms[15]~43_combout\ = \cnt1ms[14]~42\ $ (!cnt1ms(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => cnt1ms(15),
	cin => \cnt1ms[14]~42\,
	combout => \cnt1ms[15]~43_combout\);

-- Location: LCFF_X31_Y12_N29
\cnt1ms[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[15]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(15));

-- Location: LCFF_X31_Y12_N21
\cnt1ms[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(11));

-- Location: LCFF_X31_Y12_N17
\cnt1ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \cnt1ms[9]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt1ms(9));

-- Location: LCCOMB_X32_Y12_N6
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((cnt1ms(6) & !cnt1024(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(6),
	datab => cnt1024(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y12_N8
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((cnt1ms(7) & (cnt1024(1) & !\LessThan0~1_cout\)) # (!cnt1ms(7) & ((cnt1024(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(7),
	datab => cnt1024(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y12_N10
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((cnt1024(2) & (cnt1ms(8) & !\LessThan0~3_cout\)) # (!cnt1024(2) & ((cnt1ms(8)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(2),
	datab => cnt1ms(8),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y12_N12
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((cnt1024(3) & ((!\LessThan0~5_cout\) # (!cnt1ms(9)))) # (!cnt1024(3) & (!cnt1ms(9) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(3),
	datab => cnt1ms(9),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y12_N14
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((cnt1024(4) & (cnt1ms(10) & !\LessThan0~7_cout\)) # (!cnt1024(4) & ((cnt1ms(10)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(4),
	datab => cnt1ms(10),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y12_N16
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((cnt1024(5) & ((!\LessThan0~9_cout\) # (!cnt1ms(11)))) # (!cnt1024(5) & (!cnt1ms(11) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(5),
	datab => cnt1ms(11),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y12_N18
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((cnt1024(6) & (cnt1ms(12) & !\LessThan0~11_cout\)) # (!cnt1024(6) & ((cnt1ms(12)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(6),
	datab => cnt1ms(12),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y12_N20
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((cnt1ms(13) & (cnt1024(7) & !\LessThan0~13_cout\)) # (!cnt1ms(13) & ((cnt1024(7)) # (!\LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1ms(13),
	datab => cnt1024(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X32_Y12_N22
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((cnt1024(8) & (cnt1ms(14) & !\LessThan0~15_cout\)) # (!cnt1024(8) & ((cnt1ms(14)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cnt1024(8),
	datab => cnt1ms(14),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X32_Y12_N24
\LessThan0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = (cnt1024(9) & (\LessThan0~17_cout\ & cnt1ms(15))) # (!cnt1024(9) & ((\LessThan0~17_cout\) # (cnt1ms(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cnt1024(9),
	datad => cnt1ms(15),
	cin => \LessThan0~17_cout\,
	combout => \LessThan0~18_combout\);

-- Location: LCFF_X32_Y12_N25
\led~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \led~reg0_regout\);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
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
	datain => \led~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);
END structure;


