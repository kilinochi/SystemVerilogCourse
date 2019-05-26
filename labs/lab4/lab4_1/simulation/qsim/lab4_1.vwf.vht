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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/26/2017 18:39:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab4_1_vhd_vec_tst IS
END lab4_1_vhd_vec_tst;
ARCHITECTURE lab4_1_arch OF lab4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cout : STD_LOGIC;
SIGNAL div_cnt : STD_LOGIC_VECTOR(24 DOWNTO 0);
SIGNAL key : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL led : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL swd : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT lab4_1
	PORT (
	clk : IN STD_LOGIC;
	cout : OUT STD_LOGIC;
	div_cnt : OUT STD_LOGIC_VECTOR(24 DOWNTO 0);
	key : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	led : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	swd : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab4_1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cout => cout,
	div_cnt => div_cnt,
	key => key,
	led => led,
	q => q,
	sw => sw,
	swd => swd
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- key[1]
t_prcs_key_1: PROCESS
BEGIN
	key(1) <= '0';
	WAIT FOR 60000 ps;
	key(1) <= '1';
WAIT;
END PROCESS t_prcs_key_1;
-- key[0]
t_prcs_key_0: PROCESS
BEGIN
	key(0) <= '1';
	WAIT FOR 400000 ps;
	key(0) <= '0';
	WAIT FOR 60000 ps;
	key(0) <= '1';
WAIT;
END PROCESS t_prcs_key_0;
-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '1';
WAIT;
END PROCESS t_prcs_sw_3;
-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '1';
WAIT;
END PROCESS t_prcs_sw_2;
-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '0';
WAIT;
END PROCESS t_prcs_sw_1;
-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_0;
-- swd[1]
t_prcs_swd_1: PROCESS
BEGIN
	swd(1) <= '0';
	WAIT FOR 710000 ps;
	swd(1) <= '1';
	WAIT FOR 80000 ps;
	swd(1) <= '0';
WAIT;
END PROCESS t_prcs_swd_1;
-- swd[0]
t_prcs_swd_0: PROCESS
BEGIN
	swd(0) <= '0';
	WAIT FOR 500000 ps;
	swd(0) <= '1';
WAIT;
END PROCESS t_prcs_swd_0;
END lab4_1_arch;
