-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.2 Build 203 01/18/2017 SJ Lite Edition"

-- DATE "11/26/2017 18:39:12"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4_1 IS
    PORT (
	clk : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	swd : IN std_logic_vector(1 DOWNTO 0);
	led : OUT std_logic_vector(3 DOWNTO 0);
	key : IN std_logic_vector(1 DOWNTO 0);
	cout : OUT std_logic;
	q : OUT std_logic_vector(3 DOWNTO 0);
	div_cnt : OUT std_logic_vector(24 DOWNTO 0)
	);
END lab4_1;

-- Design Ports Information
-- led[0]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led[1]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led[2]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- led[3]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- cout	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[0]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[1]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[3]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[4]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[5]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[6]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[7]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[8]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[9]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[10]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[11]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[12]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[13]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[14]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[15]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[16]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[17]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[18]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[19]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[20]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[21]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[22]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[23]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- div_cnt[24]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- swd[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- key[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- swd[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF lab4_1 IS
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
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_swd : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_cout : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_div_cnt : std_logic_vector(24 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \swd[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \key[0]~input_o\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \div_cnt[11]~reg0_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \div_cnt[12]~reg0_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \div_cnt[13]~reg0_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \div_cnt[14]~reg0_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \div_cnt[15]~reg0_q\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_sumout\ : std_logic;
SIGNAL \div_cnt[16]~reg0_q\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~69_sumout\ : std_logic;
SIGNAL \div_cnt[17]~reg0_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~73_sumout\ : std_logic;
SIGNAL \div_cnt[18]~reg0_q\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~77_sumout\ : std_logic;
SIGNAL \div_cnt[19]~reg0_q\ : std_logic;
SIGNAL \Add0~78\ : std_logic;
SIGNAL \Add0~81_sumout\ : std_logic;
SIGNAL \div_cnt[20]~reg0_q\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_sumout\ : std_logic;
SIGNAL \div_cnt[21]~reg0_q\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~89_sumout\ : std_logic;
SIGNAL \div_cnt[22]~reg0_q\ : std_logic;
SIGNAL \Add0~90\ : std_logic;
SIGNAL \Add0~93_sumout\ : std_logic;
SIGNAL \div_cnt[23]~reg0_q\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~97_sumout\ : std_logic;
SIGNAL \div_cnt[24]~reg0feeder_combout\ : std_logic;
SIGNAL \div_cnt[24]~reg0_q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \div_cnt[0]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \div_cnt[1]~reg0feeder_combout\ : std_logic;
SIGNAL \div_cnt[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \div_cnt[2]~reg0feeder_combout\ : std_logic;
SIGNAL \div_cnt[2]~reg0_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \div_cnt[3]~reg0_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \div_cnt[4]~reg0feeder_combout\ : std_logic;
SIGNAL \div_cnt[4]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \div_cnt[5]~reg0_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \div_cnt[6]~reg0feeder_combout\ : std_logic;
SIGNAL \div_cnt[6]~reg0_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \div_cnt[7]~reg0_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \div_cnt[8]~reg0_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \div_cnt[9]~reg0_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \div_cnt[10]~reg0_q\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \div_cnt[1]~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \cout~reg0_q\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \swd[0]~input_o\ : std_logic;
SIGNAL \q[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \q[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \div_cnt[4]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \ALT_INV_q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_div_cnt[24]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[23]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[22]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[21]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[20]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[19]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[18]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[17]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[16]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[15]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[14]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[13]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[12]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[11]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[10]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[8]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[7]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[5]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_q[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_q[0]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_div_cnt[1]~reg0DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sw[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_swd[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_swd[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_key[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_sw <= sw;
ww_swd <= swd;
led <= ww_led;
ww_key <= key;
cout <= ww_cout;
q <= ww_q;
div_cnt <= ww_div_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\ALT_INV_q[3]~reg0_q\ <= NOT \q[3]~reg0_q\;
\ALT_INV_q[2]~reg0_q\ <= NOT \q[2]~reg0_q\;
\ALT_INV_q[1]~reg0_q\ <= NOT \q[1]~reg0_q\;
\ALT_INV_q[0]~reg0_q\ <= NOT \q[0]~reg0_q\;
\ALT_INV_Add0~97_sumout\ <= NOT \Add0~97_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_div_cnt[24]~reg0_q\ <= NOT \div_cnt[24]~reg0_q\;
\ALT_INV_div_cnt[23]~reg0_q\ <= NOT \div_cnt[23]~reg0_q\;
\ALT_INV_div_cnt[22]~reg0_q\ <= NOT \div_cnt[22]~reg0_q\;
\ALT_INV_div_cnt[21]~reg0_q\ <= NOT \div_cnt[21]~reg0_q\;
\ALT_INV_div_cnt[20]~reg0_q\ <= NOT \div_cnt[20]~reg0_q\;
\ALT_INV_div_cnt[19]~reg0_q\ <= NOT \div_cnt[19]~reg0_q\;
\ALT_INV_div_cnt[18]~reg0_q\ <= NOT \div_cnt[18]~reg0_q\;
\ALT_INV_div_cnt[17]~reg0_q\ <= NOT \div_cnt[17]~reg0_q\;
\ALT_INV_div_cnt[16]~reg0_q\ <= NOT \div_cnt[16]~reg0_q\;
\ALT_INV_div_cnt[15]~reg0_q\ <= NOT \div_cnt[15]~reg0_q\;
\ALT_INV_div_cnt[14]~reg0_q\ <= NOT \div_cnt[14]~reg0_q\;
\ALT_INV_div_cnt[13]~reg0_q\ <= NOT \div_cnt[13]~reg0_q\;
\ALT_INV_div_cnt[12]~reg0_q\ <= NOT \div_cnt[12]~reg0_q\;
\ALT_INV_div_cnt[11]~reg0_q\ <= NOT \div_cnt[11]~reg0_q\;
\ALT_INV_div_cnt[10]~reg0_q\ <= NOT \div_cnt[10]~reg0_q\;
\ALT_INV_div_cnt[9]~reg0_q\ <= NOT \div_cnt[9]~reg0_q\;
\ALT_INV_div_cnt[8]~reg0_q\ <= NOT \div_cnt[8]~reg0_q\;
\ALT_INV_div_cnt[7]~reg0_q\ <= NOT \div_cnt[7]~reg0_q\;
\ALT_INV_div_cnt[6]~reg0_q\ <= NOT \div_cnt[6]~reg0_q\;
\ALT_INV_div_cnt[5]~reg0_q\ <= NOT \div_cnt[5]~reg0_q\;
\ALT_INV_div_cnt[4]~reg0_q\ <= NOT \div_cnt[4]~reg0_q\;
\ALT_INV_div_cnt[3]~reg0_q\ <= NOT \div_cnt[3]~reg0_q\;
\ALT_INV_div_cnt[2]~reg0_q\ <= NOT \div_cnt[2]~reg0_q\;
\ALT_INV_div_cnt[1]~reg0_q\ <= NOT \div_cnt[1]~reg0_q\;
\ALT_INV_div_cnt[0]~reg0_q\ <= NOT \div_cnt[0]~reg0_q\;
\ALT_INV_q[1]~reg0DUPLICATE_q\ <= NOT \q[1]~reg0DUPLICATE_q\;
\ALT_INV_q[0]~reg0DUPLICATE_q\ <= NOT \q[0]~reg0DUPLICATE_q\;
\ALT_INV_div_cnt[1]~reg0DUPLICATE_q\ <= NOT \div_cnt[1]~reg0DUPLICATE_q\;
\ALT_INV_sw[3]~input_o\ <= NOT \sw[3]~input_o\;
\ALT_INV_sw[2]~input_o\ <= NOT \sw[2]~input_o\;
\ALT_INV_swd[0]~input_o\ <= NOT \swd[0]~input_o\;
\ALT_INV_sw[1]~input_o\ <= NOT \sw[1]~input_o\;
\ALT_INV_swd[1]~input_o\ <= NOT \swd[1]~input_o\;
\ALT_INV_sw[0]~input_o\ <= NOT \sw[0]~input_o\;
\ALT_INV_key[1]~input_o\ <= NOT \key[1]~input_o\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Add1~1_combout\ <= NOT \Add1~1_combout\;

-- Location: IOOBUF_X60_Y0_N19
\led[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_led(0));

-- Location: IOOBUF_X80_Y0_N19
\led[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_led(1));

-- Location: IOOBUF_X84_Y0_N2
\led[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_led(2));

-- Location: IOOBUF_X89_Y6_N5
\led[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_led(3));

-- Location: IOOBUF_X16_Y0_N53
\cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cout~reg0_q\,
	devoe => ww_devoe,
	o => ww_cout);

-- Location: IOOBUF_X89_Y21_N56
\q[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_q(0));

-- Location: IOOBUF_X89_Y20_N45
\q[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(1));

-- Location: IOOBUF_X89_Y20_N96
\q[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(2));

-- Location: IOOBUF_X89_Y20_N79
\q[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_q(3));

-- Location: IOOBUF_X14_Y0_N53
\div_cnt[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(0));

-- Location: IOOBUF_X16_Y0_N36
\div_cnt[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[1]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(1));

-- Location: IOOBUF_X2_Y0_N93
\div_cnt[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(2));

-- Location: IOOBUF_X4_Y0_N19
\div_cnt[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(3));

-- Location: IOOBUF_X14_Y0_N19
\div_cnt[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[4]~reg0DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(4));

-- Location: IOOBUF_X14_Y0_N2
\div_cnt[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(5));

-- Location: IOOBUF_X8_Y0_N53
\div_cnt[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(6));

-- Location: IOOBUF_X4_Y0_N53
\div_cnt[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(7));

-- Location: IOOBUF_X14_Y0_N36
\div_cnt[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(8));

-- Location: IOOBUF_X89_Y20_N62
\div_cnt[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(9));

-- Location: IOOBUF_X8_Y0_N19
\div_cnt[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(10));

-- Location: IOOBUF_X8_Y0_N36
\div_cnt[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(11));

-- Location: IOOBUF_X8_Y0_N2
\div_cnt[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(12));

-- Location: IOOBUF_X2_Y0_N76
\div_cnt[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(13));

-- Location: IOOBUF_X6_Y0_N2
\div_cnt[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(14));

-- Location: IOOBUF_X10_Y0_N59
\div_cnt[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(15));

-- Location: IOOBUF_X6_Y0_N53
\div_cnt[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(16));

-- Location: IOOBUF_X12_Y0_N53
\div_cnt[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(17));

-- Location: IOOBUF_X12_Y0_N36
\div_cnt[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(18));

-- Location: IOOBUF_X10_Y0_N93
\div_cnt[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(19));

-- Location: IOOBUF_X10_Y0_N42
\div_cnt[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[20]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(20));

-- Location: IOOBUF_X6_Y0_N19
\div_cnt[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[21]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(21));

-- Location: IOOBUF_X6_Y0_N36
\div_cnt[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[22]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(22));

-- Location: IOOBUF_X10_Y0_N76
\div_cnt[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[23]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(23));

-- Location: IOOBUF_X12_Y0_N2
\div_cnt[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \div_cnt[24]~reg0_q\,
	devoe => ww_devoe,
	o => ww_div_cnt(24));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X16_Y0_N1
\swd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_swd(1),
	o => \swd[1]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sw[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\key[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(1),
	o => \key[1]~input_o\);

-- Location: LABCELL_X60_Y1_N54
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \q[0]~reg0_q\ & ( (\swd[1]~input_o\ & (\sw[0]~input_o\ & \key[1]~input_o\)) ) ) # ( !\q[0]~reg0_q\ & ( (\key[1]~input_o\ & ((!\swd[1]~input_o\) # (\sw[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101100001011000000010000000100001011000010110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_swd[1]~input_o\,
	datab => \ALT_INV_sw[0]~input_o\,
	datac => \ALT_INV_key[1]~input_o\,
	datae => \ALT_INV_q[0]~reg0_q\,
	combout => \Mux3~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\key[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key(0),
	o => \key[0]~input_o\);

-- Location: LABCELL_X9_Y2_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \div_cnt[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \div_cnt[0]~reg0_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[0]~reg0_q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X9_Y1_N0
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \div_cnt[10]~reg0_q\ ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \div_cnt[10]~reg0_q\ ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[10]~reg0_q\,
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X9_Y1_N3
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \div_cnt[11]~reg0_q\ ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \div_cnt[11]~reg0_q\ ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[11]~reg0_q\,
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X9_Y1_N5
\div_cnt[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[11]~reg0_q\);

-- Location: LABCELL_X9_Y1_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \div_cnt[12]~reg0_q\ ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \div_cnt[12]~reg0_q\ ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_div_cnt[12]~reg0_q\,
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X9_Y1_N8
\div_cnt[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[12]~reg0_q\);

-- Location: LABCELL_X9_Y1_N9
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \div_cnt[13]~reg0_q\ ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \div_cnt[13]~reg0_q\ ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[13]~reg0_q\,
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X3_Y1_N47
\div_cnt[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~53_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[13]~reg0_q\);

-- Location: LABCELL_X9_Y1_N12
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \div_cnt[14]~reg0_q\ ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \div_cnt[14]~reg0_q\ ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[14]~reg0_q\,
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X9_Y1_N56
\div_cnt[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~57_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[14]~reg0_q\);

-- Location: LABCELL_X9_Y1_N15
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \div_cnt[15]~reg0_q\ ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~62\ = CARRY(( \div_cnt[15]~reg0_q\ ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[15]~reg0_q\,
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X9_Y1_N16
\div_cnt[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[15]~reg0_q\);

-- Location: LABCELL_X9_Y1_N18
\Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~65_sumout\ = SUM(( \div_cnt[16]~reg0_q\ ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~66\ = CARRY(( \div_cnt[16]~reg0_q\ ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[16]~reg0_q\,
	cin => \Add0~62\,
	sumout => \Add0~65_sumout\,
	cout => \Add0~66\);

-- Location: FF_X9_Y1_N19
\div_cnt[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~65_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[16]~reg0_q\);

-- Location: LABCELL_X9_Y1_N21
\Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~69_sumout\ = SUM(( \div_cnt[17]~reg0_q\ ) + ( GND ) + ( \Add0~66\ ))
-- \Add0~70\ = CARRY(( \div_cnt[17]~reg0_q\ ) + ( GND ) + ( \Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[17]~reg0_q\,
	cin => \Add0~66\,
	sumout => \Add0~69_sumout\,
	cout => \Add0~70\);

-- Location: FF_X9_Y1_N22
\div_cnt[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~69_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[17]~reg0_q\);

-- Location: LABCELL_X9_Y1_N54
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\div_cnt[14]~reg0_q\ & ( !\div_cnt[15]~reg0_q\ & ( (!\div_cnt[6]~reg0_q\ & (!\div_cnt[13]~reg0_q\ & (!\div_cnt[16]~reg0_q\ & !\div_cnt[17]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[6]~reg0_q\,
	datab => \ALT_INV_div_cnt[13]~reg0_q\,
	datac => \ALT_INV_div_cnt[16]~reg0_q\,
	datad => \ALT_INV_div_cnt[17]~reg0_q\,
	datae => \ALT_INV_div_cnt[14]~reg0_q\,
	dataf => \ALT_INV_div_cnt[15]~reg0_q\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X9_Y1_N24
\Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~73_sumout\ = SUM(( \div_cnt[18]~reg0_q\ ) + ( GND ) + ( \Add0~70\ ))
-- \Add0~74\ = CARRY(( \div_cnt[18]~reg0_q\ ) + ( GND ) + ( \Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[18]~reg0_q\,
	cin => \Add0~70\,
	sumout => \Add0~73_sumout\,
	cout => \Add0~74\);

-- Location: FF_X9_Y1_N58
\div_cnt[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~73_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[18]~reg0_q\);

-- Location: LABCELL_X9_Y1_N27
\Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~77_sumout\ = SUM(( \div_cnt[19]~reg0_q\ ) + ( GND ) + ( \Add0~74\ ))
-- \Add0~78\ = CARRY(( \div_cnt[19]~reg0_q\ ) + ( GND ) + ( \Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[19]~reg0_q\,
	cin => \Add0~74\,
	sumout => \Add0~77_sumout\,
	cout => \Add0~78\);

-- Location: FF_X9_Y1_N28
\div_cnt[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~77_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[19]~reg0_q\);

-- Location: LABCELL_X9_Y1_N30
\Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~81_sumout\ = SUM(( \div_cnt[20]~reg0_q\ ) + ( GND ) + ( \Add0~78\ ))
-- \Add0~82\ = CARRY(( \div_cnt[20]~reg0_q\ ) + ( GND ) + ( \Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[20]~reg0_q\,
	cin => \Add0~78\,
	sumout => \Add0~81_sumout\,
	cout => \Add0~82\);

-- Location: FF_X9_Y1_N50
\div_cnt[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~81_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[20]~reg0_q\);

-- Location: LABCELL_X9_Y1_N33
\Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~85_sumout\ = SUM(( \div_cnt[21]~reg0_q\ ) + ( GND ) + ( \Add0~82\ ))
-- \Add0~86\ = CARRY(( \div_cnt[21]~reg0_q\ ) + ( GND ) + ( \Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[21]~reg0_q\,
	cin => \Add0~82\,
	sumout => \Add0~85_sumout\,
	cout => \Add0~86\);

-- Location: FF_X9_Y1_N34
\div_cnt[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~85_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[21]~reg0_q\);

-- Location: LABCELL_X9_Y1_N36
\Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~89_sumout\ = SUM(( \div_cnt[22]~reg0_q\ ) + ( GND ) + ( \Add0~86\ ))
-- \Add0~90\ = CARRY(( \div_cnt[22]~reg0_q\ ) + ( GND ) + ( \Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[22]~reg0_q\,
	cin => \Add0~86\,
	sumout => \Add0~89_sumout\,
	cout => \Add0~90\);

-- Location: FF_X9_Y1_N53
\div_cnt[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~89_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[22]~reg0_q\);

-- Location: LABCELL_X9_Y1_N39
\Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~93_sumout\ = SUM(( \div_cnt[23]~reg0_q\ ) + ( GND ) + ( \Add0~90\ ))
-- \Add0~94\ = CARRY(( \div_cnt[23]~reg0_q\ ) + ( GND ) + ( \Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[23]~reg0_q\,
	cin => \Add0~90\,
	sumout => \Add0~93_sumout\,
	cout => \Add0~94\);

-- Location: FF_X9_Y1_N40
\div_cnt[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~93_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[23]~reg0_q\);

-- Location: LABCELL_X9_Y1_N42
\Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~97_sumout\ = SUM(( \div_cnt[24]~reg0_q\ ) + ( GND ) + ( \Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_div_cnt[24]~reg0_q\,
	cin => \Add0~94\,
	sumout => \Add0~97_sumout\);

-- Location: LABCELL_X11_Y1_N42
\div_cnt[24]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \div_cnt[24]~reg0feeder_combout\ = ( \Add0~97_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~97_sumout\,
	combout => \div_cnt[24]~reg0feeder_combout\);

-- Location: FF_X11_Y1_N43
\div_cnt[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[24]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[24]~reg0_q\);

-- Location: LABCELL_X9_Y2_N24
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\div_cnt[4]~reg0_q\ & ( !\div_cnt[7]~reg0_q\ & ( (!\div_cnt[3]~reg0_q\ & (!\div_cnt[2]~reg0_q\ & (!\div_cnt[5]~reg0_q\ & !\div_cnt[24]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[3]~reg0_q\,
	datab => \ALT_INV_div_cnt[2]~reg0_q\,
	datac => \ALT_INV_div_cnt[5]~reg0_q\,
	datad => \ALT_INV_div_cnt[24]~reg0_q\,
	datae => \ALT_INV_div_cnt[4]~reg0_q\,
	dataf => \ALT_INV_div_cnt[7]~reg0_q\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X9_Y1_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\div_cnt[20]~reg0_q\ & ( !\div_cnt[22]~reg0_q\ & ( (!\div_cnt[18]~reg0_q\ & (!\div_cnt[19]~reg0_q\ & (!\div_cnt[21]~reg0_q\ & !\div_cnt[23]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[18]~reg0_q\,
	datab => \ALT_INV_div_cnt[19]~reg0_q\,
	datac => \ALT_INV_div_cnt[21]~reg0_q\,
	datad => \ALT_INV_div_cnt[23]~reg0_q\,
	datae => \ALT_INV_div_cnt[20]~reg0_q\,
	dataf => \ALT_INV_div_cnt[22]~reg0_q\,
	combout => \Equal0~1_combout\);

-- Location: LABCELL_X9_Y2_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( \div_cnt[1]~reg0DUPLICATE_q\ & ( !\div_cnt[0]~reg0_q\ & ( (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_div_cnt[1]~reg0DUPLICATE_q\,
	dataf => \ALT_INV_div_cnt[0]~reg0_q\,
	combout => \Equal0~4_combout\);

-- Location: FF_X9_Y2_N26
\div_cnt[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~1_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[0]~reg0_q\);

-- Location: LABCELL_X9_Y2_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \div_cnt[1]~reg0DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \div_cnt[1]~reg0DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[1]~reg0DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: MLABCELL_X15_Y1_N33
\div_cnt[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \div_cnt[1]~reg0feeder_combout\ = ( \Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~5_sumout\,
	combout => \div_cnt[1]~reg0feeder_combout\);

-- Location: FF_X15_Y1_N35
\div_cnt[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[1]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[1]~reg0DUPLICATE_q\);

-- Location: LABCELL_X9_Y2_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \div_cnt[2]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \div_cnt[2]~reg0_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_div_cnt[2]~reg0_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: MLABCELL_X3_Y1_N33
\div_cnt[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \div_cnt[2]~reg0feeder_combout\ = ( \Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~9_sumout\,
	combout => \div_cnt[2]~reg0feeder_combout\);

-- Location: FF_X3_Y1_N35
\div_cnt[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[2]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[2]~reg0_q\);

-- Location: LABCELL_X9_Y2_N39
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \div_cnt[3]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \div_cnt[3]~reg0_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[3]~reg0_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X4_Y1_N43
\div_cnt[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~13_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[3]~reg0_q\);

-- Location: LABCELL_X9_Y2_N42
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \div_cnt[4]~reg0_q\ ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \div_cnt[4]~reg0_q\ ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_div_cnt[4]~reg0_q\,
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: LABCELL_X9_Y2_N3
\div_cnt[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \div_cnt[4]~reg0feeder_combout\ = ( \Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~17_sumout\,
	combout => \div_cnt[4]~reg0feeder_combout\);

-- Location: FF_X9_Y2_N5
\div_cnt[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[4]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[4]~reg0_q\);

-- Location: LABCELL_X9_Y2_N45
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \div_cnt[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \div_cnt[5]~reg0_q\ ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[5]~reg0_q\,
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X9_Y2_N20
\div_cnt[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~21_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[5]~reg0_q\);

-- Location: LABCELL_X9_Y2_N48
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \div_cnt[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \div_cnt[6]~reg0_q\ ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_div_cnt[6]~reg0_q\,
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X9_Y2_N9
\div_cnt[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \div_cnt[6]~reg0feeder_combout\ = ( \Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add0~25_sumout\,
	combout => \div_cnt[6]~reg0feeder_combout\);

-- Location: FF_X9_Y2_N11
\div_cnt[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[6]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[6]~reg0_q\);

-- Location: LABCELL_X9_Y2_N51
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \div_cnt[7]~reg0_q\ ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \div_cnt[7]~reg0_q\ ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[7]~reg0_q\,
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X4_Y1_N34
\div_cnt[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~29_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[7]~reg0_q\);

-- Location: LABCELL_X9_Y2_N54
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \div_cnt[8]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \div_cnt[8]~reg0_q\ ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_div_cnt[8]~reg0_q\,
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X9_Y2_N14
\div_cnt[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~33_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[8]~reg0_q\);

-- Location: LABCELL_X9_Y2_N57
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \div_cnt[9]~reg0_q\ ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \div_cnt[9]~reg0_q\ ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[9]~reg0_q\,
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X9_Y2_N1
\div_cnt[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \Add0~37_sumout\,
	sclr => \Equal0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[9]~reg0_q\);

-- Location: FF_X9_Y1_N2
\div_cnt[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[10]~reg0_q\);

-- Location: LABCELL_X9_Y2_N18
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\div_cnt[8]~reg0_q\ & ( (!\div_cnt[10]~reg0_q\ & (!\div_cnt[11]~reg0_q\ & (!\div_cnt[12]~reg0_q\ & !\div_cnt[9]~reg0_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_div_cnt[10]~reg0_q\,
	datab => \ALT_INV_div_cnt[11]~reg0_q\,
	datac => \ALT_INV_div_cnt[12]~reg0_q\,
	datad => \ALT_INV_div_cnt[9]~reg0_q\,
	dataf => \ALT_INV_div_cnt[8]~reg0_q\,
	combout => \Equal0~3_combout\);

-- Location: FF_X15_Y1_N34
\div_cnt[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[1]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[1]~reg0_q\);

-- Location: MLABCELL_X15_Y1_N6
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \Equal0~0_combout\ & ( !\div_cnt[1]~reg0_q\ & ( (\Equal0~3_combout\ & (\div_cnt[0]~reg0_q\ & (\Equal0~1_combout\ & \Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_div_cnt[0]~reg0_q\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_div_cnt[1]~reg0_q\,
	combout => \Equal1~0_combout\);

-- Location: FF_X15_Y1_N8
\cout~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cout~reg0_q\);

-- Location: FF_X60_Y1_N56
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: IOIBUF_X12_Y0_N18
\swd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_swd(0),
	o => \swd[0]~input_o\);

-- Location: FF_X60_Y1_N55
\q[0]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0DUPLICATE_q\);

-- Location: IOIBUF_X16_Y0_N18
\sw[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: FF_X88_Y14_N13
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LABCELL_X88_Y14_N12
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \q[1]~reg0_q\ & ( \key[1]~input_o\ & ( (!\swd[1]~input_o\ & (!\swd[0]~input_o\ $ ((!\q[0]~reg0DUPLICATE_q\)))) # (\swd[1]~input_o\ & (((\sw[1]~input_o\)))) ) ) ) # ( !\q[1]~reg0_q\ & ( \key[1]~input_o\ & ( (!\swd[1]~input_o\ & 
-- (!\swd[0]~input_o\ $ ((\q[0]~reg0DUPLICATE_q\)))) # (\swd[1]~input_o\ & (((\sw[1]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000100101101110100100001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_swd[0]~input_o\,
	datab => \ALT_INV_swd[1]~input_o\,
	datac => \ALT_INV_q[0]~reg0DUPLICATE_q\,
	datad => \ALT_INV_sw[1]~input_o\,
	datae => \ALT_INV_q[1]~reg0_q\,
	dataf => \ALT_INV_key[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: FF_X88_Y14_N14
\q[1]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0DUPLICATE_q\);

-- Location: IOIBUF_X4_Y0_N35
\sw[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LABCELL_X88_Y14_N27
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( \swd[0]~input_o\ & ( !\q[2]~reg0_q\ $ (((\q[0]~reg0DUPLICATE_q\ & \q[1]~reg0DUPLICATE_q\))) ) ) # ( !\swd[0]~input_o\ & ( !\q[2]~reg0_q\ $ (((!\q[0]~reg0DUPLICATE_q\ & !\q[1]~reg0DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000011110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_q[0]~reg0DUPLICATE_q\,
	datac => \ALT_INV_q[2]~reg0_q\,
	datad => \ALT_INV_q[1]~reg0DUPLICATE_q\,
	dataf => \ALT_INV_swd[0]~input_o\,
	combout => \Add1~0_combout\);

-- Location: LABCELL_X88_Y14_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \Add1~0_combout\ & ( (\swd[1]~input_o\ & (\sw[2]~input_o\ & \key[1]~input_o\)) ) ) # ( !\Add1~0_combout\ & ( (\key[1]~input_o\ & ((!\swd[1]~input_o\) # (\sw[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_swd[1]~input_o\,
	datac => \ALT_INV_sw[2]~input_o\,
	datad => \ALT_INV_key[1]~input_o\,
	dataf => \ALT_INV_Add1~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: FF_X88_Y14_N25
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: IOIBUF_X4_Y0_N1
\sw[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: LABCELL_X88_Y14_N18
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = ( \q[3]~reg0_q\ & ( \swd[0]~input_o\ & ( (\q[1]~reg0DUPLICATE_q\ & (\q[0]~reg0DUPLICATE_q\ & \q[2]~reg0_q\)) ) ) ) # ( !\q[3]~reg0_q\ & ( \swd[0]~input_o\ & ( (!\q[1]~reg0DUPLICATE_q\) # ((!\q[0]~reg0DUPLICATE_q\) # (!\q[2]~reg0_q\)) ) 
-- ) ) # ( \q[3]~reg0_q\ & ( !\swd[0]~input_o\ & ( (!\q[1]~reg0DUPLICATE_q\ & (!\q[0]~reg0DUPLICATE_q\ & !\q[2]~reg0_q\)) ) ) ) # ( !\q[3]~reg0_q\ & ( !\swd[0]~input_o\ & ( ((\q[2]~reg0_q\) # (\q[0]~reg0DUPLICATE_q\)) # (\q[1]~reg0DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111110000000000000011111111111111000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_q[1]~reg0DUPLICATE_q\,
	datac => \ALT_INV_q[0]~reg0DUPLICATE_q\,
	datad => \ALT_INV_q[2]~reg0_q\,
	datae => \ALT_INV_q[3]~reg0_q\,
	dataf => \ALT_INV_swd[0]~input_o\,
	combout => \Add1~1_combout\);

-- Location: LABCELL_X88_Y14_N48
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \sw[3]~input_o\ & ( \Add1~1_combout\ & ( !\key[1]~input_o\ ) ) ) # ( !\sw[3]~input_o\ & ( \Add1~1_combout\ & ( (!\key[1]~input_o\) # (\swd[1]~input_o\) ) ) ) # ( \sw[3]~input_o\ & ( !\Add1~1_combout\ & ( (!\swd[1]~input_o\) # 
-- (!\key[1]~input_o\) ) ) ) # ( !\sw[3]~input_o\ & ( !\Add1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111100110011111111001100111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_swd[1]~input_o\,
	datad => \ALT_INV_key[1]~input_o\,
	datae => \ALT_INV_sw[3]~input_o\,
	dataf => \ALT_INV_Add1~1_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y14_N49
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	clrn => \key[0]~input_o\,
	ena => \cout~reg0_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: FF_X9_Y2_N4
\div_cnt[4]~reg0DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \div_cnt[4]~reg0feeder_combout\,
	sclr => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_cnt[4]~reg0DUPLICATE_q\);

-- Location: MLABCELL_X82_Y12_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


