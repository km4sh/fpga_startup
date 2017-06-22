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

-- DATE "04/20/2017 19:12:22"

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

ENTITY 	Block2 IS
    PORT (
	led : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	keyin : IN std_logic
	);
END Block2;

-- Design Ports Information
-- led[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[2]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[1]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led[0]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- keyin	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Block2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_keyin : std_logic;
SIGNAL \inst2|en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|key_en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
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
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst2|en~regout\ : std_logic;
SIGNAL \inst|clk5ms~regout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|clk5ms~0_combout\ : std_logic;
SIGNAL \inst|cnt25~0_combout\ : std_logic;
SIGNAL \inst|cnt25~1_combout\ : std_logic;
SIGNAL \inst|cnt25~2_combout\ : std_logic;
SIGNAL \inst2|en~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inst2|en~clkctrl_outclk\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \keyin~combout\ : std_logic;
SIGNAL \inst2|keybuf~feeder_combout\ : std_logic;
SIGNAL \inst2|keybuf~regout\ : std_logic;
SIGNAL \inst2|keyout~0_combout\ : std_logic;
SIGNAL \inst2|keyout~regout\ : std_logic;
SIGNAL \inst4|pre_key~feeder_combout\ : std_logic;
SIGNAL \inst4|pre_key~regout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst4|key_en~regout\ : std_logic;
SIGNAL \inst4|key_en~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|cnt[0]~1_combout\ : std_logic;
SIGNAL \inst3|cnt[1]~0_combout\ : std_logic;
SIGNAL \inst3|Decoder0~0_combout\ : std_logic;
SIGNAL \inst3|Decoder0~1_combout\ : std_logic;
SIGNAL \inst3|Decoder0~2_combout\ : std_logic;
SIGNAL \inst3|Decoder0~3_combout\ : std_logic;
SIGNAL \inst|cnt25\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst3|cnt\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|led\ : std_logic_vector(3 DOWNTO 0);

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_keyin <= keyin;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|en~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst2|en~regout\);

\inst4|key_en~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst4|key_en~regout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X33_Y10_N6
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|cnt25\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|cnt25\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X33_Y10_N8
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

-- Location: LCCOMB_X33_Y10_N10
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

-- Location: LCCOMB_X33_Y10_N12
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

-- Location: LCCOMB_X33_Y10_N14
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|cnt25\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|cnt25\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|cnt25\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X33_Y10_N16
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

-- Location: LCCOMB_X33_Y10_N18
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

-- Location: LCCOMB_X33_Y10_N20
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

-- Location: LCCOMB_X33_Y10_N22
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

-- Location: LCCOMB_X33_Y10_N24
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

-- Location: LCCOMB_X33_Y10_N26
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

-- Location: LCCOMB_X33_Y10_N28
\inst|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = \inst|cnt25\(11) $ (\inst|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt25\(11),
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\);

-- Location: LCFF_X33_Y10_N31
\inst2|en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst|clk5ms~regout\,
	datain => \inst2|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|en~regout\);

-- Location: LCFF_X32_Y10_N31
\inst|clk5ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|clk5ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk5ms~regout\);

-- Location: LCFF_X33_Y10_N7
\inst|cnt25[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(0));

-- Location: LCFF_X33_Y10_N9
\inst|cnt25[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(1));

-- Location: LCFF_X33_Y10_N11
\inst|cnt25[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(2));

-- Location: LCFF_X33_Y10_N3
\inst|cnt25[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(3));

-- Location: LCCOMB_X32_Y10_N14
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt25\(0) & (\inst|cnt25\(1) & (\inst|cnt25\(2) & !\inst|cnt25\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(0),
	datab => \inst|cnt25\(1),
	datac => \inst|cnt25\(2),
	datad => \inst|cnt25\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCFF_X33_Y10_N1
\inst|cnt25[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(6));

-- Location: LCFF_X33_Y10_N15
\inst|cnt25[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(4));

-- Location: LCFF_X33_Y10_N17
\inst|cnt25[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(5));

-- Location: LCFF_X33_Y10_N21
\inst|cnt25[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(7));

-- Location: LCCOMB_X32_Y10_N6
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt25\(5) & (\inst|cnt25\(6) & (!\inst|cnt25\(4) & !\inst|cnt25\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(5),
	datab => \inst|cnt25\(6),
	datac => \inst|cnt25\(4),
	datad => \inst|cnt25\(7),
	combout => \inst|Equal0~1_combout\);

-- Location: LCFF_X33_Y10_N5
\inst|cnt25[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(11));

-- Location: LCFF_X33_Y10_N23
\inst|cnt25[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(8));

-- Location: LCFF_X33_Y10_N25
\inst|cnt25[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(9));

-- Location: LCFF_X33_Y10_N27
\inst|cnt25[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt25\(10));

-- Location: LCCOMB_X32_Y10_N0
\inst|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|cnt25\(11) & (!\inst|cnt25\(9) & (!\inst|cnt25\(10) & !\inst|cnt25\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt25\(11),
	datab => \inst|cnt25\(9),
	datac => \inst|cnt25\(10),
	datad => \inst|cnt25\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y10_N30
\inst|clk5ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk5ms~0_combout\ = \inst|clk5ms~regout\ $ (((\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & \inst|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|clk5ms~regout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|clk5ms~0_combout\);

-- Location: LCCOMB_X33_Y10_N2
\inst|cnt25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~0_combout\ = (\inst|Add0~6_combout\ & (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|cnt25~0_combout\);

-- Location: LCCOMB_X33_Y10_N0
\inst|cnt25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~1_combout\ = (\inst|Add0~12_combout\ & (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|cnt25~1_combout\);

-- Location: LCCOMB_X33_Y10_N4
\inst|cnt25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt25~2_combout\ = (\inst|Add0~22_combout\ & (((!\inst|Equal0~2_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Add0~22_combout\,
	combout => \inst|cnt25~2_combout\);

-- Location: LCCOMB_X33_Y10_N30
\inst2|en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|en~0_combout\ = !\inst2|en~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|en~regout\,
	combout => \inst2|en~0_combout\);

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

-- Location: CLKCTRL_G4
\inst2|en~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|en~clkctrl_outclk\);

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

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y9_N6
\inst2|keybuf~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|keybuf~feeder_combout\ = \keyin~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keyin~combout\,
	combout => \inst2|keybuf~feeder_combout\);

-- Location: LCFF_X1_Y9_N7
\inst2|keybuf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|en~clkctrl_outclk\,
	datain => \inst2|keybuf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|keybuf~regout\);

-- Location: LCCOMB_X1_Y9_N28
\inst2|keyout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|keyout~0_combout\ = (\keyin~combout\ & ((\inst2|keyout~regout\) # (\inst2|keybuf~regout\))) # (!\keyin~combout\ & (\inst2|keyout~regout\ & \inst2|keybuf~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keyin~combout\,
	datac => \inst2|keyout~regout\,
	datad => \inst2|keybuf~regout\,
	combout => \inst2|keyout~0_combout\);

-- Location: LCFF_X1_Y9_N29
\inst2|keyout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst2|en~clkctrl_outclk\,
	datain => \inst2|keyout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|keyout~regout\);

-- Location: LCCOMB_X1_Y9_N14
\inst4|pre_key~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|pre_key~feeder_combout\ = \inst2|keyout~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|keyout~regout\,
	combout => \inst4|pre_key~feeder_combout\);

-- Location: LCFF_X1_Y9_N15
\inst4|pre_key\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|pre_key~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|pre_key~regout\);

-- Location: LCCOMB_X1_Y9_N20
\inst4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (\inst4|pre_key~regout\ & !\inst2|keyout~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|pre_key~regout\,
	datad => \inst2|keyout~regout\,
	combout => \inst4|Equal0~0_combout\);

-- Location: LCFF_X1_Y9_N21
\inst4|key_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|key_en~regout\);

-- Location: CLKCTRL_G3
\inst4|key_en~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|key_en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|key_en~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N28
\inst3|cnt[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[0]~1_combout\ = !\inst3|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(0),
	combout => \inst3|cnt[0]~1_combout\);

-- Location: LCFF_X33_Y11_N29
\inst3|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(0));

-- Location: LCCOMB_X33_Y11_N14
\inst3|cnt[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|cnt[1]~0_combout\ = \inst3|cnt\(1) $ (\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|cnt[1]~0_combout\);

-- Location: LCFF_X33_Y11_N15
\inst3|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|cnt\(1));

-- Location: LCCOMB_X33_Y11_N0
\inst3|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~0_combout\ = (\inst3|cnt\(1) & \inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|Decoder0~0_combout\);

-- Location: LCFF_X33_Y11_N1
\inst3|led[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|led\(3));

-- Location: LCCOMB_X33_Y11_N30
\inst3|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~1_combout\ = (\inst3|cnt\(1) & !\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|Decoder0~1_combout\);

-- Location: LCFF_X33_Y11_N31
\inst3|led[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|led\(2));

-- Location: LCCOMB_X33_Y11_N24
\inst3|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~2_combout\ = (!\inst3|cnt\(1) & \inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|Decoder0~2_combout\);

-- Location: LCFF_X33_Y11_N25
\inst3|led[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|led\(1));

-- Location: LCCOMB_X33_Y11_N22
\inst3|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Decoder0~3_combout\ = (!\inst3|cnt\(1) & !\inst3|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|cnt\(1),
	datad => \inst3|cnt\(0),
	combout => \inst3|Decoder0~3_combout\);

-- Location: LCFF_X33_Y11_N23
\inst3|led[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst4|key_en~clkctrl_outclk\,
	datain => \inst3|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|led\(0));

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
	datain => \inst3|led\(3),
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
	datain => \inst3|led\(2),
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
	datain => \inst3|led\(1),
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
	datain => \inst3|led\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led(0));
END structure;


