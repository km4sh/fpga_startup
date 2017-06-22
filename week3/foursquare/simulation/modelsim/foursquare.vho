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

-- DATE "04/13/2017 16:59:48"

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
	clk_100k : OUT std_logic;
	clk_50m : IN std_logic;
	clk_10k : OUT std_logic;
	clk_1k : OUT std_logic;
	clk_100 : OUT std_logic
	);
END Block2;

-- Design Ports Information
-- clk_100k	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_10k	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_1k	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_100	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_50m	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_clk_100k : std_logic;
SIGNAL ww_clk_50m : std_logic;
SIGNAL ww_clk_10k : std_logic;
SIGNAL ww_clk_1k : std_logic;
SIGNAL ww_clk_100 : std_logic;
SIGNAL \clk_50m~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst9|Add0~10_combout\ : std_logic;
SIGNAL \inst9|Add0~18_combout\ : std_logic;
SIGNAL \inst9|Add0~21\ : std_logic;
SIGNAL \inst9|Add0~22_combout\ : std_logic;
SIGNAL \inst9|Add0~23\ : std_logic;
SIGNAL \inst9|Add0~24_combout\ : std_logic;
SIGNAL \inst9|Add0~25\ : std_logic;
SIGNAL \inst9|Add0~26_combout\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst9|Equal0~3_combout\ : std_logic;
SIGNAL \inst10|Equal0~3_combout\ : std_logic;
SIGNAL \inst|cnt~4_combout\ : std_logic;
SIGNAL \inst9|cnt~4_combout\ : std_logic;
SIGNAL \inst9|cnt~5_combout\ : std_logic;
SIGNAL \clk_50m~combout\ : std_logic;
SIGNAL \clk_50m~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|cnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|cnt~3_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|cnt~5_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|clk_div~0_combout\ : std_logic;
SIGNAL \inst|clk_div~regout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|cnt~0_combout\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|cnt~2_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|cnt~3_combout\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|cnt~4_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst7|cnt~1_combout\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|clk_div~0_combout\ : std_logic;
SIGNAL \inst7|clk_div~regout\ : std_logic;
SIGNAL \inst9|Add0~1_cout\ : std_logic;
SIGNAL \inst9|Add0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~3\ : std_logic;
SIGNAL \inst9|Add0~5\ : std_logic;
SIGNAL \inst9|Add0~6_combout\ : std_logic;
SIGNAL \inst9|Add0~7\ : std_logic;
SIGNAL \inst9|Add0~8_combout\ : std_logic;
SIGNAL \inst9|cnt~1_combout\ : std_logic;
SIGNAL \inst9|Add0~9\ : std_logic;
SIGNAL \inst9|Add0~11\ : std_logic;
SIGNAL \inst9|Add0~12_combout\ : std_logic;
SIGNAL \inst9|cnt~2_combout\ : std_logic;
SIGNAL \inst9|Equal0~1_combout\ : std_logic;
SIGNAL \inst9|Add0~13\ : std_logic;
SIGNAL \inst9|Add0~14_combout\ : std_logic;
SIGNAL \inst9|cnt~3_combout\ : std_logic;
SIGNAL \inst9|Add0~15\ : std_logic;
SIGNAL \inst9|Add0~16_combout\ : std_logic;
SIGNAL \inst9|Add0~17\ : std_logic;
SIGNAL \inst9|Add0~19\ : std_logic;
SIGNAL \inst9|Add0~20_combout\ : std_logic;
SIGNAL \inst9|Equal0~2_combout\ : std_logic;
SIGNAL \inst9|Add0~4_combout\ : std_logic;
SIGNAL \inst9|cnt~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~0_combout\ : std_logic;
SIGNAL \inst9|Equal0~4_combout\ : std_logic;
SIGNAL \inst9|clk_div~0_combout\ : std_logic;
SIGNAL \inst9|clk_div~regout\ : std_logic;
SIGNAL \inst10|Add0~1_cout\ : std_logic;
SIGNAL \inst10|Add0~3_cout\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|cnt~3_combout\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst10|Add0~11\ : std_logic;
SIGNAL \inst10|Add0~12_combout\ : std_logic;
SIGNAL \inst10|cnt~2_combout\ : std_logic;
SIGNAL \inst10|Equal0~1_combout\ : std_logic;
SIGNAL \inst10|Add0~13\ : std_logic;
SIGNAL \inst10|Add0~14_combout\ : std_logic;
SIGNAL \inst10|Add0~15\ : std_logic;
SIGNAL \inst10|Add0~16_combout\ : std_logic;
SIGNAL \inst10|Add0~17\ : std_logic;
SIGNAL \inst10|Add0~18_combout\ : std_logic;
SIGNAL \inst10|Equal0~2_combout\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|Equal0~0_combout\ : std_logic;
SIGNAL \inst10|Equal0~4_combout\ : std_logic;
SIGNAL \inst10|Add0~19\ : std_logic;
SIGNAL \inst10|Add0~20_combout\ : std_logic;
SIGNAL \inst10|Add0~21\ : std_logic;
SIGNAL \inst10|Add0~22_combout\ : std_logic;
SIGNAL \inst10|cnt~4_combout\ : std_logic;
SIGNAL \inst10|Add0~23\ : std_logic;
SIGNAL \inst10|Add0~24_combout\ : std_logic;
SIGNAL \inst10|Add0~25\ : std_logic;
SIGNAL \inst10|Add0~26_combout\ : std_logic;
SIGNAL \inst10|cnt~5_combout\ : std_logic;
SIGNAL \inst10|Add0~27\ : std_logic;
SIGNAL \inst10|Add0~28_combout\ : std_logic;
SIGNAL \inst10|cnt~6_combout\ : std_logic;
SIGNAL \inst10|Add0~29\ : std_logic;
SIGNAL \inst10|Add0~30_combout\ : std_logic;
SIGNAL \inst10|cnt~0_combout\ : std_logic;
SIGNAL \inst10|Add0~31\ : std_logic;
SIGNAL \inst10|Add0~32_combout\ : std_logic;
SIGNAL \inst10|cnt~1_combout\ : std_logic;
SIGNAL \inst10|clk_div~0_combout\ : std_logic;
SIGNAL \inst10|clk_div~regout\ : std_logic;
SIGNAL \inst10|cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst9|cnt\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst7|cnt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(7 DOWNTO 0);

BEGIN

clk_100k <= ww_clk_100k;
ww_clk_50m <= clk_50m;
clk_10k <= ww_clk_10k;
clk_1k <= ww_clk_1k;
clk_100 <= ww_clk_100;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_50m~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk_50m~combout\);

-- Location: LCCOMB_X26_Y9_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|cnt\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|cnt\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X21_Y9_N20
\inst7|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|cnt\(7) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|cnt\(7) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|cnt\(7) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(7),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: LCCOMB_X23_Y9_N12
\inst9|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~10_combout\ = (\inst9|cnt\(6) & (!\inst9|Add0~9\)) # (!\inst9|cnt\(6) & ((\inst9|Add0~9\) # (GND)))
-- \inst9|Add0~11\ = CARRY((!\inst9|Add0~9\) # (!\inst9|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(6),
	datad => VCC,
	cin => \inst9|Add0~9\,
	combout => \inst9|Add0~10_combout\,
	cout => \inst9|Add0~11\);

-- Location: LCCOMB_X23_Y9_N20
\inst9|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~18_combout\ = (\inst9|cnt\(10) & (!\inst9|Add0~17\)) # (!\inst9|cnt\(10) & ((\inst9|Add0~17\) # (GND)))
-- \inst9|Add0~19\ = CARRY((!\inst9|Add0~17\) # (!\inst9|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(10),
	datad => VCC,
	cin => \inst9|Add0~17\,
	combout => \inst9|Add0~18_combout\,
	cout => \inst9|Add0~19\);

-- Location: LCCOMB_X23_Y9_N22
\inst9|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~20_combout\ = (\inst9|cnt\(11) & (\inst9|Add0~19\ $ (GND))) # (!\inst9|cnt\(11) & (!\inst9|Add0~19\ & VCC))
-- \inst9|Add0~21\ = CARRY((\inst9|cnt\(11) & !\inst9|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(11),
	datad => VCC,
	cin => \inst9|Add0~19\,
	combout => \inst9|Add0~20_combout\,
	cout => \inst9|Add0~21\);

-- Location: LCCOMB_X23_Y9_N24
\inst9|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~22_combout\ = (\inst9|cnt\(12) & (!\inst9|Add0~21\)) # (!\inst9|cnt\(12) & ((\inst9|Add0~21\) # (GND)))
-- \inst9|Add0~23\ = CARRY((!\inst9|Add0~21\) # (!\inst9|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(12),
	datad => VCC,
	cin => \inst9|Add0~21\,
	combout => \inst9|Add0~22_combout\,
	cout => \inst9|Add0~23\);

-- Location: LCCOMB_X23_Y9_N26
\inst9|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~24_combout\ = (\inst9|cnt\(13) & (\inst9|Add0~23\ $ (GND))) # (!\inst9|cnt\(13) & (!\inst9|Add0~23\ & VCC))
-- \inst9|Add0~25\ = CARRY((\inst9|cnt\(13) & !\inst9|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(13),
	datad => VCC,
	cin => \inst9|Add0~23\,
	combout => \inst9|Add0~24_combout\,
	cout => \inst9|Add0~25\);

-- Location: LCCOMB_X23_Y9_N28
\inst9|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~26_combout\ = \inst9|Add0~25\ $ (\inst9|cnt\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst9|cnt\(14),
	cin => \inst9|Add0~25\,
	combout => \inst9|Add0~26_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst10|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst10|cnt\(3) & (\inst10|Add0~3_cout\ $ (GND))) # (!\inst10|cnt\(3) & (!\inst10|Add0~3_cout\ & VCC))
-- \inst10|Add0~5\ = CARRY((\inst10|cnt\(3) & !\inst10|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(3),
	datad => VCC,
	cin => \inst10|Add0~3_cout\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCFF_X26_Y9_N7
\inst|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(6));

-- Location: LCFF_X23_Y9_N13
\inst9|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(6));

-- Location: LCFF_X23_Y9_N21
\inst9|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(10));

-- Location: LCFF_X24_Y9_N23
\inst9|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(13));

-- Location: LCFF_X23_Y9_N31
\inst9|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(14));

-- Location: LCFF_X23_Y9_N25
\inst9|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(12));

-- Location: LCCOMB_X24_Y9_N12
\inst9|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Equal0~3_combout\ = (!\inst9|cnt\(12) & (\inst9|cnt\(14) & \inst9|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(12),
	datac => \inst9|cnt\(14),
	datad => \inst9|cnt\(13),
	combout => \inst9|Equal0~3_combout\);

-- Location: LCFF_X22_Y9_N21
\inst10|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(3));

-- Location: LCCOMB_X22_Y8_N20
\inst10|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~3_combout\ = (\inst10|cnt\(15) & (\inst10|cnt\(14) & (!\inst10|cnt\(13) & \inst10|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(15),
	datab => \inst10|cnt\(14),
	datac => \inst10|cnt\(13),
	datad => \inst10|cnt\(12),
	combout => \inst10|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y9_N6
\inst|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~4_combout\ = (\inst|Add0~12_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|cnt~4_combout\);

-- Location: LCCOMB_X24_Y9_N22
\inst9|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~4_combout\ = (!\inst9|Equal0~4_combout\ & \inst9|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~4_combout\,
	datad => \inst9|Add0~24_combout\,
	combout => \inst9|cnt~4_combout\);

-- Location: LCCOMB_X23_Y9_N30
\inst9|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~5_combout\ = (!\inst9|Equal0~4_combout\ & \inst9|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~4_combout\,
	datad => \inst9|Add0~26_combout\,
	combout => \inst9|cnt~5_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_50m~I\ : cycloneii_io
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
	padio => ww_clk_50m,
	combout => \clk_50m~combout\);

-- Location: CLKCTRL_G2
\clk_50m~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50m~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50m~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y9_N14
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCFF_X23_Y9_N3
\inst|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	sdata => \inst|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(0));

-- Location: LCCOMB_X26_Y9_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|cnt\(1) & (!\inst|Add0~1\)) # (!\inst|cnt\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X26_Y9_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCFF_X26_Y9_N19
\inst|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(2));

-- Location: LCCOMB_X26_Y9_N12
\inst|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~1_combout\ = (\inst|Add0~2_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt~1_combout\);

-- Location: LCFF_X26_Y9_N13
\inst|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(1));

-- Location: LCCOMB_X26_Y9_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|cnt\(3) & (!\inst|Add0~5\)) # (!\inst|cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X26_Y9_N30
\inst|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (\inst|Add0~6_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt~0_combout\);

-- Location: LCFF_X26_Y9_N31
\inst|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(3));

-- Location: LCCOMB_X25_Y9_N16
\inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(0) & (!\inst|cnt\(2) & (!\inst|cnt\(1) & \inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst|cnt\(2),
	datac => \inst|cnt\(1),
	datad => \inst|cnt\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y9_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|cnt\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|cnt\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X26_Y9_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|cnt\(5) & (!\inst|Add0~9\)) # (!\inst|cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X26_Y9_N8
\inst|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~3_combout\ = (\inst|Add0~10_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|cnt~3_combout\);

-- Location: LCFF_X26_Y9_N9
\inst|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(5));

-- Location: LCCOMB_X26_Y9_N28
\inst|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = \inst|Add0~13\ $ (\inst|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|cnt\(7),
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\);

-- Location: LCCOMB_X26_Y9_N0
\inst|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~5_combout\ = (\inst|Add0~14_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|cnt~5_combout\);

-- Location: LCFF_X26_Y9_N1
\inst|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(7));

-- Location: LCCOMB_X26_Y9_N10
\inst|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (\inst|Add0~8_combout\ & ((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|cnt~2_combout\);

-- Location: LCFF_X26_Y9_N11
\inst|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|cnt\(4));

-- Location: LCCOMB_X26_Y9_N2
\inst|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (\inst|cnt\(6) & (\inst|cnt\(7) & (\inst|cnt\(5) & \inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y9_N4
\inst|clk_div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|clk_div~0_combout\ = \inst|clk_div~regout\ $ (((\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datac => \inst|clk_div~regout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|clk_div~0_combout\);

-- Location: LCFF_X26_Y9_N5
\inst|clk_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|clk_div~regout\);

-- Location: LCCOMB_X21_Y9_N8
\inst7|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = (\inst|cnt\(0) & (\inst7|cnt\(1) $ (VCC))) # (!\inst|cnt\(0) & (\inst7|cnt\(1) & VCC))
-- \inst7|Add0~1\ = CARRY((\inst|cnt\(0) & \inst7|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst7|cnt\(1),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCFF_X21_Y9_N9
\inst7|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(1));

-- Location: LCCOMB_X21_Y9_N10
\inst7|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|cnt\(2) & (!\inst7|Add0~1\)) # (!\inst7|cnt\(2) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(2),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X21_Y9_N0
\inst7|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cnt~0_combout\ = (\inst7|Add0~2_combout\ & (((!\inst7|Equal0~2_combout\) # (!\inst7|Equal0~1_combout\)) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Add0~2_combout\,
	combout => \inst7|cnt~0_combout\);

-- Location: LCFF_X21_Y9_N1
\inst7|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(2));

-- Location: LCCOMB_X21_Y9_N12
\inst7|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|cnt\(3) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|cnt\(3) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|cnt\(3) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(3),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: LCFF_X21_Y9_N13
\inst7|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(3));

-- Location: LCCOMB_X22_Y9_N6
\inst7|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst|cnt\(0) & (\inst7|cnt\(1) & (!\inst7|cnt\(2) & !\inst7|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst7|cnt\(1),
	datac => \inst7|cnt\(2),
	datad => \inst7|cnt\(3),
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\inst7|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cnt~2_combout\ = (\inst7|Add0~12_combout\ & (((!\inst7|Equal0~0_combout\) # (!\inst7|Equal0~2_combout\)) # (!\inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~12_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|cnt~2_combout\);

-- Location: LCFF_X21_Y9_N5
\inst7|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(7));

-- Location: LCCOMB_X21_Y9_N14
\inst7|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|cnt\(4) & (!\inst7|Add0~5\)) # (!\inst7|cnt\(4) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(4),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCFF_X21_Y9_N15
\inst7|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(4));

-- Location: LCCOMB_X21_Y9_N16
\inst7|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|cnt\(5) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|cnt\(5) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|cnt\(5) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(5),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X21_Y9_N18
\inst7|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|cnt\(6) & (!\inst7|Add0~9\)) # (!\inst7|cnt\(6) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(6),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X21_Y9_N22
\inst7|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|cnt\(8) & (!\inst7|Add0~13\)) # (!\inst7|cnt\(8) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(8),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X21_Y9_N2
\inst7|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cnt~3_combout\ = (\inst7|Add0~14_combout\ & (((!\inst7|Equal0~2_combout\) # (!\inst7|Equal0~1_combout\)) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Add0~14_combout\,
	combout => \inst7|cnt~3_combout\);

-- Location: LCFF_X21_Y9_N3
\inst7|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(8));

-- Location: LCCOMB_X21_Y9_N24
\inst7|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|cnt\(9) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|cnt\(9) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|cnt\(9) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(9),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: LCFF_X21_Y9_N25
\inst7|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(9));

-- Location: LCCOMB_X21_Y9_N26
\inst7|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|cnt\(10) & (!\inst7|Add0~17\)) # (!\inst7|cnt\(10) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(10),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: LCFF_X21_Y9_N27
\inst7|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(10));

-- Location: LCCOMB_X21_Y9_N28
\inst7|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = \inst7|Add0~19\ $ (!\inst7|cnt\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cnt\(11),
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\);

-- Location: LCCOMB_X21_Y9_N30
\inst7|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cnt~4_combout\ = (\inst7|Add0~20_combout\ & (((!\inst7|Equal0~2_combout\) # (!\inst7|Equal0~1_combout\)) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Add0~20_combout\,
	combout => \inst7|cnt~4_combout\);

-- Location: LCFF_X21_Y9_N31
\inst7|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(11));

-- Location: LCCOMB_X22_Y9_N14
\inst7|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (\inst7|cnt\(8) & (!\inst7|cnt\(9) & (\inst7|cnt\(11) & !\inst7|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(8),
	datab => \inst7|cnt\(9),
	datac => \inst7|cnt\(11),
	datad => \inst7|cnt\(10),
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y9_N6
\inst7|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|cnt~1_combout\ = (\inst7|Add0~10_combout\ & (((!\inst7|Equal0~2_combout\) # (!\inst7|Equal0~1_combout\)) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|Equal0~2_combout\,
	datad => \inst7|Add0~10_combout\,
	combout => \inst7|cnt~1_combout\);

-- Location: LCFF_X21_Y9_N7
\inst7|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(6));

-- Location: LCFF_X21_Y9_N17
\inst7|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|cnt\(5));

-- Location: LCCOMB_X22_Y9_N8
\inst7|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (!\inst7|cnt\(4) & (\inst7|cnt\(6) & (\inst7|cnt\(7) & !\inst7|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(4),
	datab => \inst7|cnt\(6),
	datac => \inst7|cnt\(7),
	datad => \inst7|cnt\(5),
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst7|clk_div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|clk_div~0_combout\ = \inst7|clk_div~regout\ $ (((\inst7|Equal0~2_combout\ & (\inst7|Equal0~1_combout\ & \inst7|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~2_combout\,
	datab => \inst7|Equal0~1_combout\,
	datac => \inst7|clk_div~regout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|clk_div~0_combout\);

-- Location: LCFF_X22_Y9_N5
\inst7|clk_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst7|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|clk_div~regout\);

-- Location: LCCOMB_X23_Y9_N2
\inst9|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~1_cout\ = CARRY((\inst7|cnt\(1) & \inst|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst|cnt\(0),
	datad => VCC,
	cout => \inst9|Add0~1_cout\);

-- Location: LCCOMB_X23_Y9_N4
\inst9|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~2_combout\ = (\inst9|cnt\(2) & (!\inst9|Add0~1_cout\)) # (!\inst9|cnt\(2) & ((\inst9|Add0~1_cout\) # (GND)))
-- \inst9|Add0~3\ = CARRY((!\inst9|Add0~1_cout\) # (!\inst9|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(2),
	datad => VCC,
	cin => \inst9|Add0~1_cout\,
	combout => \inst9|Add0~2_combout\,
	cout => \inst9|Add0~3\);

-- Location: LCFF_X23_Y9_N5
\inst9|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(2));

-- Location: LCCOMB_X23_Y9_N6
\inst9|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~4_combout\ = (\inst9|cnt\(3) & (\inst9|Add0~3\ $ (GND))) # (!\inst9|cnt\(3) & (!\inst9|Add0~3\ & VCC))
-- \inst9|Add0~5\ = CARRY((\inst9|cnt\(3) & !\inst9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(3),
	datad => VCC,
	cin => \inst9|Add0~3\,
	combout => \inst9|Add0~4_combout\,
	cout => \inst9|Add0~5\);

-- Location: LCCOMB_X23_Y9_N8
\inst9|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~6_combout\ = (\inst9|cnt\(4) & (!\inst9|Add0~5\)) # (!\inst9|cnt\(4) & ((\inst9|Add0~5\) # (GND)))
-- \inst9|Add0~7\ = CARRY((!\inst9|Add0~5\) # (!\inst9|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(4),
	datad => VCC,
	cin => \inst9|Add0~5\,
	combout => \inst9|Add0~6_combout\,
	cout => \inst9|Add0~7\);

-- Location: LCFF_X23_Y9_N9
\inst9|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(4));

-- Location: LCCOMB_X23_Y9_N10
\inst9|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~8_combout\ = (\inst9|cnt\(5) & (\inst9|Add0~7\ $ (GND))) # (!\inst9|cnt\(5) & (!\inst9|Add0~7\ & VCC))
-- \inst9|Add0~9\ = CARRY((\inst9|cnt\(5) & !\inst9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(5),
	datad => VCC,
	cin => \inst9|Add0~7\,
	combout => \inst9|Add0~8_combout\,
	cout => \inst9|Add0~9\);

-- Location: LCCOMB_X24_Y9_N14
\inst9|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~1_combout\ = (!\inst9|Equal0~4_combout\ & \inst9|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~4_combout\,
	datad => \inst9|Add0~8_combout\,
	combout => \inst9|cnt~1_combout\);

-- Location: LCFF_X24_Y9_N15
\inst9|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(5));

-- Location: LCCOMB_X23_Y9_N14
\inst9|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~12_combout\ = (\inst9|cnt\(7) & (\inst9|Add0~11\ $ (GND))) # (!\inst9|cnt\(7) & (!\inst9|Add0~11\ & VCC))
-- \inst9|Add0~13\ = CARRY((\inst9|cnt\(7) & !\inst9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(7),
	datad => VCC,
	cin => \inst9|Add0~11\,
	combout => \inst9|Add0~12_combout\,
	cout => \inst9|Add0~13\);

-- Location: LCCOMB_X24_Y9_N8
\inst9|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~2_combout\ = (!\inst9|Equal0~4_combout\ & \inst9|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Equal0~4_combout\,
	datad => \inst9|Add0~12_combout\,
	combout => \inst9|cnt~2_combout\);

-- Location: LCFF_X24_Y9_N9
\inst9|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(7));

-- Location: LCCOMB_X24_Y9_N2
\inst9|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Equal0~1_combout\ = (!\inst9|cnt\(6) & (\inst9|cnt\(7) & (\inst9|cnt\(5) & !\inst9|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(6),
	datab => \inst9|cnt\(7),
	datac => \inst9|cnt\(5),
	datad => \inst9|cnt\(4),
	combout => \inst9|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y9_N16
\inst9|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~14_combout\ = (\inst9|cnt\(8) & (!\inst9|Add0~13\)) # (!\inst9|cnt\(8) & ((\inst9|Add0~13\) # (GND)))
-- \inst9|Add0~15\ = CARRY((!\inst9|Add0~13\) # (!\inst9|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(8),
	datad => VCC,
	cin => \inst9|Add0~13\,
	combout => \inst9|Add0~14_combout\,
	cout => \inst9|Add0~15\);

-- Location: LCCOMB_X23_Y9_N0
\inst9|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~3_combout\ = (\inst9|Add0~14_combout\ & !\inst9|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~14_combout\,
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|cnt~3_combout\);

-- Location: LCFF_X23_Y9_N1
\inst9|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(8));

-- Location: LCCOMB_X23_Y9_N18
\inst9|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Add0~16_combout\ = (\inst9|cnt\(9) & (\inst9|Add0~15\ $ (GND))) # (!\inst9|cnt\(9) & (!\inst9|Add0~15\ & VCC))
-- \inst9|Add0~17\ = CARRY((\inst9|cnt\(9) & !\inst9|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|cnt\(9),
	datad => VCC,
	cin => \inst9|Add0~15\,
	combout => \inst9|Add0~16_combout\,
	cout => \inst9|Add0~17\);

-- Location: LCFF_X23_Y9_N19
\inst9|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(9));

-- Location: LCFF_X23_Y9_N23
\inst9|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(11));

-- Location: LCCOMB_X24_Y9_N24
\inst9|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Equal0~2_combout\ = (!\inst9|cnt\(10) & (!\inst9|cnt\(11) & (\inst9|cnt\(8) & !\inst9|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(10),
	datab => \inst9|cnt\(11),
	datac => \inst9|cnt\(8),
	datad => \inst9|cnt\(9),
	combout => \inst9|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst9|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|cnt~0_combout\ = (\inst9|Add0~4_combout\ & !\inst9|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|Add0~4_combout\,
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|cnt~0_combout\);

-- Location: LCFF_X24_Y9_N27
\inst9|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|cnt\(3));

-- Location: LCCOMB_X24_Y9_N0
\inst9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Equal0~0_combout\ = (\inst|cnt\(0) & (!\inst9|cnt\(3) & (\inst9|cnt\(2) & \inst7|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst9|cnt\(3),
	datac => \inst9|cnt\(2),
	datad => \inst7|cnt\(1),
	combout => \inst9|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst9|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|Equal0~4_combout\ = (\inst9|Equal0~3_combout\ & (\inst9|Equal0~1_combout\ & (\inst9|Equal0~2_combout\ & \inst9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Equal0~3_combout\,
	datab => \inst9|Equal0~1_combout\,
	datac => \inst9|Equal0~2_combout\,
	datad => \inst9|Equal0~0_combout\,
	combout => \inst9|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst9|clk_div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|clk_div~0_combout\ = \inst9|clk_div~regout\ $ (\inst9|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|clk_div~regout\,
	datad => \inst9|Equal0~4_combout\,
	combout => \inst9|clk_div~0_combout\);

-- Location: LCFF_X24_Y9_N21
\inst9|clk_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst9|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|clk_div~regout\);

-- Location: LCCOMB_X22_Y9_N16
\inst10|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~1_cout\ = CARRY((\inst|cnt\(0) & \inst7|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datab => \inst7|cnt\(1),
	datad => VCC,
	cout => \inst10|Add0~1_cout\);

-- Location: LCCOMB_X22_Y9_N18
\inst10|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~3_cout\ = CARRY((!\inst10|Add0~1_cout\) # (!\inst9|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(2),
	datad => VCC,
	cin => \inst10|Add0~1_cout\,
	cout => \inst10|Add0~3_cout\);

-- Location: LCCOMB_X22_Y9_N22
\inst10|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst10|cnt\(4) & (!\inst10|Add0~5\)) # (!\inst10|cnt\(4) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst10|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(4),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: LCCOMB_X22_Y9_N0
\inst10|cnt~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~3_combout\ = (\inst10|Add0~6_combout\ & (((!\inst10|Equal0~4_combout\) # (!\inst10|cnt\(17))) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|cnt\(17),
	datac => \inst10|Equal0~4_combout\,
	datad => \inst10|Add0~6_combout\,
	combout => \inst10|cnt~3_combout\);

-- Location: LCFF_X22_Y9_N1
\inst10|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(4));

-- Location: LCCOMB_X22_Y9_N24
\inst10|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst10|cnt\(5) & (\inst10|Add0~7\ $ (GND))) # (!\inst10|cnt\(5) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst10|cnt\(5) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(5),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X22_Y9_N26
\inst10|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = (\inst10|cnt\(6) & (!\inst10|Add0~9\)) # (!\inst10|cnt\(6) & ((\inst10|Add0~9\) # (GND)))
-- \inst10|Add0~11\ = CARRY((!\inst10|Add0~9\) # (!\inst10|cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(6),
	datad => VCC,
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\,
	cout => \inst10|Add0~11\);

-- Location: LCFF_X22_Y9_N27
\inst10|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(6));

-- Location: LCCOMB_X22_Y9_N28
\inst10|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~12_combout\ = (\inst10|cnt\(7) & (\inst10|Add0~11\ $ (GND))) # (!\inst10|cnt\(7) & (!\inst10|Add0~11\ & VCC))
-- \inst10|Add0~13\ = CARRY((\inst10|cnt\(7) & !\inst10|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(7),
	datad => VCC,
	cin => \inst10|Add0~11\,
	combout => \inst10|Add0~12_combout\,
	cout => \inst10|Add0~13\);

-- Location: LCCOMB_X22_Y9_N2
\inst10|cnt~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~2_combout\ = (\inst10|Add0~12_combout\ & (((!\inst10|Equal0~4_combout\) # (!\inst10|cnt\(17))) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|cnt\(17),
	datac => \inst10|Equal0~4_combout\,
	datad => \inst10|Add0~12_combout\,
	combout => \inst10|cnt~2_combout\);

-- Location: LCFF_X22_Y9_N3
\inst10|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(7));

-- Location: LCCOMB_X22_Y9_N10
\inst10|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~1_combout\ = (\inst10|cnt\(3) & (!\inst10|cnt\(4) & (!\inst10|cnt\(6) & \inst10|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(3),
	datab => \inst10|cnt\(4),
	datac => \inst10|cnt\(6),
	datad => \inst10|cnt\(7),
	combout => \inst10|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst10|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~14_combout\ = (\inst10|cnt\(8) & (!\inst10|Add0~13\)) # (!\inst10|cnt\(8) & ((\inst10|Add0~13\) # (GND)))
-- \inst10|Add0~15\ = CARRY((!\inst10|Add0~13\) # (!\inst10|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(8),
	datad => VCC,
	cin => \inst10|Add0~13\,
	combout => \inst10|Add0~14_combout\,
	cout => \inst10|Add0~15\);

-- Location: LCFF_X22_Y9_N31
\inst10|cnt[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(8));

-- Location: LCCOMB_X22_Y8_N0
\inst10|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~16_combout\ = (\inst10|cnt\(9) & (\inst10|Add0~15\ $ (GND))) # (!\inst10|cnt\(9) & (!\inst10|Add0~15\ & VCC))
-- \inst10|Add0~17\ = CARRY((\inst10|cnt\(9) & !\inst10|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(9),
	datad => VCC,
	cin => \inst10|Add0~15\,
	combout => \inst10|Add0~16_combout\,
	cout => \inst10|Add0~17\);

-- Location: LCFF_X22_Y8_N1
\inst10|cnt[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(9));

-- Location: LCCOMB_X22_Y8_N2
\inst10|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~18_combout\ = (\inst10|cnt\(10) & (!\inst10|Add0~17\)) # (!\inst10|cnt\(10) & ((\inst10|Add0~17\) # (GND)))
-- \inst10|Add0~19\ = CARRY((!\inst10|Add0~17\) # (!\inst10|cnt\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(10),
	datad => VCC,
	cin => \inst10|Add0~17\,
	combout => \inst10|Add0~18_combout\,
	cout => \inst10|Add0~19\);

-- Location: LCFF_X22_Y8_N3
\inst10|cnt[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(10));

-- Location: LCCOMB_X21_Y8_N30
\inst10|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~2_combout\ = (!\inst10|cnt\(11) & (!\inst10|cnt\(8) & (!\inst10|cnt\(9) & !\inst10|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(11),
	datab => \inst10|cnt\(8),
	datac => \inst10|cnt\(9),
	datad => \inst10|cnt\(10),
	combout => \inst10|Equal0~2_combout\);

-- Location: LCFF_X22_Y9_N25
\inst10|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(5));

-- Location: LCCOMB_X22_Y9_N12
\inst10|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~0_combout\ = (\inst9|cnt\(2) & (!\inst10|cnt\(5) & (\inst7|cnt\(1) & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|cnt\(2),
	datab => \inst10|cnt\(5),
	datac => \inst7|cnt\(1),
	datad => \inst|cnt\(0),
	combout => \inst10|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y8_N22
\inst10|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Equal0~4_combout\ = (\inst10|Equal0~3_combout\ & (\inst10|Equal0~1_combout\ & (\inst10|Equal0~2_combout\ & \inst10|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Equal0~3_combout\,
	datab => \inst10|Equal0~1_combout\,
	datac => \inst10|Equal0~2_combout\,
	datad => \inst10|Equal0~0_combout\,
	combout => \inst10|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y8_N4
\inst10|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~20_combout\ = (\inst10|cnt\(11) & (\inst10|Add0~19\ $ (GND))) # (!\inst10|cnt\(11) & (!\inst10|Add0~19\ & VCC))
-- \inst10|Add0~21\ = CARRY((\inst10|cnt\(11) & !\inst10|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(11),
	datad => VCC,
	cin => \inst10|Add0~19\,
	combout => \inst10|Add0~20_combout\,
	cout => \inst10|Add0~21\);

-- Location: LCFF_X22_Y8_N5
\inst10|cnt[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(11));

-- Location: LCCOMB_X22_Y8_N6
\inst10|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~22_combout\ = (\inst10|cnt\(12) & (!\inst10|Add0~21\)) # (!\inst10|cnt\(12) & ((\inst10|Add0~21\) # (GND)))
-- \inst10|Add0~23\ = CARRY((!\inst10|Add0~21\) # (!\inst10|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(12),
	datad => VCC,
	cin => \inst10|Add0~21\,
	combout => \inst10|Add0~22_combout\,
	cout => \inst10|Add0~23\);

-- Location: LCCOMB_X22_Y8_N26
\inst10|cnt~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~4_combout\ = (\inst10|Add0~22_combout\ & (((!\inst10|cnt\(17)) # (!\inst10|Equal0~4_combout\)) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|Equal0~4_combout\,
	datac => \inst10|cnt\(17),
	datad => \inst10|Add0~22_combout\,
	combout => \inst10|cnt~4_combout\);

-- Location: LCFF_X22_Y8_N27
\inst10|cnt[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(12));

-- Location: LCCOMB_X22_Y8_N8
\inst10|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~24_combout\ = (\inst10|cnt\(13) & (\inst10|Add0~23\ $ (GND))) # (!\inst10|cnt\(13) & (!\inst10|Add0~23\ & VCC))
-- \inst10|Add0~25\ = CARRY((\inst10|cnt\(13) & !\inst10|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(13),
	datad => VCC,
	cin => \inst10|Add0~23\,
	combout => \inst10|Add0~24_combout\,
	cout => \inst10|Add0~25\);

-- Location: LCFF_X22_Y8_N9
\inst10|cnt[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(13));

-- Location: LCCOMB_X22_Y8_N10
\inst10|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~26_combout\ = (\inst10|cnt\(14) & (!\inst10|Add0~25\)) # (!\inst10|cnt\(14) & ((\inst10|Add0~25\) # (GND)))
-- \inst10|Add0~27\ = CARRY((!\inst10|Add0~25\) # (!\inst10|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(14),
	datad => VCC,
	cin => \inst10|Add0~25\,
	combout => \inst10|Add0~26_combout\,
	cout => \inst10|Add0~27\);

-- Location: LCCOMB_X22_Y8_N28
\inst10|cnt~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~5_combout\ = (\inst10|Add0~26_combout\ & (((!\inst10|cnt\(17)) # (!\inst10|Equal0~4_combout\)) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|Equal0~4_combout\,
	datac => \inst10|cnt\(17),
	datad => \inst10|Add0~26_combout\,
	combout => \inst10|cnt~5_combout\);

-- Location: LCFF_X22_Y8_N29
\inst10|cnt[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(14));

-- Location: LCCOMB_X22_Y8_N12
\inst10|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~28_combout\ = (\inst10|cnt\(15) & (\inst10|Add0~27\ $ (GND))) # (!\inst10|cnt\(15) & (!\inst10|Add0~27\ & VCC))
-- \inst10|Add0~29\ = CARRY((\inst10|cnt\(15) & !\inst10|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(15),
	datad => VCC,
	cin => \inst10|Add0~27\,
	combout => \inst10|Add0~28_combout\,
	cout => \inst10|Add0~29\);

-- Location: LCCOMB_X22_Y8_N18
\inst10|cnt~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~6_combout\ = (\inst10|Add0~28_combout\ & (((!\inst10|cnt\(17)) # (!\inst10|Equal0~4_combout\)) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|Equal0~4_combout\,
	datac => \inst10|cnt\(17),
	datad => \inst10|Add0~28_combout\,
	combout => \inst10|cnt~6_combout\);

-- Location: LCFF_X22_Y8_N19
\inst10|cnt[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(15));

-- Location: LCCOMB_X22_Y8_N14
\inst10|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~30_combout\ = (\inst10|cnt\(16) & (!\inst10|Add0~29\)) # (!\inst10|cnt\(16) & ((\inst10|Add0~29\) # (GND)))
-- \inst10|Add0~31\ = CARRY((!\inst10|Add0~29\) # (!\inst10|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|cnt\(16),
	datad => VCC,
	cin => \inst10|Add0~29\,
	combout => \inst10|Add0~30_combout\,
	cout => \inst10|Add0~31\);

-- Location: LCCOMB_X22_Y8_N30
\inst10|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~0_combout\ = (\inst10|Add0~30_combout\ & (((!\inst10|cnt\(16)) # (!\inst10|Equal0~4_combout\)) # (!\inst10|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(17),
	datab => \inst10|Equal0~4_combout\,
	datac => \inst10|cnt\(16),
	datad => \inst10|Add0~30_combout\,
	combout => \inst10|cnt~0_combout\);

-- Location: LCFF_X22_Y8_N31
\inst10|cnt[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(16));

-- Location: LCCOMB_X22_Y8_N16
\inst10|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|Add0~32_combout\ = \inst10|cnt\(17) $ (!\inst10|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(17),
	cin => \inst10|Add0~31\,
	combout => \inst10|Add0~32_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst10|cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|cnt~1_combout\ = (\inst10|Add0~32_combout\ & (((!\inst10|cnt\(17)) # (!\inst10|Equal0~4_combout\)) # (!\inst10|cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|Equal0~4_combout\,
	datac => \inst10|cnt\(17),
	datad => \inst10|Add0~32_combout\,
	combout => \inst10|cnt~1_combout\);

-- Location: LCFF_X22_Y8_N25
\inst10|cnt[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|cnt\(17));

-- Location: LCCOMB_X21_Y8_N4
\inst10|clk_div~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst10|clk_div~0_combout\ = \inst10|clk_div~regout\ $ (((\inst10|cnt\(16) & (\inst10|cnt\(17) & \inst10|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|cnt\(16),
	datab => \inst10|cnt\(17),
	datac => \inst10|clk_div~regout\,
	datad => \inst10|Equal0~4_combout\,
	combout => \inst10|clk_div~0_combout\);

-- Location: LCFF_X21_Y8_N5
\inst10|clk_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk_50m~clkctrl_outclk\,
	datain => \inst10|clk_div~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|clk_div~regout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_100k~I\ : cycloneii_io
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
	datain => \inst|clk_div~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_100k);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_10k~I\ : cycloneii_io
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
	datain => \inst7|clk_div~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_10k);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_1k~I\ : cycloneii_io
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
	datain => \inst9|clk_div~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_1k);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_100~I\ : cycloneii_io
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
	datain => \inst10|clk_div~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_100);
END structure;


