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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/28/2024 18:17:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dec_BCD IS
    PORT (
	ABCD : IN std_logic_vector(3 DOWNTO 0);
	IB : OUT std_logic_vector(6 DOWNTO 0)
	);
END Dec_BCD;

-- Design Ports Information
-- IB[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IB[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ABCD[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dec_BCD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ABCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IB : std_logic_vector(6 DOWNTO 0);
SIGNAL \IB[0]~output_o\ : std_logic;
SIGNAL \IB[1]~output_o\ : std_logic;
SIGNAL \IB[2]~output_o\ : std_logic;
SIGNAL \IB[3]~output_o\ : std_logic;
SIGNAL \IB[4]~output_o\ : std_logic;
SIGNAL \IB[5]~output_o\ : std_logic;
SIGNAL \IB[6]~output_o\ : std_logic;
SIGNAL \ABCD[3]~input_o\ : std_logic;
SIGNAL \ABCD[2]~input_o\ : std_logic;
SIGNAL \ABCD[0]~input_o\ : std_logic;
SIGNAL \ABCD[1]~input_o\ : std_logic;
SIGNAL \IB~0_combout\ : std_logic;
SIGNAL \IB~1_combout\ : std_logic;
SIGNAL \IB~2_combout\ : std_logic;
SIGNAL \IB~3_combout\ : std_logic;
SIGNAL \IB~4_combout\ : std_logic;
SIGNAL \IB~5_combout\ : std_logic;
SIGNAL \IB~6_combout\ : std_logic;
SIGNAL \ALT_INV_IB~4_combout\ : std_logic;

BEGIN

ww_ABCD <= ABCD;
IB <= ww_IB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IB~4_combout\ <= NOT \IB~4_combout\;

-- Location: IOOBUF_X0_Y10_N9
\IB[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~0_combout\,
	devoe => ww_devoe,
	o => \IB[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\IB[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~1_combout\,
	devoe => ww_devoe,
	o => \IB[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\IB[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~2_combout\,
	devoe => ww_devoe,
	o => \IB[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\IB[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~3_combout\,
	devoe => ww_devoe,
	o => \IB[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\IB[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_IB~4_combout\,
	devoe => ww_devoe,
	o => \IB[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\IB[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~5_combout\,
	devoe => ww_devoe,
	o => \IB[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\IB[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \IB~6_combout\,
	devoe => ww_devoe,
	o => \IB[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\ABCD[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(3),
	o => \ABCD[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\ABCD[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(2),
	o => \ABCD[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\ABCD[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(0),
	o => \ABCD[0]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\ABCD[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ABCD(1),
	o => \ABCD[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\IB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~0_combout\ = (\ABCD[0]~input_o\ & (!\ABCD[3]~input_o\ & (\ABCD[2]~input_o\ $ (!\ABCD[1]~input_o\)))) # (!\ABCD[0]~input_o\ & (!\ABCD[1]~input_o\ & (\ABCD[3]~input_o\ $ (!\ABCD[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\IB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~1_combout\ = (\ABCD[2]~input_o\ & (\ABCD[0]~input_o\ & (\ABCD[3]~input_o\ $ (\ABCD[1]~input_o\)))) # (!\ABCD[2]~input_o\ & (!\ABCD[3]~input_o\ & ((\ABCD[0]~input_o\) # (\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~1_combout\);

-- Location: LCCOMB_X1_Y13_N20
\IB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~2_combout\ = (\ABCD[1]~input_o\ & (!\ABCD[3]~input_o\ & ((\ABCD[0]~input_o\)))) # (!\ABCD[1]~input_o\ & ((\ABCD[2]~input_o\ & (!\ABCD[3]~input_o\)) # (!\ABCD[2]~input_o\ & ((\ABCD[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~2_combout\);

-- Location: LCCOMB_X1_Y13_N6
\IB~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~3_combout\ = (\ABCD[0]~input_o\ & ((\ABCD[2]~input_o\ $ (!\ABCD[1]~input_o\)))) # (!\ABCD[0]~input_o\ & ((\ABCD[3]~input_o\ & (!\ABCD[2]~input_o\ & \ABCD[1]~input_o\)) # (!\ABCD[3]~input_o\ & (\ABCD[2]~input_o\ & !\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~3_combout\);

-- Location: LCCOMB_X1_Y13_N16
\IB~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~4_combout\ = (\ABCD[3]~input_o\ & (((\ABCD[0]~input_o\ & !\ABCD[1]~input_o\)) # (!\ABCD[2]~input_o\))) # (!\ABCD[3]~input_o\ & ((\ABCD[2]~input_o\) # ((\ABCD[0]~input_o\) # (!\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~4_combout\);

-- Location: LCCOMB_X1_Y13_N10
\IB~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~5_combout\ = (\ABCD[3]~input_o\ & ((\ABCD[0]~input_o\ & ((\ABCD[1]~input_o\))) # (!\ABCD[0]~input_o\ & (\ABCD[2]~input_o\)))) # (!\ABCD[3]~input_o\ & (\ABCD[2]~input_o\ & (\ABCD[0]~input_o\ $ (\ABCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~5_combout\);

-- Location: LCCOMB_X1_Y13_N12
\IB~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IB~6_combout\ = (\ABCD[3]~input_o\ & (\ABCD[0]~input_o\ & (\ABCD[2]~input_o\ $ (\ABCD[1]~input_o\)))) # (!\ABCD[3]~input_o\ & (!\ABCD[1]~input_o\ & (\ABCD[2]~input_o\ $ (\ABCD[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ABCD[3]~input_o\,
	datab => \ABCD[2]~input_o\,
	datac => \ABCD[0]~input_o\,
	datad => \ABCD[1]~input_o\,
	combout => \IB~6_combout\);

ww_IB(0) <= \IB[0]~output_o\;

ww_IB(1) <= \IB[1]~output_o\;

ww_IB(2) <= \IB[2]~output_o\;

ww_IB(3) <= \IB[3]~output_o\;

ww_IB(4) <= \IB[4]~output_o\;

ww_IB(5) <= \IB[5]~output_o\;

ww_IB(6) <= \IB[6]~output_o\;
END structure;


