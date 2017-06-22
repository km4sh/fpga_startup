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

-- DATE "05/18/2017 16:00:51"

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

ENTITY 	mattmustdie IS
    PORT (
	leds : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	col : IN std_logic_vector(2 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0)
	);
END mattmustdie;

-- Design Ports Information
-- leds[3]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[2]	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[1]	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- leds[0]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[3]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[2]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[1]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- row[0]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[1]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- col[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF mattmustdie IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt[0]~33_combout\ : std_logic;
SIGNAL \inst|cnt[4]~41_combout\ : std_logic;
SIGNAL \inst|cnt[12]~57_combout\ : std_logic;
SIGNAL \inst|cnt[13]~59_combout\ : std_logic;
SIGNAL \inst|cnt[20]~73_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst1|key[10]~1_combout\ : std_logic;
SIGNAL \inst1|key[4]~7_combout\ : std_logic;
SIGNAL \inst1|key[3]~8_combout\ : std_logic;
SIGNAL \inst1|key[2]~9_combout\ : std_logic;
SIGNAL \inst1|key[1]~10_combout\ : std_logic;
SIGNAL \inst1|key[0]~11_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|key[9]~2_combout\ : std_logic;
SIGNAL \inst1|row[2]~feeder_combout\ : std_logic;
SIGNAL \inst|cnt[0]~34\ : std_logic;
SIGNAL \inst|cnt[1]~35_combout\ : std_logic;
SIGNAL \inst|cnt[14]~62\ : std_logic;
SIGNAL \inst|cnt[15]~63_combout\ : std_logic;
SIGNAL \inst|cnt[15]~64\ : std_logic;
SIGNAL \inst|cnt[16]~66\ : std_logic;
SIGNAL \inst|cnt[17]~67_combout\ : std_logic;
SIGNAL \inst|cnt[17]~68\ : std_logic;
SIGNAL \inst|cnt[18]~69_combout\ : std_logic;
SIGNAL \inst|cnt[18]~70\ : std_logic;
SIGNAL \inst|cnt[19]~71_combout\ : std_logic;
SIGNAL \inst|cnt[19]~72\ : std_logic;
SIGNAL \inst|cnt[20]~74\ : std_logic;
SIGNAL \inst|cnt[21]~75_combout\ : std_logic;
SIGNAL \inst|cnt[21]~76\ : std_logic;
SIGNAL \inst|cnt[22]~77_combout\ : std_logic;
SIGNAL \inst|cnt[22]~78\ : std_logic;
SIGNAL \inst|cnt[23]~79_combout\ : std_logic;
SIGNAL \inst|cnt[23]~80\ : std_logic;
SIGNAL \inst|cnt[24]~82\ : std_logic;
SIGNAL \inst|cnt[25]~83_combout\ : std_logic;
SIGNAL \inst|cnt[25]~84\ : std_logic;
SIGNAL \inst|cnt[26]~85_combout\ : std_logic;
SIGNAL \inst|cnt[24]~81_combout\ : std_logic;
SIGNAL \inst|cnt[26]~86\ : std_logic;
SIGNAL \inst|cnt[27]~87_combout\ : std_logic;
SIGNAL \inst|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|cnt[27]~88\ : std_logic;
SIGNAL \inst|cnt[28]~89_combout\ : std_logic;
SIGNAL \inst|cnt[28]~90\ : std_logic;
SIGNAL \inst|cnt[29]~91_combout\ : std_logic;
SIGNAL \inst|cnt[29]~92\ : std_logic;
SIGNAL \inst|cnt[30]~93_combout\ : std_logic;
SIGNAL \inst|cnt[30]~94\ : std_logic;
SIGNAL \inst|cnt[31]~95_combout\ : std_logic;
SIGNAL \inst|LessThan0~11_combout\ : std_logic;
SIGNAL \inst|LessThan0~13_combout\ : std_logic;
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
SIGNAL \inst|cnt[12]~58\ : std_logic;
SIGNAL \inst|cnt[13]~60\ : std_logic;
SIGNAL \inst|cnt[14]~61_combout\ : std_logic;
SIGNAL \inst|cnt[11]~55_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|cnt[16]~65_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|cnt[2]~37_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|cnt[31]~96\ : std_logic;
SIGNAL \inst|cnt[32]~97_combout\ : std_logic;
SIGNAL \inst|LessThan0~12_combout\ : std_logic;
SIGNAL \inst|clk100ms~0_combout\ : std_logic;
SIGNAL \inst|clk100ms~regout\ : std_logic;
SIGNAL \inst1|row[0]~1_combout\ : std_logic;
SIGNAL \inst1|row[1]~0_combout\ : std_logic;
SIGNAL \inst1|key[8]~3_combout\ : std_logic;
SIGNAL \inst1|key[11]~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|leds[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|key[5]~6_combout\ : std_logic;
SIGNAL \inst1|key[7]~4_combout\ : std_logic;
SIGNAL \inst1|key[6]~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|leds~0_combout\ : std_logic;
SIGNAL \inst2|leds~1_combout\ : std_logic;
SIGNAL \col~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|leds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|row\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(32 DOWNTO 0);
SIGNAL \inst1|key\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|ALT_INV_row\ : std_logic_vector(3 DOWNTO 0);

BEGIN

leds <= ww_leds;
ww_clk <= clk;
ww_col <= col;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst1|ALT_INV_row\(0) <= NOT \inst1|row\(0);
\inst1|ALT_INV_row\(1) <= NOT \inst1|row\(1);
\inst1|ALT_INV_row\(2) <= NOT \inst1|row\(2);
\inst1|ALT_INV_row\(3) <= NOT \inst1|row\(3);

-- Location: LCFF_X21_Y15_N25
\inst|cnt[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[20]~73_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(20));

-- Location: LCFF_X21_Y15_N11
\inst|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[13]~59_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(13));

-- Location: LCFF_X21_Y16_N17
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[0]~33_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCFF_X21_Y16_N25
\inst|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[4]~41_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(4));

-- Location: LCFF_X22_Y14_N7
\inst|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[12]~57_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(12));

-- Location: LCCOMB_X21_Y16_N16
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

-- Location: LCCOMB_X21_Y16_N24
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

-- Location: LCCOMB_X21_Y15_N8
\inst|cnt[12]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[12]~57_combout\ = (\inst|cnt\(12) & (\inst|cnt[11]~56\ $ (GND))) # (!\inst|cnt\(12) & (!\inst|cnt[11]~56\ & VCC))
-- \inst|cnt[12]~58\ = CARRY((\inst|cnt\(12) & !\inst|cnt[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|cnt[11]~56\,
	combout => \inst|cnt[12]~57_combout\,
	cout => \inst|cnt[12]~58\);

-- Location: LCCOMB_X21_Y15_N10
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

-- Location: LCCOMB_X21_Y15_N24
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

-- Location: LCFF_X4_Y1_N13
\inst1|key[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[10]~1_combout\,
	ena => \inst1|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(10));

-- Location: LCFF_X3_Y1_N11
\inst1|key[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[4]~7_combout\,
	ena => \inst1|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(4));

-- Location: LCFF_X5_Y1_N23
\inst1|key[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[3]~8_combout\,
	ena => \inst1|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(3));

-- Location: LCFF_X4_Y1_N11
\inst1|key[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[2]~9_combout\,
	ena => \inst1|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(2));

-- Location: LCFF_X4_Y1_N29
\inst1|key[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[1]~10_combout\,
	ena => \inst1|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(1));

-- Location: LCFF_X3_Y1_N21
\inst1|key[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[0]~11_combout\,
	ena => \inst1|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(0));

-- Location: LCCOMB_X4_Y1_N14
\inst2|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst1|key\(2) & (!\inst1|key\(1) & (!\inst1|key\(0) & !\inst1|key\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|key\(2),
	datab => \inst1|key\(1),
	datac => \inst1|key\(0),
	datad => \inst1|key\(3),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y14_N16
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ((\inst|LessThan0~0_combout\ & ((!\inst|cnt\(20)) # (!\inst|cnt\(19))))) # (!\inst|cnt\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(23),
	datab => \inst|LessThan0~0_combout\,
	datac => \inst|cnt\(19),
	datad => \inst|cnt\(20),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y16_N6
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = ((!\inst|cnt\(5)) # (!\inst|cnt\(4))) # (!\inst|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(6),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(5),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X4_Y1_N12
\inst1|key[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[10]~1_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst1|key[10]~1_combout\);

-- Location: LCCOMB_X3_Y1_N10
\inst1|key[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[4]~7_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(1),
	combout => \inst1|key[4]~7_combout\);

-- Location: LCCOMB_X5_Y1_N22
\inst1|key[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[3]~8_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst1|key[3]~8_combout\);

-- Location: LCCOMB_X4_Y1_N10
\inst1|key[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[2]~9_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(2),
	combout => \inst1|key[2]~9_combout\);

-- Location: LCCOMB_X4_Y1_N28
\inst1|key[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[1]~10_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \col~combout\(2),
	combout => \inst1|key[1]~10_combout\);

-- Location: LCCOMB_X3_Y1_N20
\inst1|key[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[0]~11_combout\ = !\col~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(2),
	combout => \inst1|key[0]~11_combout\);

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

-- Location: LCCOMB_X4_Y1_N26
\inst1|key[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[9]~2_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst1|key[9]~2_combout\);

-- Location: LCCOMB_X3_Y1_N14
\inst1|row[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|row[2]~feeder_combout\ = \inst1|row\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|row\(1),
	combout => \inst1|row[2]~feeder_combout\);

-- Location: LCCOMB_X21_Y16_N18
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

-- Location: LCCOMB_X21_Y15_N12
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

-- Location: LCCOMB_X21_Y15_N14
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

-- Location: LCFF_X21_Y15_N15
\inst|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[15]~63_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(15));

-- Location: LCCOMB_X21_Y15_N16
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

-- Location: LCCOMB_X21_Y15_N18
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

-- Location: LCFF_X21_Y15_N19
\inst|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[17]~67_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(17));

-- Location: LCCOMB_X21_Y15_N20
\inst|cnt[18]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[18]~69_combout\ = (\inst|cnt\(18) & (\inst|cnt[17]~68\ $ (GND))) # (!\inst|cnt\(18) & (!\inst|cnt[17]~68\ & VCC))
-- \inst|cnt[18]~70\ = CARRY((\inst|cnt\(18) & !\inst|cnt[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(18),
	datad => VCC,
	cin => \inst|cnt[17]~68\,
	combout => \inst|cnt[18]~69_combout\,
	cout => \inst|cnt[18]~70\);

-- Location: LCFF_X22_Y14_N5
\inst|cnt[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[18]~69_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(18));

-- Location: LCCOMB_X21_Y15_N22
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

-- Location: LCFF_X22_Y14_N13
\inst|cnt[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[19]~71_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(19));

-- Location: LCCOMB_X21_Y15_N26
\inst|cnt[21]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[21]~75_combout\ = (\inst|cnt\(21) & (!\inst|cnt[20]~74\)) # (!\inst|cnt\(21) & ((\inst|cnt[20]~74\) # (GND)))
-- \inst|cnt[21]~76\ = CARRY((!\inst|cnt[20]~74\) # (!\inst|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(21),
	datad => VCC,
	cin => \inst|cnt[20]~74\,
	combout => \inst|cnt[21]~75_combout\,
	cout => \inst|cnt[21]~76\);

-- Location: LCFF_X22_Y14_N21
\inst|cnt[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[21]~75_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(21));

-- Location: LCCOMB_X21_Y15_N28
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

-- Location: LCFF_X22_Y14_N15
\inst|cnt[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[22]~77_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(22));

-- Location: LCCOMB_X21_Y15_N30
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

-- Location: LCFF_X22_Y14_N19
\inst|cnt[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[23]~79_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(23));

-- Location: LCCOMB_X21_Y14_N0
\inst|cnt[24]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[24]~81_combout\ = (\inst|cnt\(24) & (\inst|cnt[23]~80\ $ (GND))) # (!\inst|cnt\(24) & (!\inst|cnt[23]~80\ & VCC))
-- \inst|cnt[24]~82\ = CARRY((\inst|cnt\(24) & !\inst|cnt[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(24),
	datad => VCC,
	cin => \inst|cnt[23]~80\,
	combout => \inst|cnt[24]~81_combout\,
	cout => \inst|cnt[24]~82\);

-- Location: LCCOMB_X21_Y14_N2
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

-- Location: LCFF_X21_Y14_N3
\inst|cnt[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[25]~83_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(25));

-- Location: LCCOMB_X21_Y14_N4
\inst|cnt[26]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[26]~85_combout\ = (\inst|cnt\(26) & (\inst|cnt[25]~84\ $ (GND))) # (!\inst|cnt\(26) & (!\inst|cnt[25]~84\ & VCC))
-- \inst|cnt[26]~86\ = CARRY((\inst|cnt\(26) & !\inst|cnt[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(26),
	datad => VCC,
	cin => \inst|cnt[25]~84\,
	combout => \inst|cnt[26]~85_combout\,
	cout => \inst|cnt[26]~86\);

-- Location: LCFF_X21_Y14_N5
\inst|cnt[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[26]~85_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(26));

-- Location: LCFF_X21_Y14_N1
\inst|cnt[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[24]~81_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(24));

-- Location: LCCOMB_X21_Y14_N6
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

-- Location: LCFF_X21_Y14_N7
\inst|cnt[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[27]~87_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(27));

-- Location: LCCOMB_X22_Y14_N28
\inst|LessThan0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~10_combout\ = (!\inst|cnt\(25) & (!\inst|cnt\(26) & (!\inst|cnt\(24) & !\inst|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(25),
	datab => \inst|cnt\(26),
	datac => \inst|cnt\(24),
	datad => \inst|cnt\(27),
	combout => \inst|LessThan0~10_combout\);

-- Location: LCCOMB_X21_Y14_N8
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

-- Location: LCFF_X21_Y14_N9
\inst|cnt[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[28]~89_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(28));

-- Location: LCCOMB_X21_Y14_N10
\inst|cnt[29]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[29]~91_combout\ = (\inst|cnt\(29) & (!\inst|cnt[28]~90\)) # (!\inst|cnt\(29) & ((\inst|cnt[28]~90\) # (GND)))
-- \inst|cnt[29]~92\ = CARRY((!\inst|cnt[28]~90\) # (!\inst|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(29),
	datad => VCC,
	cin => \inst|cnt[28]~90\,
	combout => \inst|cnt[29]~91_combout\,
	cout => \inst|cnt[29]~92\);

-- Location: LCFF_X21_Y14_N11
\inst|cnt[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[29]~91_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(29));

-- Location: LCCOMB_X21_Y14_N12
\inst|cnt[30]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[30]~93_combout\ = (\inst|cnt\(30) & (\inst|cnt[29]~92\ $ (GND))) # (!\inst|cnt\(30) & (!\inst|cnt[29]~92\ & VCC))
-- \inst|cnt[30]~94\ = CARRY((\inst|cnt\(30) & !\inst|cnt[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(30),
	datad => VCC,
	cin => \inst|cnt[29]~92\,
	combout => \inst|cnt[30]~93_combout\,
	cout => \inst|cnt[30]~94\);

-- Location: LCFF_X21_Y14_N13
\inst|cnt[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[30]~93_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(30));

-- Location: LCCOMB_X21_Y14_N14
\inst|cnt[31]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt[31]~95_combout\ = (\inst|cnt\(31) & (!\inst|cnt[30]~94\)) # (!\inst|cnt\(31) & ((\inst|cnt[30]~94\) # (GND)))
-- \inst|cnt[31]~96\ = CARRY((!\inst|cnt[30]~94\) # (!\inst|cnt\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(31),
	datad => VCC,
	cin => \inst|cnt[30]~94\,
	combout => \inst|cnt[31]~95_combout\,
	cout => \inst|cnt[31]~96\);

-- Location: LCFF_X21_Y14_N15
\inst|cnt[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[31]~95_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(31));

-- Location: LCCOMB_X22_Y14_N30
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_combout\ = (!\inst|cnt\(29) & (!\inst|cnt\(28) & (!\inst|cnt\(30) & !\inst|cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(29),
	datab => \inst|cnt\(28),
	datac => \inst|cnt\(30),
	datad => \inst|cnt\(31),
	combout => \inst|LessThan0~11_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_combout\ = (\inst|cnt\(32)) # (((!\inst|LessThan0~9_combout\) # (!\inst|LessThan0~11_combout\)) # (!\inst|LessThan0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(32),
	datab => \inst|LessThan0~10_combout\,
	datac => \inst|LessThan0~11_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|LessThan0~13_combout\);

-- Location: LCFF_X21_Y16_N19
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[1]~35_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X21_Y16_N20
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

-- Location: LCCOMB_X21_Y16_N22
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

-- Location: LCFF_X21_Y16_N23
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[3]~39_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCCOMB_X21_Y16_N26
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

-- Location: LCFF_X21_Y16_N27
\inst|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[5]~43_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(5));

-- Location: LCCOMB_X21_Y16_N28
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

-- Location: LCFF_X21_Y16_N29
\inst|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[6]~45_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(6));

-- Location: LCCOMB_X21_Y16_N30
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

-- Location: LCFF_X21_Y16_N31
\inst|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[7]~47_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(7));

-- Location: LCCOMB_X21_Y15_N0
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

-- Location: LCFF_X21_Y15_N1
\inst|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[8]~49_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(8));

-- Location: LCCOMB_X21_Y15_N2
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

-- Location: LCFF_X21_Y15_N3
\inst|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[9]~51_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(9));

-- Location: LCCOMB_X21_Y15_N4
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

-- Location: LCFF_X22_Y14_N1
\inst|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|cnt[10]~53_combout\,
	sclr => \inst|LessThan0~13_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(10));

-- Location: LCCOMB_X21_Y15_N6
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

-- Location: LCFF_X21_Y15_N13
\inst|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[14]~61_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(14));

-- Location: LCFF_X21_Y15_N7
\inst|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[11]~55_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(11));

-- Location: LCCOMB_X21_Y14_N20
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|cnt\(12) & ((\inst|cnt\(11)) # ((\inst|cnt\(10) & \inst|cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(12),
	datab => \inst|cnt\(10),
	datac => \inst|cnt\(11),
	datad => \inst|cnt\(9),
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = ((!\inst|cnt\(13) & (!\inst|cnt\(14) & !\inst|LessThan0~7_combout\))) # (!\inst|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datab => \inst|cnt\(14),
	datac => \inst|LessThan0~7_combout\,
	datad => \inst|cnt\(15),
	combout => \inst|LessThan0~8_combout\);

-- Location: LCFF_X21_Y15_N17
\inst|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[16]~65_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(16));

-- Location: LCCOMB_X22_Y14_N22
\inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|cnt\(22) & !\inst|cnt\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cnt\(22),
	datad => \inst|cnt\(21),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|cnt\(17) & (!\inst|cnt\(18) & (!\inst|cnt\(16) & \inst|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(17),
	datab => \inst|cnt\(18),
	datac => \inst|cnt\(16),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y14_N24
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (!\inst|cnt\(13) & (!\inst|cnt\(11) & (!\inst|cnt\(7) & !\inst|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datab => \inst|cnt\(11),
	datac => \inst|cnt\(7),
	datad => \inst|cnt\(14),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCFF_X21_Y16_N21
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[2]~37_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X21_Y16_N12
\inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (((!\inst|cnt\(3)) # (!\inst|cnt\(2))) # (!\inst|cnt\(1))) # (!\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(1),
	datac => \inst|cnt\(2),
	datad => \inst|cnt\(3),
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (!\inst|cnt\(8) & (\inst|LessThan0~3_combout\ & ((\inst|LessThan0~5_combout\) # (\inst|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~5_combout\,
	datab => \inst|cnt\(8),
	datac => \inst|LessThan0~3_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|LessThan0~2_combout\ & ((\inst|LessThan0~8_combout\) # (\inst|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|LessThan0~8_combout\,
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~6_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X21_Y14_N16
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

-- Location: LCFF_X21_Y14_N17
\inst|cnt[32]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|cnt[32]~97_combout\,
	sclr => \inst|LessThan0~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(32));

-- Location: LCCOMB_X22_Y14_N24
\inst|LessThan0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~12_combout\ = (!\inst|cnt\(32) & \inst|LessThan0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(32),
	datad => \inst|LessThan0~11_combout\,
	combout => \inst|LessThan0~12_combout\);

-- Location: LCCOMB_X21_Y14_N22
\inst|clk100ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk100ms~0_combout\ = \inst|clk100ms~regout\ $ ((((!\inst|LessThan0~12_combout\) # (!\inst|LessThan0~9_combout\)) # (!\inst|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~10_combout\,
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|clk100ms~regout\,
	datad => \inst|LessThan0~12_combout\,
	combout => \inst|clk100ms~0_combout\);

-- Location: LCFF_X21_Y14_N23
\inst|clk100ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|clk100ms~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk100ms~regout\);

-- Location: LCFF_X3_Y1_N15
\inst1|row[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|row[2]~feeder_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|row\(2));

-- Location: LCFF_X3_Y1_N17
\inst1|row[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|row\(2),
	sload => VCC,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|row\(3));

-- Location: LCCOMB_X3_Y1_N26
\inst1|row[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|row[0]~1_combout\ = !\inst1|row\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|row\(3),
	combout => \inst1|row[0]~1_combout\);

-- Location: LCFF_X3_Y1_N27
\inst1|row[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|row[0]~1_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|row\(0));

-- Location: LCCOMB_X3_Y1_N0
\inst1|row[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|row[1]~0_combout\ = !\inst1|row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|row\(0),
	combout => \inst1|row[1]~0_combout\);

-- Location: LCFF_X3_Y1_N1
\inst1|row[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|row[1]~0_combout\,
	ena => \inst|clk100ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|row\(1));

-- Location: LCFF_X4_Y1_N27
\inst1|key[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[9]~2_combout\,
	ena => \inst1|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(9));

-- Location: LCCOMB_X3_Y1_N4
\inst1|key[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[8]~3_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst1|key[8]~3_combout\);

-- Location: LCFF_X3_Y1_N5
\inst1|key[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[8]~3_combout\,
	ena => \inst1|ALT_INV_row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(8));

-- Location: LCCOMB_X4_Y1_N0
\inst1|key[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[11]~0_combout\ = !\col~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(0),
	combout => \inst1|key[11]~0_combout\);

-- Location: LCFF_X5_Y1_N31
\inst1|key[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|key[11]~0_combout\,
	sload => VCC,
	ena => \inst1|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(11));

-- Location: LCCOMB_X4_Y1_N16
\inst2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst1|key\(10)) # ((\inst1|key\(9)) # ((\inst1|key\(8)) # (\inst1|key\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|key\(10),
	datab => \inst1|key\(9),
	datac => \inst1|key\(8),
	datad => \inst1|key\(11),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X5_Y1_N28
\inst2|leds[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leds[2]~feeder_combout\ = \inst2|Equal0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|leds[2]~feeder_combout\);

-- Location: LCFF_X5_Y1_N29
\inst2|leds[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|leds[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leds\(2));

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

-- Location: LCCOMB_X4_Y1_N4
\inst1|key[5]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[5]~6_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst1|key[5]~6_combout\);

-- Location: LCFF_X4_Y1_N5
\inst1|key[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[5]~6_combout\,
	ena => \inst1|row\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(5));

-- Location: LCCOMB_X4_Y1_N30
\inst1|key[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[7]~4_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst1|key[7]~4_combout\);

-- Location: LCFF_X5_Y1_N1
\inst1|key[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst1|key[7]~4_combout\,
	sload => VCC,
	ena => \inst1|row\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(7));

-- Location: LCCOMB_X4_Y1_N22
\inst1|key[6]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|key[6]~5_combout\ = !\col~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \col~combout\(1),
	combout => \inst1|key[6]~5_combout\);

-- Location: LCFF_X4_Y1_N23
\inst1|key[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst1|key[6]~5_combout\,
	ena => \inst1|row\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|key\(6));

-- Location: LCCOMB_X5_Y1_N0
\inst2|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (!\inst1|key\(4) & (!\inst1|key\(5) & (!\inst1|key\(7) & !\inst1|key\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|key\(4),
	datab => \inst1|key\(5),
	datac => \inst1|key\(7),
	datad => \inst1|key\(6),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y1_N10
\inst2|leds~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leds~0_combout\ = (!\inst2|Equal0~0_combout\ & !\inst2|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|leds~0_combout\);

-- Location: LCFF_X5_Y1_N11
\inst2|leds[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|leds~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leds\(1));

-- Location: LCCOMB_X5_Y1_N4
\inst2|leds~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|leds~1_combout\ = (!\inst2|Equal0~2_combout\ & (!\inst2|Equal0~0_combout\ & \inst2|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~2_combout\,
	datab => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|leds~1_combout\);

-- Location: LCFF_X5_Y1_N5
\inst2|leds[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst2|leds~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst2|leds\(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[2]~I\ : cycloneii_io
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
	datain => \inst2|leds\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[1]~I\ : cycloneii_io
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
	datain => \inst2|leds\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\leds[0]~I\ : cycloneii_io
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
	datain => \inst2|leds\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_leds(0));

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
	datain => \inst1|ALT_INV_row\(3),
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
	datain => \inst1|ALT_INV_row\(2),
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
	datain => \inst1|ALT_INV_row\(1),
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
	datain => \inst1|row\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_row(0));
END structure;


