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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "12/07/2021 15:16:05"

-- 
-- Device: Altera EP2C35F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dec4to16BDF IS
    PORT (
	Result : OUT std_logic_vector(0 TO 15);
	Enable_decoder : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0)
	);
END dec4to16BDF;

-- Design Ports Information
-- Result[0]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[1]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[2]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[3]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[4]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[6]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[7]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[8]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[9]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[10]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[11]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[12]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[13]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[14]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[15]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Input[2]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Enable_decoder	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dec4to16BDF IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Result : std_logic_vector(0 TO 15);
SIGNAL ww_Enable_decoder : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enable_decoder~combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux0~4_combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux0~5_combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux1~4_combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux1~5_combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux2~0_combout\ : std_logic;
SIGNAL \inst|G1:0:Dec_ri|Mux3~0_combout\ : std_logic;
SIGNAL \inst|G1:1:Dec_ri|Mux0~4_combout\ : std_logic;
SIGNAL \inst|G1:1:Dec_ri|Mux0~5_combout\ : std_logic;
SIGNAL \inst|G1:1:Dec_ri|Mux1~4_combout\ : std_logic;
SIGNAL \inst|G1:1:Dec_ri|Mux2~0_combout\ : std_logic;
SIGNAL \inst|G1:1:Dec_ri|Mux3~0_combout\ : std_logic;
SIGNAL \inst|G1:3:Dec_ri|Mux0~4_combout\ : std_logic;
SIGNAL \inst|G1:2:Dec_ri|Mux0~4_combout\ : std_logic;
SIGNAL \inst|G1:2:Dec_ri|Mux1~4_combout\ : std_logic;
SIGNAL \inst|G1:2:Dec_ri|Mux1~5_combout\ : std_logic;
SIGNAL \inst|G1:2:Dec_ri|Mux2~0_combout\ : std_logic;
SIGNAL \inst|G1:2:Dec_ri|Mux3~0_combout\ : std_logic;
SIGNAL \inst|G1:3:Dec_ri|Mux0~5_combout\ : std_logic;
SIGNAL \inst|G1:3:Dec_ri|Mux1~4_combout\ : std_logic;
SIGNAL \inst|G1:3:Dec_ri|Mux2~0_combout\ : std_logic;
SIGNAL \inst|G1:3:Dec_ri|Mux3~0_combout\ : std_logic;
SIGNAL \Input~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

Result <= ww_Result;
ww_Enable_decoder <= Enable_decoder;
ww_Input <= Input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Input[2]~I\ : cycloneii_io
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
	padio => ww_Input(2),
	combout => \Input~combout\(2));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Input[0]~I\ : cycloneii_io
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
	padio => ww_Input(0),
	combout => \Input~combout\(0));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Enable_decoder~I\ : cycloneii_io
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
	padio => ww_Enable_decoder,
	combout => \Enable_decoder~combout\);

-- Location: LCCOMB_X64_Y33_N24
\inst|G1:0:Dec_ri|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux0~4_combout\ = (!\Input~combout\(3) & (!\Input~combout\(0) & \Enable_decoder~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datac => \Input~combout\(0),
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:0:Dec_ri|Mux0~4_combout\);

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Input[1]~I\ : cycloneii_io
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
	padio => ww_Input(1),
	combout => \Input~combout\(1));

-- Location: LCCOMB_X64_Y33_N4
\inst|G1:0:Dec_ri|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux0~5_combout\ = (!\Input~combout\(2) & (\inst|G1:0:Dec_ri|Mux0~4_combout\ & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input~combout\(2),
	datac => \inst|G1:0:Dec_ri|Mux0~4_combout\,
	datad => \Input~combout\(1),
	combout => \inst|G1:0:Dec_ri|Mux0~5_combout\);

-- Location: LCCOMB_X64_Y33_N10
\inst|G1:0:Dec_ri|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux1~4_combout\ = (!\Input~combout\(3) & (\Input~combout\(0) & \Enable_decoder~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datac => \Input~combout\(0),
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:0:Dec_ri|Mux1~4_combout\);

-- Location: LCCOMB_X64_Y33_N14
\inst|G1:0:Dec_ri|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux1~5_combout\ = (\inst|G1:0:Dec_ri|Mux1~4_combout\ & (!\Input~combout\(2) & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:0:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:0:Dec_ri|Mux1~5_combout\);

-- Location: LCCOMB_X64_Y33_N20
\inst|G1:0:Dec_ri|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux2~0_combout\ = (!\Input~combout\(2) & (\inst|G1:0:Dec_ri|Mux0~4_combout\ & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input~combout\(2),
	datac => \inst|G1:0:Dec_ri|Mux0~4_combout\,
	datad => \Input~combout\(1),
	combout => \inst|G1:0:Dec_ri|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y33_N22
\inst|G1:0:Dec_ri|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:0:Dec_ri|Mux3~0_combout\ = (\inst|G1:0:Dec_ri|Mux1~4_combout\ & (!\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:0:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:0:Dec_ri|Mux3~0_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Input[3]~I\ : cycloneii_io
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
	padio => ww_Input(3),
	combout => \Input~combout\(3));

-- Location: LCCOMB_X64_Y31_N0
\inst|G1:1:Dec_ri|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:1:Dec_ri|Mux0~4_combout\ = (\Input~combout\(2) & !\Input~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:1:Dec_ri|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y33_N0
\inst|G1:1:Dec_ri|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:1:Dec_ri|Mux0~5_combout\ = (!\Input~combout\(3) & (!\Input~combout\(0) & (\inst|G1:1:Dec_ri|Mux0~4_combout\ & \Enable_decoder~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datab => \Input~combout\(0),
	datac => \inst|G1:1:Dec_ri|Mux0~4_combout\,
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:1:Dec_ri|Mux0~5_combout\);

-- Location: LCCOMB_X64_Y33_N2
\inst|G1:1:Dec_ri|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:1:Dec_ri|Mux1~4_combout\ = (!\Input~combout\(3) & (\Input~combout\(0) & (\inst|G1:1:Dec_ri|Mux0~4_combout\ & \Enable_decoder~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datab => \Input~combout\(0),
	datac => \inst|G1:1:Dec_ri|Mux0~4_combout\,
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:1:Dec_ri|Mux1~4_combout\);

-- Location: LCCOMB_X64_Y33_N8
\inst|G1:1:Dec_ri|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:1:Dec_ri|Mux2~0_combout\ = (\Input~combout\(2) & (\inst|G1:0:Dec_ri|Mux0~4_combout\ & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Input~combout\(2),
	datac => \inst|G1:0:Dec_ri|Mux0~4_combout\,
	datad => \Input~combout\(1),
	combout => \inst|G1:1:Dec_ri|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y33_N18
\inst|G1:1:Dec_ri|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:1:Dec_ri|Mux3~0_combout\ = (\inst|G1:0:Dec_ri|Mux1~4_combout\ & (\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:0:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:1:Dec_ri|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y33_N28
\inst|G1:3:Dec_ri|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:3:Dec_ri|Mux0~4_combout\ = (\Input~combout\(3) & (!\Input~combout\(0) & \Enable_decoder~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datac => \Input~combout\(0),
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:3:Dec_ri|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y33_N12
\inst|G1:2:Dec_ri|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:2:Dec_ri|Mux0~4_combout\ = (\inst|G1:3:Dec_ri|Mux0~4_combout\ & (!\Input~combout\(2) & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|G1:3:Dec_ri|Mux0~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:2:Dec_ri|Mux0~4_combout\);

-- Location: LCCOMB_X64_Y33_N30
\inst|G1:2:Dec_ri|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:2:Dec_ri|Mux1~4_combout\ = (\Input~combout\(3) & (\Input~combout\(0) & \Enable_decoder~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Input~combout\(3),
	datac => \Input~combout\(0),
	datad => \Enable_decoder~combout\,
	combout => \inst|G1:2:Dec_ri|Mux1~4_combout\);

-- Location: LCCOMB_X64_Y31_N22
\inst|G1:2:Dec_ri|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:2:Dec_ri|Mux1~5_combout\ = (\inst|G1:2:Dec_ri|Mux1~4_combout\ & (!\Input~combout\(2) & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:2:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:2:Dec_ri|Mux1~5_combout\);

-- Location: LCCOMB_X64_Y33_N16
\inst|G1:2:Dec_ri|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:2:Dec_ri|Mux2~0_combout\ = (\inst|G1:3:Dec_ri|Mux0~4_combout\ & (!\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|G1:3:Dec_ri|Mux0~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:2:Dec_ri|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y31_N18
\inst|G1:2:Dec_ri|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:2:Dec_ri|Mux3~0_combout\ = (\inst|G1:2:Dec_ri|Mux1~4_combout\ & (!\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:2:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:2:Dec_ri|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
\inst|G1:3:Dec_ri|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:3:Dec_ri|Mux0~5_combout\ = (\inst|G1:3:Dec_ri|Mux0~4_combout\ & (\Input~combout\(2) & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|G1:3:Dec_ri|Mux0~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:3:Dec_ri|Mux0~5_combout\);

-- Location: LCCOMB_X64_Y31_N16
\inst|G1:3:Dec_ri|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:3:Dec_ri|Mux1~4_combout\ = (\inst|G1:2:Dec_ri|Mux1~4_combout\ & (\Input~combout\(2) & !\Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:2:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:3:Dec_ri|Mux1~4_combout\);

-- Location: LCCOMB_X64_Y33_N26
\inst|G1:3:Dec_ri|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:3:Dec_ri|Mux2~0_combout\ = (\inst|G1:3:Dec_ri|Mux0~4_combout\ & (\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|G1:3:Dec_ri|Mux0~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:3:Dec_ri|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y31_N12
\inst|G1:3:Dec_ri|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|G1:3:Dec_ri|Mux3~0_combout\ = (\inst|G1:2:Dec_ri|Mux1~4_combout\ & (\Input~combout\(2) & \Input~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|G1:2:Dec_ri|Mux1~4_combout\,
	datac => \Input~combout\(2),
	datad => \Input~combout\(1),
	combout => \inst|G1:3:Dec_ri|Mux3~0_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[0]~I\ : cycloneii_io
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
	datain => \inst|G1:0:Dec_ri|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[1]~I\ : cycloneii_io
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
	datain => \inst|G1:0:Dec_ri|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[2]~I\ : cycloneii_io
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
	datain => \inst|G1:0:Dec_ri|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[3]~I\ : cycloneii_io
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
	datain => \inst|G1:0:Dec_ri|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[4]~I\ : cycloneii_io
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
	datain => \inst|G1:1:Dec_ri|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[5]~I\ : cycloneii_io
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
	datain => \inst|G1:1:Dec_ri|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[6]~I\ : cycloneii_io
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
	datain => \inst|G1:1:Dec_ri|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[7]~I\ : cycloneii_io
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
	datain => \inst|G1:1:Dec_ri|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[8]~I\ : cycloneii_io
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
	datain => \inst|G1:2:Dec_ri|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[9]~I\ : cycloneii_io
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
	datain => \inst|G1:2:Dec_ri|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[10]~I\ : cycloneii_io
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
	datain => \inst|G1:2:Dec_ri|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[11]~I\ : cycloneii_io
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
	datain => \inst|G1:2:Dec_ri|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[12]~I\ : cycloneii_io
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
	datain => \inst|G1:3:Dec_ri|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[13]~I\ : cycloneii_io
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
	datain => \inst|G1:3:Dec_ri|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[14]~I\ : cycloneii_io
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
	datain => \inst|G1:3:Dec_ri|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[15]~I\ : cycloneii_io
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
	datain => \inst|G1:3:Dec_ri|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(15));
END structure;


