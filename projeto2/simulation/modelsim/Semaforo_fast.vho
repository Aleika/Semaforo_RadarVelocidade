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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/28/2018 22:51:20"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Semaforo IS
    PORT (
	clk : IN std_logic;
	r : BUFFER std_logic_vector(1 DOWNTO 0);
	g : BUFFER std_logic_vector(1 DOWNTO 0);
	y : BUFFER std_logic_vector(1 DOWNTO 0);
	A : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	clock20 : BUFFER std_logic;
	clock10 : BUFFER std_logic;
	clock30 : BUFFER std_logic;
	clock3 : BUFFER std_logic;
	clock1 : BUFFER std_logic
	);
END Semaforo;

-- Design Ports Information
-- r[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- r[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- g[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock20	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock10	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock30	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock3	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock1	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Semaforo IS
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
SIGNAL ww_r : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_g : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_clock20 : std_logic;
SIGNAL ww_clock10 : std_logic;
SIGNAL ww_clock30 : std_logic;
SIGNAL ww_clock3 : std_logic;
SIGNAL ww_clock1 : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divFreq|Add0~2_combout\ : std_logic;
SIGNAL \divFreq|Add1~20_combout\ : std_logic;
SIGNAL \divFreq|Add1~24_combout\ : std_logic;
SIGNAL \divFreq|Add1~34_combout\ : std_logic;
SIGNAL \divFreq|Add1~38_combout\ : std_logic;
SIGNAL \divFreq|Add1~40_combout\ : std_logic;
SIGNAL \divFreq|Add1~48_combout\ : std_logic;
SIGNAL \divFreq|Add3~14_combout\ : std_logic;
SIGNAL \divFreq|Add3~18_combout\ : std_logic;
SIGNAL \divFreq|Add3~28_combout\ : std_logic;
SIGNAL \divFreq|Add3~32_combout\ : std_logic;
SIGNAL \divFreq|Add3~36_combout\ : std_logic;
SIGNAL \divFreq|Add3~38_combout\ : std_logic;
SIGNAL \divFreq|Add3~44_combout\ : std_logic;
SIGNAL \divFreq|Add3~51\ : std_logic;
SIGNAL \divFreq|Add3~52_combout\ : std_logic;
SIGNAL \divFreq|Add0~16_combout\ : std_logic;
SIGNAL \divFreq|Add0~34_combout\ : std_logic;
SIGNAL \divFreq|Add0~36_combout\ : std_logic;
SIGNAL \divFreq|Add0~47\ : std_logic;
SIGNAL \divFreq|Add0~48_combout\ : std_logic;
SIGNAL \divFreq|Add4~18_combout\ : std_logic;
SIGNAL \divFreq|Add4~20_combout\ : std_logic;
SIGNAL \divFreq|Add4~26_combout\ : std_logic;
SIGNAL \divFreq|Add4~40_combout\ : std_logic;
SIGNAL \divFreq|Add2~18_combout\ : std_logic;
SIGNAL \divFreq|Add2~40_combout\ : std_logic;
SIGNAL \divFreq|Add2~52_combout\ : std_logic;
SIGNAL \divFreq|Equal1~3_combout\ : std_logic;
SIGNAL \divFreq|Equal1~4_combout\ : std_logic;
SIGNAL \divFreq|Equal1~5_combout\ : std_logic;
SIGNAL \divFreq|Equal1~6_combout\ : std_logic;
SIGNAL \divFreq|Equal1~7_combout\ : std_logic;
SIGNAL \divFreq|Equal3~1_combout\ : std_logic;
SIGNAL \divFreq|Equal3~2_combout\ : std_logic;
SIGNAL \divFreq|Equal3~3_combout\ : std_logic;
SIGNAL \divFreq|Equal3~4_combout\ : std_logic;
SIGNAL \divFreq|Equal3~5_combout\ : std_logic;
SIGNAL \divFreq|Equal4~1_combout\ : std_logic;
SIGNAL \divFreq|Equal4~3_combout\ : std_logic;
SIGNAL \divFreq|Equal2~2_combout\ : std_logic;
SIGNAL \divFreq|contagem20~4_combout\ : std_logic;
SIGNAL \divFreq|contagem20~7_combout\ : std_logic;
SIGNAL \divFreq|contagem10~0_combout\ : std_logic;
SIGNAL \divFreq|contagem10~4_combout\ : std_logic;
SIGNAL \divFreq|contagem10~8_combout\ : std_logic;
SIGNAL \divFreq|contagem10~9_combout\ : std_logic;
SIGNAL \divFreq|contagem1~11_combout\ : std_logic;
SIGNAL \divFreq|contagem3~2_combout\ : std_logic;
SIGNAL \divFreq|contagem3~5_combout\ : std_logic;
SIGNAL \divFreq|contagem3~7_combout\ : std_logic;
SIGNAL \divFreq|contagem30~3_combout\ : std_logic;
SIGNAL \divFreq|contagem30~4_combout\ : std_logic;
SIGNAL \divFreq|contagem30~9_combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \B~combout\ : std_logic;
SIGNAL \y~0_combout\ : std_logic;
SIGNAL \divFreq|Add0~0_combout\ : std_logic;
SIGNAL \divFreq|Add0~1\ : std_logic;
SIGNAL \divFreq|Add0~3\ : std_logic;
SIGNAL \divFreq|Add0~5\ : std_logic;
SIGNAL \divFreq|Add0~6_combout\ : std_logic;
SIGNAL \divFreq|Add0~7\ : std_logic;
SIGNAL \divFreq|Add0~9\ : std_logic;
SIGNAL \divFreq|Add0~10_combout\ : std_logic;
SIGNAL \divFreq|Add0~11\ : std_logic;
SIGNAL \divFreq|Add0~12_combout\ : std_logic;
SIGNAL \divFreq|contagem1~0_combout\ : std_logic;
SIGNAL \divFreq|Add0~13\ : std_logic;
SIGNAL \divFreq|Add0~14_combout\ : std_logic;
SIGNAL \divFreq|Add0~15\ : std_logic;
SIGNAL \divFreq|Add0~17\ : std_logic;
SIGNAL \divFreq|Add0~18_combout\ : std_logic;
SIGNAL \divFreq|Add0~19\ : std_logic;
SIGNAL \divFreq|Add0~20_combout\ : std_logic;
SIGNAL \divFreq|Add0~21\ : std_logic;
SIGNAL \divFreq|Add0~22_combout\ : std_logic;
SIGNAL \divFreq|contagem1~1_combout\ : std_logic;
SIGNAL \divFreq|Add0~23\ : std_logic;
SIGNAL \divFreq|Add0~24_combout\ : std_logic;
SIGNAL \divFreq|contagem1~2_combout\ : std_logic;
SIGNAL \divFreq|Add0~25\ : std_logic;
SIGNAL \divFreq|Add0~26_combout\ : std_logic;
SIGNAL \divFreq|contagem1~3_combout\ : std_logic;
SIGNAL \divFreq|Equal0~3_combout\ : std_logic;
SIGNAL \divFreq|Add0~8_combout\ : std_logic;
SIGNAL \divFreq|Add0~4_combout\ : std_logic;
SIGNAL \divFreq|Equal0~0_combout\ : std_logic;
SIGNAL \divFreq|Equal0~1_combout\ : std_logic;
SIGNAL \divFreq|Equal0~2_combout\ : std_logic;
SIGNAL \divFreq|Equal0~4_combout\ : std_logic;
SIGNAL \divFreq|Add0~27\ : std_logic;
SIGNAL \divFreq|Add0~28_combout\ : std_logic;
SIGNAL \divFreq|contagem1~4_combout\ : std_logic;
SIGNAL \divFreq|Add0~29\ : std_logic;
SIGNAL \divFreq|Add0~30_combout\ : std_logic;
SIGNAL \divFreq|Add0~31\ : std_logic;
SIGNAL \divFreq|Add0~32_combout\ : std_logic;
SIGNAL \divFreq|contagem1~5_combout\ : std_logic;
SIGNAL \divFreq|Equal0~5_combout\ : std_logic;
SIGNAL \divFreq|contagem1~6_combout\ : std_logic;
SIGNAL \divFreq|Add0~33\ : std_logic;
SIGNAL \divFreq|Add0~35\ : std_logic;
SIGNAL \divFreq|Add0~37\ : std_logic;
SIGNAL \divFreq|Add0~38_combout\ : std_logic;
SIGNAL \divFreq|contagem1~7_combout\ : std_logic;
SIGNAL \divFreq|Add0~39\ : std_logic;
SIGNAL \divFreq|Add0~40_combout\ : std_logic;
SIGNAL \divFreq|contagem1~8_combout\ : std_logic;
SIGNAL \divFreq|Add0~41\ : std_logic;
SIGNAL \divFreq|Add0~43\ : std_logic;
SIGNAL \divFreq|Add0~45\ : std_logic;
SIGNAL \divFreq|Add0~46_combout\ : std_logic;
SIGNAL \divFreq|Add0~44_combout\ : std_logic;
SIGNAL \divFreq|contagem1~10_combout\ : std_logic;
SIGNAL \divFreq|Add0~42_combout\ : std_logic;
SIGNAL \divFreq|contagem1~9_combout\ : std_logic;
SIGNAL \divFreq|Equal0~6_combout\ : std_logic;
SIGNAL \divFreq|Equal0~7_combout\ : std_logic;
SIGNAL \divFreq|estado[0]~2_combout\ : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \y~1_combout\ : std_logic;
SIGNAL \divFreq|Add1~1_cout\ : std_logic;
SIGNAL \divFreq|Add1~3_cout\ : std_logic;
SIGNAL \divFreq|Add1~5_cout\ : std_logic;
SIGNAL \divFreq|Add1~7_cout\ : std_logic;
SIGNAL \divFreq|Add1~9_cout\ : std_logic;
SIGNAL \divFreq|Add1~10_combout\ : std_logic;
SIGNAL \divFreq|Add1~11\ : std_logic;
SIGNAL \divFreq|Add1~13\ : std_logic;
SIGNAL \divFreq|Add1~14_combout\ : std_logic;
SIGNAL \divFreq|contagem20~0_combout\ : std_logic;
SIGNAL \divFreq|Add1~15\ : std_logic;
SIGNAL \divFreq|Add1~17\ : std_logic;
SIGNAL \divFreq|Add1~18_combout\ : std_logic;
SIGNAL \divFreq|contagem20~1_combout\ : std_logic;
SIGNAL \divFreq|Add1~19\ : std_logic;
SIGNAL \divFreq|Add1~21\ : std_logic;
SIGNAL \divFreq|Add1~22_combout\ : std_logic;
SIGNAL \divFreq|Add1~23\ : std_logic;
SIGNAL \divFreq|Add1~25\ : std_logic;
SIGNAL \divFreq|Add1~26_combout\ : std_logic;
SIGNAL \divFreq|contagem20~5_combout\ : std_logic;
SIGNAL \divFreq|Add1~27\ : std_logic;
SIGNAL \divFreq|Add1~28_combout\ : std_logic;
SIGNAL \divFreq|Add1~29\ : std_logic;
SIGNAL \divFreq|Add1~30_combout\ : std_logic;
SIGNAL \divFreq|contagem20~6_combout\ : std_logic;
SIGNAL \divFreq|Add1~31\ : std_logic;
SIGNAL \divFreq|Add1~32_combout\ : std_logic;
SIGNAL \divFreq|Add1~33\ : std_logic;
SIGNAL \divFreq|Add1~35\ : std_logic;
SIGNAL \divFreq|Add1~36_combout\ : std_logic;
SIGNAL \divFreq|contagem20~8_combout\ : std_logic;
SIGNAL \divFreq|Add1~37\ : std_logic;
SIGNAL \divFreq|Add1~39\ : std_logic;
SIGNAL \divFreq|Add1~41\ : std_logic;
SIGNAL \divFreq|Add1~42_combout\ : std_logic;
SIGNAL \divFreq|contagem20~9_combout\ : std_logic;
SIGNAL \divFreq|Add1~43\ : std_logic;
SIGNAL \divFreq|Add1~44_combout\ : std_logic;
SIGNAL \divFreq|contagem20~10_combout\ : std_logic;
SIGNAL \divFreq|Add1~45\ : std_logic;
SIGNAL \divFreq|Add1~46_combout\ : std_logic;
SIGNAL \divFreq|contagem20~11_combout\ : std_logic;
SIGNAL \divFreq|Add1~47\ : std_logic;
SIGNAL \divFreq|Add1~49\ : std_logic;
SIGNAL \divFreq|Add1~50_combout\ : std_logic;
SIGNAL \divFreq|contagem20~12_combout\ : std_logic;
SIGNAL \divFreq|Add1~51\ : std_logic;
SIGNAL \divFreq|Add1~52_combout\ : std_logic;
SIGNAL \divFreq|contagem20~2_combout\ : std_logic;
SIGNAL \divFreq|Add1~53\ : std_logic;
SIGNAL \divFreq|Add1~54_combout\ : std_logic;
SIGNAL \divFreq|contagem20~3_combout\ : std_logic;
SIGNAL \divFreq|Equal1~2_combout\ : std_logic;
SIGNAL \divFreq|Add1~12_combout\ : std_logic;
SIGNAL \divFreq|Add1~16_combout\ : std_logic;
SIGNAL \divFreq|Equal1~1_combout\ : std_logic;
SIGNAL \divFreq|Equal1~0_combout\ : std_logic;
SIGNAL \divFreq|Equal1~8_combout\ : std_logic;
SIGNAL \divFreq|estado[1]~0_combout\ : std_logic;
SIGNAL \r~0_combout\ : std_logic;
SIGNAL \divFreq|Add3~1_cout\ : std_logic;
SIGNAL \divFreq|Add3~3_cout\ : std_logic;
SIGNAL \divFreq|Add3~5_cout\ : std_logic;
SIGNAL \divFreq|Add3~7_cout\ : std_logic;
SIGNAL \divFreq|Add3~9_cout\ : std_logic;
SIGNAL \divFreq|Add3~11_cout\ : std_logic;
SIGNAL \divFreq|Add3~12_combout\ : std_logic;
SIGNAL \divFreq|contagem10~3_combout\ : std_logic;
SIGNAL \divFreq|Add3~13\ : std_logic;
SIGNAL \divFreq|Add3~15\ : std_logic;
SIGNAL \divFreq|Add3~16_combout\ : std_logic;
SIGNAL \divFreq|contagem10~12_combout\ : std_logic;
SIGNAL \divFreq|Add3~17\ : std_logic;
SIGNAL \divFreq|Add3~19\ : std_logic;
SIGNAL \divFreq|Add3~20_combout\ : std_logic;
SIGNAL \divFreq|Add3~21\ : std_logic;
SIGNAL \divFreq|Add3~22_combout\ : std_logic;
SIGNAL \divFreq|contagem10~11_combout\ : std_logic;
SIGNAL \divFreq|Add3~23\ : std_logic;
SIGNAL \divFreq|Add3~24_combout\ : std_logic;
SIGNAL \divFreq|contagem10~10_combout\ : std_logic;
SIGNAL \divFreq|Add3~25\ : std_logic;
SIGNAL \divFreq|Add3~26_combout\ : std_logic;
SIGNAL \divFreq|Add3~27\ : std_logic;
SIGNAL \divFreq|Add3~29\ : std_logic;
SIGNAL \divFreq|Add3~30_combout\ : std_logic;
SIGNAL \divFreq|Add3~31\ : std_logic;
SIGNAL \divFreq|Add3~33\ : std_logic;
SIGNAL \divFreq|Add3~34_combout\ : std_logic;
SIGNAL \divFreq|contagem10~7_combout\ : std_logic;
SIGNAL \divFreq|Add3~35\ : std_logic;
SIGNAL \divFreq|Add3~37\ : std_logic;
SIGNAL \divFreq|Add3~39\ : std_logic;
SIGNAL \divFreq|Add3~40_combout\ : std_logic;
SIGNAL \divFreq|contagem10~6_combout\ : std_logic;
SIGNAL \divFreq|Add3~41\ : std_logic;
SIGNAL \divFreq|Add3~42_combout\ : std_logic;
SIGNAL \divFreq|contagem10~5_combout\ : std_logic;
SIGNAL \divFreq|Add3~43\ : std_logic;
SIGNAL \divFreq|Add3~45\ : std_logic;
SIGNAL \divFreq|Add3~47\ : std_logic;
SIGNAL \divFreq|Add3~48_combout\ : std_logic;
SIGNAL \divFreq|contagem10~2_combout\ : std_logic;
SIGNAL \divFreq|Add3~49\ : std_logic;
SIGNAL \divFreq|Add3~50_combout\ : std_logic;
SIGNAL \divFreq|contagem10~1_combout\ : std_logic;
SIGNAL \divFreq|Add3~46_combout\ : std_logic;
SIGNAL \divFreq|Equal3~0_combout\ : std_logic;
SIGNAL \divFreq|Equal3~6_combout\ : std_logic;
SIGNAL \divFreq|estado[3]~1_combout\ : std_logic;
SIGNAL \r~1_combout\ : std_logic;
SIGNAL \y~2_combout\ : std_logic;
SIGNAL \divFreq|Add2~1_cout\ : std_logic;
SIGNAL \divFreq|Add2~3_cout\ : std_logic;
SIGNAL \divFreq|Add2~5_cout\ : std_logic;
SIGNAL \divFreq|Add2~7_cout\ : std_logic;
SIGNAL \divFreq|Add2~9_cout\ : std_logic;
SIGNAL \divFreq|Add2~11_cout\ : std_logic;
SIGNAL \divFreq|Add2~12_combout\ : std_logic;
SIGNAL \divFreq|contagem30~0_combout\ : std_logic;
SIGNAL \divFreq|Add2~13\ : std_logic;
SIGNAL \divFreq|Add2~14_combout\ : std_logic;
SIGNAL \divFreq|contagem30~1_combout\ : std_logic;
SIGNAL \divFreq|Add2~15\ : std_logic;
SIGNAL \divFreq|Add2~16_combout\ : std_logic;
SIGNAL \divFreq|contagem30~2_combout\ : std_logic;
SIGNAL \divFreq|Equal2~0_combout\ : std_logic;
SIGNAL \divFreq|Add2~17\ : std_logic;
SIGNAL \divFreq|Add2~19\ : std_logic;
SIGNAL \divFreq|Add2~21\ : std_logic;
SIGNAL \divFreq|Add2~22_combout\ : std_logic;
SIGNAL \divFreq|contagem30~6_combout\ : std_logic;
SIGNAL \divFreq|Add2~23\ : std_logic;
SIGNAL \divFreq|Add2~24_combout\ : std_logic;
SIGNAL \divFreq|Add2~25\ : std_logic;
SIGNAL \divFreq|Add2~26_combout\ : std_logic;
SIGNAL \divFreq|Add2~27\ : std_logic;
SIGNAL \divFreq|Add2~28_combout\ : std_logic;
SIGNAL \divFreq|Add2~29\ : std_logic;
SIGNAL \divFreq|Add2~30_combout\ : std_logic;
SIGNAL \divFreq|Add2~31\ : std_logic;
SIGNAL \divFreq|Add2~32_combout\ : std_logic;
SIGNAL \divFreq|Add2~33\ : std_logic;
SIGNAL \divFreq|Add2~34_combout\ : std_logic;
SIGNAL \divFreq|contagem30~7_combout\ : std_logic;
SIGNAL \divFreq|Add2~35\ : std_logic;
SIGNAL \divFreq|Add2~36_combout\ : std_logic;
SIGNAL \divFreq|Add2~37\ : std_logic;
SIGNAL \divFreq|Add2~38_combout\ : std_logic;
SIGNAL \divFreq|contagem30~8_combout\ : std_logic;
SIGNAL \divFreq|Add2~39\ : std_logic;
SIGNAL \divFreq|Add2~41\ : std_logic;
SIGNAL \divFreq|Add2~42_combout\ : std_logic;
SIGNAL \divFreq|Add2~43\ : std_logic;
SIGNAL \divFreq|Add2~44_combout\ : std_logic;
SIGNAL \divFreq|contagem30~10_combout\ : std_logic;
SIGNAL \divFreq|Add2~45\ : std_logic;
SIGNAL \divFreq|Add2~46_combout\ : std_logic;
SIGNAL \divFreq|Add2~47\ : std_logic;
SIGNAL \divFreq|Add2~49\ : std_logic;
SIGNAL \divFreq|Add2~50_combout\ : std_logic;
SIGNAL \divFreq|contagem30~11_combout\ : std_logic;
SIGNAL \divFreq|Add2~51\ : std_logic;
SIGNAL \divFreq|Add2~53\ : std_logic;
SIGNAL \divFreq|Add2~54_combout\ : std_logic;
SIGNAL \divFreq|Add2~55\ : std_logic;
SIGNAL \divFreq|Add2~56_combout\ : std_logic;
SIGNAL \divFreq|contagem30~5_combout\ : std_logic;
SIGNAL \divFreq|Equal2~3_combout\ : std_logic;
SIGNAL \divFreq|Add2~20_combout\ : std_logic;
SIGNAL \divFreq|Equal2~1_combout\ : std_logic;
SIGNAL \divFreq|Add2~48_combout\ : std_logic;
SIGNAL \divFreq|Equal2~4_combout\ : std_logic;
SIGNAL \divFreq|Equal2~5_combout\ : std_logic;
SIGNAL \divFreq|Equal2~6_combout\ : std_logic;
SIGNAL \divFreq|estado[2]~4_combout\ : std_logic;
SIGNAL \g~2_combout\ : std_logic;
SIGNAL \g~4_combout\ : std_logic;
SIGNAL \r~2_combout\ : std_logic;
SIGNAL \g~3_combout\ : std_logic;
SIGNAL \r~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \divFreq|Add4~1_cout\ : std_logic;
SIGNAL \divFreq|Add4~3_cout\ : std_logic;
SIGNAL \divFreq|Add4~5_cout\ : std_logic;
SIGNAL \divFreq|Add4~7_cout\ : std_logic;
SIGNAL \divFreq|Add4~9_cout\ : std_logic;
SIGNAL \divFreq|Add4~10_combout\ : std_logic;
SIGNAL \divFreq|contagem3~8_combout\ : std_logic;
SIGNAL \divFreq|Add4~11\ : std_logic;
SIGNAL \divFreq|Add4~12_combout\ : std_logic;
SIGNAL \divFreq|contagem3~9_combout\ : std_logic;
SIGNAL \divFreq|Add4~13\ : std_logic;
SIGNAL \divFreq|Add4~15\ : std_logic;
SIGNAL \divFreq|Add4~16_combout\ : std_logic;
SIGNAL \divFreq|Add4~17\ : std_logic;
SIGNAL \divFreq|Add4~19\ : std_logic;
SIGNAL \divFreq|Add4~21\ : std_logic;
SIGNAL \divFreq|Add4~22_combout\ : std_logic;
SIGNAL \divFreq|Add4~23\ : std_logic;
SIGNAL \divFreq|Add4~24_combout\ : std_logic;
SIGNAL \divFreq|contagem3~6_combout\ : std_logic;
SIGNAL \divFreq|Add4~25\ : std_logic;
SIGNAL \divFreq|Add4~27\ : std_logic;
SIGNAL \divFreq|Add4~28_combout\ : std_logic;
SIGNAL \divFreq|Add4~29\ : std_logic;
SIGNAL \divFreq|Add4~30_combout\ : std_logic;
SIGNAL \divFreq|Add4~31\ : std_logic;
SIGNAL \divFreq|Add4~33\ : std_logic;
SIGNAL \divFreq|Add4~34_combout\ : std_logic;
SIGNAL \divFreq|Add4~35\ : std_logic;
SIGNAL \divFreq|Add4~36_combout\ : std_logic;
SIGNAL \divFreq|contagem3~4_combout\ : std_logic;
SIGNAL \divFreq|Add4~37\ : std_logic;
SIGNAL \divFreq|Add4~38_combout\ : std_logic;
SIGNAL \divFreq|contagem3~3_combout\ : std_logic;
SIGNAL \divFreq|Add4~39\ : std_logic;
SIGNAL \divFreq|Add4~41\ : std_logic;
SIGNAL \divFreq|Add4~42_combout\ : std_logic;
SIGNAL \divFreq|contagem3~1_combout\ : std_logic;
SIGNAL \divFreq|Add4~43\ : std_logic;
SIGNAL \divFreq|Add4~44_combout\ : std_logic;
SIGNAL \divFreq|Add4~45\ : std_logic;
SIGNAL \divFreq|Add4~46_combout\ : std_logic;
SIGNAL \divFreq|Add4~47\ : std_logic;
SIGNAL \divFreq|Add4~48_combout\ : std_logic;
SIGNAL \divFreq|Add4~49\ : std_logic;
SIGNAL \divFreq|Add4~50_combout\ : std_logic;
SIGNAL \divFreq|contagem3~0_combout\ : std_logic;
SIGNAL \divFreq|Equal4~0_combout\ : std_logic;
SIGNAL \divFreq|Add4~32_combout\ : std_logic;
SIGNAL \divFreq|Equal4~2_combout\ : std_logic;
SIGNAL \divFreq|Add4~14_combout\ : std_logic;
SIGNAL \divFreq|Equal4~4_combout\ : std_logic;
SIGNAL \divFreq|Equal4~5_combout\ : std_logic;
SIGNAL \divFreq|Equal4~6_combout\ : std_logic;
SIGNAL \divFreq|estado[4]~3_combout\ : std_logic;
SIGNAL \divFreq|estado\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \divFreq|contagem30\ : std_logic_vector(29 DOWNTO 0);
SIGNAL \divFreq|contagem3\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \divFreq|contagem20\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \divFreq|contagem10\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \divFreq|contagem1\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk <= clk;
r <= ww_r;
g <= ww_g;
y <= ww_y;
ww_A <= A;
ww_B <= B;
ww_C <= C;
clock20 <= ww_clock20;
clock10 <= ww_clock10;
clock30 <= ww_clock30;
clock3 <= ww_clock3;
clock1 <= ww_clock1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X24_Y31_N10
\divFreq|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~2_combout\ = (\divFreq|contagem1\(1) & (!\divFreq|Add0~1\)) # (!\divFreq|contagem1\(1) & ((\divFreq|Add0~1\) # (GND)))
-- \divFreq|Add0~3\ = CARRY((!\divFreq|Add0~1\) # (!\divFreq|contagem1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datad => VCC,
	cin => \divFreq|Add0~1\,
	combout => \divFreq|Add0~2_combout\,
	cout => \divFreq|Add0~3\);

-- Location: LCCOMB_X23_Y29_N24
\divFreq|Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~20_combout\ = (\divFreq|contagem20\(11) & (\divFreq|Add1~19\ $ (GND))) # (!\divFreq|contagem20\(11) & (!\divFreq|Add1~19\ & VCC))
-- \divFreq|Add1~21\ = CARRY((\divFreq|contagem20\(11) & !\divFreq|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(11),
	datad => VCC,
	cin => \divFreq|Add1~19\,
	combout => \divFreq|Add1~20_combout\,
	cout => \divFreq|Add1~21\);

-- Location: LCCOMB_X23_Y29_N28
\divFreq|Add1~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~24_combout\ = (\divFreq|contagem20\(13) & (\divFreq|Add1~23\ $ (GND))) # (!\divFreq|contagem20\(13) & (!\divFreq|Add1~23\ & VCC))
-- \divFreq|Add1~25\ = CARRY((\divFreq|contagem20\(13) & !\divFreq|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(13),
	datad => VCC,
	cin => \divFreq|Add1~23\,
	combout => \divFreq|Add1~24_combout\,
	cout => \divFreq|Add1~25\);

-- Location: LCCOMB_X23_Y28_N6
\divFreq|Add1~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~34_combout\ = (\divFreq|contagem20\(18) & (!\divFreq|Add1~33\)) # (!\divFreq|contagem20\(18) & ((\divFreq|Add1~33\) # (GND)))
-- \divFreq|Add1~35\ = CARRY((!\divFreq|Add1~33\) # (!\divFreq|contagem20\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(18),
	datad => VCC,
	cin => \divFreq|Add1~33\,
	combout => \divFreq|Add1~34_combout\,
	cout => \divFreq|Add1~35\);

-- Location: LCCOMB_X23_Y28_N10
\divFreq|Add1~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~38_combout\ = (\divFreq|contagem20\(20) & (!\divFreq|Add1~37\)) # (!\divFreq|contagem20\(20) & ((\divFreq|Add1~37\) # (GND)))
-- \divFreq|Add1~39\ = CARRY((!\divFreq|Add1~37\) # (!\divFreq|contagem20\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(20),
	datad => VCC,
	cin => \divFreq|Add1~37\,
	combout => \divFreq|Add1~38_combout\,
	cout => \divFreq|Add1~39\);

-- Location: LCCOMB_X23_Y28_N12
\divFreq|Add1~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~40_combout\ = (\divFreq|contagem20\(21) & (\divFreq|Add1~39\ $ (GND))) # (!\divFreq|contagem20\(21) & (!\divFreq|Add1~39\ & VCC))
-- \divFreq|Add1~41\ = CARRY((\divFreq|contagem20\(21) & !\divFreq|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(21),
	datad => VCC,
	cin => \divFreq|Add1~39\,
	combout => \divFreq|Add1~40_combout\,
	cout => \divFreq|Add1~41\);

-- Location: LCCOMB_X23_Y28_N20
\divFreq|Add1~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~48_combout\ = (\divFreq|contagem20\(25) & (\divFreq|Add1~47\ $ (GND))) # (!\divFreq|contagem20\(25) & (!\divFreq|Add1~47\ & VCC))
-- \divFreq|Add1~49\ = CARRY((\divFreq|contagem20\(25) & !\divFreq|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(25),
	datad => VCC,
	cin => \divFreq|Add1~47\,
	combout => \divFreq|Add1~48_combout\,
	cout => \divFreq|Add1~49\);

-- Location: LCCOMB_X24_Y33_N20
\divFreq|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~14_combout\ = (\divFreq|contagem10\(8) & (!\divFreq|Add3~13\)) # (!\divFreq|contagem10\(8) & ((\divFreq|Add3~13\) # (GND)))
-- \divFreq|Add3~15\ = CARRY((!\divFreq|Add3~13\) # (!\divFreq|contagem10\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(8),
	datad => VCC,
	cin => \divFreq|Add3~13\,
	combout => \divFreq|Add3~14_combout\,
	cout => \divFreq|Add3~15\);

-- Location: LCCOMB_X24_Y33_N24
\divFreq|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~18_combout\ = (\divFreq|contagem10\(10) & (!\divFreq|Add3~17\)) # (!\divFreq|contagem10\(10) & ((\divFreq|Add3~17\) # (GND)))
-- \divFreq|Add3~19\ = CARRY((!\divFreq|Add3~17\) # (!\divFreq|contagem10\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(10),
	datad => VCC,
	cin => \divFreq|Add3~17\,
	combout => \divFreq|Add3~18_combout\,
	cout => \divFreq|Add3~19\);

-- Location: LCCOMB_X24_Y32_N2
\divFreq|Add3~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~28_combout\ = (\divFreq|contagem10\(15) & (\divFreq|Add3~27\ $ (GND))) # (!\divFreq|contagem10\(15) & (!\divFreq|Add3~27\ & VCC))
-- \divFreq|Add3~29\ = CARRY((\divFreq|contagem10\(15) & !\divFreq|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(15),
	datad => VCC,
	cin => \divFreq|Add3~27\,
	combout => \divFreq|Add3~28_combout\,
	cout => \divFreq|Add3~29\);

-- Location: LCCOMB_X24_Y32_N6
\divFreq|Add3~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~32_combout\ = (\divFreq|contagem10\(17) & (\divFreq|Add3~31\ $ (GND))) # (!\divFreq|contagem10\(17) & (!\divFreq|Add3~31\ & VCC))
-- \divFreq|Add3~33\ = CARRY((\divFreq|contagem10\(17) & !\divFreq|Add3~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(17),
	datad => VCC,
	cin => \divFreq|Add3~31\,
	combout => \divFreq|Add3~32_combout\,
	cout => \divFreq|Add3~33\);

-- Location: LCCOMB_X24_Y32_N10
\divFreq|Add3~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~36_combout\ = (\divFreq|contagem10\(19) & (\divFreq|Add3~35\ $ (GND))) # (!\divFreq|contagem10\(19) & (!\divFreq|Add3~35\ & VCC))
-- \divFreq|Add3~37\ = CARRY((\divFreq|contagem10\(19) & !\divFreq|Add3~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(19),
	datad => VCC,
	cin => \divFreq|Add3~35\,
	combout => \divFreq|Add3~36_combout\,
	cout => \divFreq|Add3~37\);

-- Location: LCCOMB_X24_Y32_N12
\divFreq|Add3~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~38_combout\ = (\divFreq|contagem10\(20) & (!\divFreq|Add3~37\)) # (!\divFreq|contagem10\(20) & ((\divFreq|Add3~37\) # (GND)))
-- \divFreq|Add3~39\ = CARRY((!\divFreq|Add3~37\) # (!\divFreq|contagem10\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(20),
	datad => VCC,
	cin => \divFreq|Add3~37\,
	combout => \divFreq|Add3~38_combout\,
	cout => \divFreq|Add3~39\);

-- Location: LCCOMB_X24_Y32_N18
\divFreq|Add3~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~44_combout\ = (\divFreq|contagem10\(23) & (\divFreq|Add3~43\ $ (GND))) # (!\divFreq|contagem10\(23) & (!\divFreq|Add3~43\ & VCC))
-- \divFreq|Add3~45\ = CARRY((\divFreq|contagem10\(23) & !\divFreq|Add3~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(23),
	datad => VCC,
	cin => \divFreq|Add3~43\,
	combout => \divFreq|Add3~44_combout\,
	cout => \divFreq|Add3~45\);

-- Location: LCCOMB_X24_Y32_N24
\divFreq|Add3~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~50_combout\ = (\divFreq|contagem10\(26) & (!\divFreq|Add3~49\)) # (!\divFreq|contagem10\(26) & ((\divFreq|Add3~49\) # (GND)))
-- \divFreq|Add3~51\ = CARRY((!\divFreq|Add3~49\) # (!\divFreq|contagem10\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(26),
	datad => VCC,
	cin => \divFreq|Add3~49\,
	combout => \divFreq|Add3~50_combout\,
	cout => \divFreq|Add3~51\);

-- Location: LCCOMB_X24_Y32_N26
\divFreq|Add3~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~52_combout\ = \divFreq|Add3~51\ $ (!\divFreq|contagem10\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divFreq|contagem10\(27),
	cin => \divFreq|Add3~51\,
	combout => \divFreq|Add3~52_combout\);

-- Location: LCCOMB_X24_Y31_N24
\divFreq|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~16_combout\ = (\divFreq|contagem1\(8) & (\divFreq|Add0~15\ $ (GND))) # (!\divFreq|contagem1\(8) & (!\divFreq|Add0~15\ & VCC))
-- \divFreq|Add0~17\ = CARRY((\divFreq|contagem1\(8) & !\divFreq|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(8),
	datad => VCC,
	cin => \divFreq|Add0~15\,
	combout => \divFreq|Add0~16_combout\,
	cout => \divFreq|Add0~17\);

-- Location: LCCOMB_X24_Y30_N10
\divFreq|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~34_combout\ = (\divFreq|contagem1\(17) & (!\divFreq|Add0~33\)) # (!\divFreq|contagem1\(17) & ((\divFreq|Add0~33\) # (GND)))
-- \divFreq|Add0~35\ = CARRY((!\divFreq|Add0~33\) # (!\divFreq|contagem1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(17),
	datad => VCC,
	cin => \divFreq|Add0~33\,
	combout => \divFreq|Add0~34_combout\,
	cout => \divFreq|Add0~35\);

-- Location: LCCOMB_X24_Y30_N12
\divFreq|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~36_combout\ = (\divFreq|contagem1\(18) & (\divFreq|Add0~35\ $ (GND))) # (!\divFreq|contagem1\(18) & (!\divFreq|Add0~35\ & VCC))
-- \divFreq|Add0~37\ = CARRY((\divFreq|contagem1\(18) & !\divFreq|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(18),
	datad => VCC,
	cin => \divFreq|Add0~35\,
	combout => \divFreq|Add0~36_combout\,
	cout => \divFreq|Add0~37\);

-- Location: LCCOMB_X24_Y30_N22
\divFreq|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~46_combout\ = (\divFreq|contagem1\(23) & (!\divFreq|Add0~45\)) # (!\divFreq|contagem1\(23) & ((\divFreq|Add0~45\) # (GND)))
-- \divFreq|Add0~47\ = CARRY((!\divFreq|Add0~45\) # (!\divFreq|contagem1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(23),
	datad => VCC,
	cin => \divFreq|Add0~45\,
	combout => \divFreq|Add0~46_combout\,
	cout => \divFreq|Add0~47\);

-- Location: LCCOMB_X24_Y30_N24
\divFreq|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~48_combout\ = \divFreq|Add0~47\ $ (!\divFreq|contagem1\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divFreq|contagem1\(24),
	cin => \divFreq|Add0~47\,
	combout => \divFreq|Add0~48_combout\);

-- Location: LCCOMB_X25_Y30_N24
\divFreq|Add4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~18_combout\ = (\divFreq|contagem3\(10) & (!\divFreq|Add4~17\)) # (!\divFreq|contagem3\(10) & ((\divFreq|Add4~17\) # (GND)))
-- \divFreq|Add4~19\ = CARRY((!\divFreq|Add4~17\) # (!\divFreq|contagem3\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(10),
	datad => VCC,
	cin => \divFreq|Add4~17\,
	combout => \divFreq|Add4~18_combout\,
	cout => \divFreq|Add4~19\);

-- Location: LCCOMB_X25_Y30_N26
\divFreq|Add4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~20_combout\ = (\divFreq|contagem3\(11) & (\divFreq|Add4~19\ $ (GND))) # (!\divFreq|contagem3\(11) & (!\divFreq|Add4~19\ & VCC))
-- \divFreq|Add4~21\ = CARRY((\divFreq|contagem3\(11) & !\divFreq|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(11),
	datad => VCC,
	cin => \divFreq|Add4~19\,
	combout => \divFreq|Add4~20_combout\,
	cout => \divFreq|Add4~21\);

-- Location: LCCOMB_X25_Y29_N0
\divFreq|Add4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~26_combout\ = (\divFreq|contagem3\(14) & (!\divFreq|Add4~25\)) # (!\divFreq|contagem3\(14) & ((\divFreq|Add4~25\) # (GND)))
-- \divFreq|Add4~27\ = CARRY((!\divFreq|Add4~25\) # (!\divFreq|contagem3\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(14),
	datad => VCC,
	cin => \divFreq|Add4~25\,
	combout => \divFreq|Add4~26_combout\,
	cout => \divFreq|Add4~27\);

-- Location: LCCOMB_X25_Y29_N14
\divFreq|Add4~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~40_combout\ = (\divFreq|contagem3\(21) & (\divFreq|Add4~39\ $ (GND))) # (!\divFreq|contagem3\(21) & (!\divFreq|Add4~39\ & VCC))
-- \divFreq|Add4~41\ = CARRY((\divFreq|contagem3\(21) & !\divFreq|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(21),
	datad => VCC,
	cin => \divFreq|Add4~39\,
	combout => \divFreq|Add4~40_combout\,
	cout => \divFreq|Add4~41\);

-- Location: LCCOMB_X23_Y31_N22
\divFreq|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~18_combout\ = (\divFreq|contagem30\(10) & (!\divFreq|Add2~17\)) # (!\divFreq|contagem30\(10) & ((\divFreq|Add2~17\) # (GND)))
-- \divFreq|Add2~19\ = CARRY((!\divFreq|Add2~17\) # (!\divFreq|contagem30\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(10),
	datad => VCC,
	cin => \divFreq|Add2~17\,
	combout => \divFreq|Add2~18_combout\,
	cout => \divFreq|Add2~19\);

-- Location: LCCOMB_X23_Y30_N12
\divFreq|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~40_combout\ = (\divFreq|contagem30\(21) & (\divFreq|Add2~39\ $ (GND))) # (!\divFreq|contagem30\(21) & (!\divFreq|Add2~39\ & VCC))
-- \divFreq|Add2~41\ = CARRY((\divFreq|contagem30\(21) & !\divFreq|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(21),
	datad => VCC,
	cin => \divFreq|Add2~39\,
	combout => \divFreq|Add2~40_combout\,
	cout => \divFreq|Add2~41\);

-- Location: LCCOMB_X23_Y30_N24
\divFreq|Add2~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~52_combout\ = (\divFreq|contagem30\(27) & (\divFreq|Add2~51\ $ (GND))) # (!\divFreq|contagem30\(27) & (!\divFreq|Add2~51\ & VCC))
-- \divFreq|Add2~53\ = CARRY((\divFreq|contagem30\(27) & !\divFreq|Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(27),
	datad => VCC,
	cin => \divFreq|Add2~51\,
	combout => \divFreq|Add2~52_combout\,
	cout => \divFreq|Add2~53\);

-- Location: LCFF_X24_Y31_N11
\divFreq|contagem1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(1));

-- Location: LCFF_X24_Y29_N5
\divFreq|contagem20[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(13));

-- Location: LCFF_X23_Y29_N25
\divFreq|contagem20[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(11));

-- Location: LCCOMB_X24_Y29_N16
\divFreq|Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~3_combout\ = (\divFreq|contagem20\(14) & (!\divFreq|contagem20\(11) & (\divFreq|contagem20\(13) & !\divFreq|contagem20\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(14),
	datab => \divFreq|contagem20\(11),
	datac => \divFreq|contagem20\(13),
	datad => \divFreq|contagem20\(12),
	combout => \divFreq|Equal1~3_combout\);

-- Location: LCFF_X24_Y28_N17
\divFreq|contagem20[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(18));

-- Location: LCCOMB_X24_Y28_N2
\divFreq|Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~4_combout\ = (\divFreq|contagem20\(18) & (!\divFreq|contagem20\(17) & (!\divFreq|contagem20\(15) & \divFreq|contagem20\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(18),
	datab => \divFreq|contagem20\(17),
	datac => \divFreq|contagem20\(15),
	datad => \divFreq|contagem20\(16),
	combout => \divFreq|Equal1~4_combout\);

-- Location: LCFF_X23_Y28_N11
\divFreq|contagem20[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(20));

-- Location: LCFF_X23_Y28_N13
\divFreq|contagem20[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(21));

-- Location: LCCOMB_X24_Y28_N12
\divFreq|Equal1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~5_combout\ = (!\divFreq|contagem20\(21) & (\divFreq|contagem20\(22) & (\divFreq|contagem20\(19) & !\divFreq|contagem20\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(21),
	datab => \divFreq|contagem20\(22),
	datac => \divFreq|contagem20\(19),
	datad => \divFreq|contagem20\(20),
	combout => \divFreq|Equal1~5_combout\);

-- Location: LCFF_X23_Y28_N21
\divFreq|contagem20[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(25));

-- Location: LCCOMB_X24_Y28_N30
\divFreq|Equal1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~6_combout\ = (\divFreq|contagem20\(26) & (\divFreq|contagem20\(23) & (!\divFreq|contagem20\(25) & \divFreq|contagem20\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(26),
	datab => \divFreq|contagem20\(23),
	datac => \divFreq|contagem20\(25),
	datad => \divFreq|contagem20\(24),
	combout => \divFreq|Equal1~6_combout\);

-- Location: LCCOMB_X24_Y28_N20
\divFreq|Equal1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~7_combout\ = (\divFreq|Equal1~5_combout\ & (\divFreq|Equal1~6_combout\ & (\divFreq|Equal1~3_combout\ & \divFreq|Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~5_combout\,
	datab => \divFreq|Equal1~6_combout\,
	datac => \divFreq|Equal1~3_combout\,
	datad => \divFreq|Equal1~4_combout\,
	combout => \divFreq|Equal1~7_combout\);

-- Location: LCFF_X24_Y32_N29
\divFreq|contagem10[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(27));

-- Location: LCFF_X23_Y32_N13
\divFreq|contagem10[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(23));

-- Location: LCFF_X24_Y32_N13
\divFreq|contagem10[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(20));

-- Location: LCCOMB_X23_Y32_N2
\divFreq|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~1_combout\ = (\divFreq|contagem10\(23) & (\divFreq|contagem10\(22) & (!\divFreq|contagem10\(20) & \divFreq|contagem10\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(23),
	datab => \divFreq|contagem10\(22),
	datac => \divFreq|contagem10\(20),
	datad => \divFreq|contagem10\(21),
	combout => \divFreq|Equal3~1_combout\);

-- Location: LCFF_X23_Y32_N31
\divFreq|contagem10[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(17));

-- Location: LCFF_X24_Y32_N11
\divFreq|contagem10[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(19));

-- Location: LCCOMB_X23_Y32_N20
\divFreq|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~2_combout\ = (\divFreq|contagem10\(18) & (\divFreq|contagem10\(17) & (!\divFreq|contagem10\(19) & !\divFreq|contagem10\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(18),
	datab => \divFreq|contagem10\(17),
	datac => \divFreq|contagem10\(19),
	datad => \divFreq|contagem10\(16),
	combout => \divFreq|Equal3~2_combout\);

-- Location: LCFF_X23_Y32_N15
\divFreq|contagem10[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(15));

-- Location: LCCOMB_X23_Y32_N8
\divFreq|Equal3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~3_combout\ = (\divFreq|contagem10\(15) & (!\divFreq|contagem10\(14) & (\divFreq|contagem10\(13) & \divFreq|contagem10\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(15),
	datab => \divFreq|contagem10\(14),
	datac => \divFreq|contagem10\(13),
	datad => \divFreq|contagem10\(12),
	combout => \divFreq|Equal3~3_combout\);

-- Location: LCFF_X24_Y33_N25
\divFreq|contagem10[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(10));

-- Location: LCFF_X24_Y33_N21
\divFreq|contagem10[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(8));

-- Location: LCCOMB_X23_Y33_N2
\divFreq|Equal3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~4_combout\ = (\divFreq|contagem10\(9) & (!\divFreq|contagem10\(10) & (!\divFreq|contagem10\(11) & !\divFreq|contagem10\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(9),
	datab => \divFreq|contagem10\(10),
	datac => \divFreq|contagem10\(11),
	datad => \divFreq|contagem10\(8),
	combout => \divFreq|Equal3~4_combout\);

-- Location: LCCOMB_X23_Y32_N6
\divFreq|Equal3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~5_combout\ = (\divFreq|Equal3~2_combout\ & (\divFreq|Equal3~1_combout\ & (\divFreq|Equal3~3_combout\ & \divFreq|Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal3~2_combout\,
	datab => \divFreq|Equal3~1_combout\,
	datac => \divFreq|Equal3~3_combout\,
	datad => \divFreq|Equal3~4_combout\,
	combout => \divFreq|Equal3~5_combout\);

-- Location: LCFF_X24_Y31_N25
\divFreq|contagem1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(8));

-- Location: LCFF_X24_Y30_N11
\divFreq|contagem1[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(17));

-- Location: LCFF_X25_Y31_N11
\divFreq|contagem1[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(24));

-- Location: LCFF_X24_Y29_N31
\divFreq|contagem3[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(21));

-- Location: LCCOMB_X24_Y29_N12
\divFreq|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~1_combout\ = (\divFreq|contagem3\(20) & (\divFreq|contagem3\(21) & (\divFreq|contagem3\(22) & \divFreq|contagem3\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(20),
	datab => \divFreq|contagem3\(21),
	datac => \divFreq|contagem3\(22),
	datad => \divFreq|contagem3\(19),
	combout => \divFreq|Equal4~1_combout\);

-- Location: LCFF_X24_Y29_N21
\divFreq|contagem3[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(14));

-- Location: LCFF_X24_Y29_N1
\divFreq|contagem3[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(11));

-- Location: LCCOMB_X24_Y29_N6
\divFreq|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~3_combout\ = (\divFreq|contagem3\(14) & (\divFreq|contagem3\(13) & (!\divFreq|contagem3\(12) & \divFreq|contagem3\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(14),
	datab => \divFreq|contagem3\(13),
	datac => \divFreq|contagem3\(12),
	datad => \divFreq|contagem3\(11),
	combout => \divFreq|Equal4~3_combout\);

-- Location: LCFF_X25_Y30_N25
\divFreq|contagem3[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(10));

-- Location: LCFF_X22_Y30_N11
\divFreq|contagem30[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(10));

-- Location: LCFF_X22_Y30_N13
\divFreq|contagem30[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(27));

-- Location: LCCOMB_X22_Y30_N6
\divFreq|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~2_combout\ = (!\divFreq|contagem30\(15) & (\divFreq|contagem30\(18) & (!\divFreq|contagem30\(16) & !\divFreq|contagem30\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(15),
	datab => \divFreq|contagem30\(18),
	datac => \divFreq|contagem30\(16),
	datad => \divFreq|contagem30\(17),
	combout => \divFreq|Equal2~2_combout\);

-- Location: LCFF_X22_Y30_N31
\divFreq|contagem30[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(21));

-- Location: LCCOMB_X24_Y29_N4
\divFreq|contagem20~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~4_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~24_combout\,
	combout => \divFreq|contagem20~4_combout\);

-- Location: LCCOMB_X24_Y28_N16
\divFreq|contagem20~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~7_combout\ = (\divFreq|Add1~34_combout\ & !\divFreq|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add1~34_combout\,
	datad => \divFreq|Equal1~8_combout\,
	combout => \divFreq|contagem20~7_combout\);

-- Location: LCCOMB_X24_Y32_N28
\divFreq|contagem10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~0_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~52_combout\,
	combout => \divFreq|contagem10~0_combout\);

-- Location: LCCOMB_X23_Y32_N12
\divFreq|contagem10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~4_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~44_combout\,
	combout => \divFreq|contagem10~4_combout\);

-- Location: LCCOMB_X23_Y32_N30
\divFreq|contagem10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~8_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~32_combout\,
	combout => \divFreq|contagem10~8_combout\);

-- Location: LCCOMB_X23_Y32_N14
\divFreq|contagem10~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~9_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~28_combout\,
	combout => \divFreq|contagem10~9_combout\);

-- Location: LCCOMB_X25_Y31_N10
\divFreq|contagem1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~11_combout\ = (\divFreq|Add0~48_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Equal0~4_combout\,
	datad => \divFreq|Add0~48_combout\,
	combout => \divFreq|contagem1~11_combout\);

-- Location: LCCOMB_X24_Y29_N30
\divFreq|contagem3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~2_combout\ = (\divFreq|Add4~40_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add4~40_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~2_combout\);

-- Location: LCCOMB_X24_Y29_N20
\divFreq|contagem3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~5_combout\ = (\divFreq|Add4~26_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add4~26_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~5_combout\);

-- Location: LCCOMB_X24_Y29_N0
\divFreq|contagem3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~7_combout\ = (!\divFreq|Equal4~6_combout\ & \divFreq|Add4~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~6_combout\,
	datad => \divFreq|Add4~20_combout\,
	combout => \divFreq|contagem3~7_combout\);

-- Location: LCCOMB_X22_Y30_N10
\divFreq|contagem30~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~3_combout\ = (\divFreq|Add2~18_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~18_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~3_combout\);

-- Location: LCCOMB_X22_Y30_N12
\divFreq|contagem30~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~4_combout\ = (\divFreq|Add2~52_combout\ & (((!\divFreq|Equal2~6_combout\) # (!\divFreq|Equal1~0_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal1~0_combout\,
	datac => \divFreq|Equal2~6_combout\,
	datad => \divFreq|Add2~52_combout\,
	combout => \divFreq|contagem30~4_combout\);

-- Location: LCCOMB_X22_Y30_N30
\divFreq|contagem30~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~9_combout\ = (\divFreq|Add2~40_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~40_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~9_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : cycloneii_io
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
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B~I\ : cycloneii_io
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
	padio => ww_B,
	combout => \B~combout\);

-- Location: LCCOMB_X22_Y33_N26
\y~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~0_combout\ = (\divFreq|estado\(4) & ((\A~combout\) # (\B~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|estado\(4),
	datac => \A~combout\,
	datad => \B~combout\,
	combout => \y~0_combout\);

-- Location: LCCOMB_X24_Y31_N8
\divFreq|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~0_combout\ = \divFreq|contagem1\(0) $ (VCC)
-- \divFreq|Add0~1\ = CARRY(\divFreq|contagem1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(0),
	datad => VCC,
	combout => \divFreq|Add0~0_combout\,
	cout => \divFreq|Add0~1\);

-- Location: LCFF_X24_Y31_N9
\divFreq|contagem1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(0));

-- Location: LCCOMB_X24_Y31_N12
\divFreq|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~4_combout\ = (\divFreq|contagem1\(2) & (\divFreq|Add0~3\ $ (GND))) # (!\divFreq|contagem1\(2) & (!\divFreq|Add0~3\ & VCC))
-- \divFreq|Add0~5\ = CARRY((\divFreq|contagem1\(2) & !\divFreq|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(2),
	datad => VCC,
	cin => \divFreq|Add0~3\,
	combout => \divFreq|Add0~4_combout\,
	cout => \divFreq|Add0~5\);

-- Location: LCCOMB_X24_Y31_N14
\divFreq|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~6_combout\ = (\divFreq|contagem1\(3) & (!\divFreq|Add0~5\)) # (!\divFreq|contagem1\(3) & ((\divFreq|Add0~5\) # (GND)))
-- \divFreq|Add0~7\ = CARRY((!\divFreq|Add0~5\) # (!\divFreq|contagem1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(3),
	datad => VCC,
	cin => \divFreq|Add0~5\,
	combout => \divFreq|Add0~6_combout\,
	cout => \divFreq|Add0~7\);

-- Location: LCFF_X24_Y31_N15
\divFreq|contagem1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(3));

-- Location: LCCOMB_X24_Y31_N16
\divFreq|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~8_combout\ = (\divFreq|contagem1\(4) & (\divFreq|Add0~7\ $ (GND))) # (!\divFreq|contagem1\(4) & (!\divFreq|Add0~7\ & VCC))
-- \divFreq|Add0~9\ = CARRY((\divFreq|contagem1\(4) & !\divFreq|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(4),
	datad => VCC,
	cin => \divFreq|Add0~7\,
	combout => \divFreq|Add0~8_combout\,
	cout => \divFreq|Add0~9\);

-- Location: LCCOMB_X24_Y31_N18
\divFreq|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~10_combout\ = (\divFreq|contagem1\(5) & (!\divFreq|Add0~9\)) # (!\divFreq|contagem1\(5) & ((\divFreq|Add0~9\) # (GND)))
-- \divFreq|Add0~11\ = CARRY((!\divFreq|Add0~9\) # (!\divFreq|contagem1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datad => VCC,
	cin => \divFreq|Add0~9\,
	combout => \divFreq|Add0~10_combout\,
	cout => \divFreq|Add0~11\);

-- Location: LCFF_X24_Y31_N19
\divFreq|contagem1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(5));

-- Location: LCCOMB_X24_Y31_N20
\divFreq|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~12_combout\ = (\divFreq|contagem1\(6) & (\divFreq|Add0~11\ $ (GND))) # (!\divFreq|contagem1\(6) & (!\divFreq|Add0~11\ & VCC))
-- \divFreq|Add0~13\ = CARRY((\divFreq|contagem1\(6) & !\divFreq|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(6),
	datad => VCC,
	cin => \divFreq|Add0~11\,
	combout => \divFreq|Add0~12_combout\,
	cout => \divFreq|Add0~13\);

-- Location: LCCOMB_X25_Y31_N14
\divFreq|contagem1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~0_combout\ = (\divFreq|Add0~12_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~12_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~0_combout\);

-- Location: LCFF_X25_Y31_N15
\divFreq|contagem1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(6));

-- Location: LCCOMB_X24_Y31_N22
\divFreq|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~14_combout\ = (\divFreq|contagem1\(7) & (!\divFreq|Add0~13\)) # (!\divFreq|contagem1\(7) & ((\divFreq|Add0~13\) # (GND)))
-- \divFreq|Add0~15\ = CARRY((!\divFreq|Add0~13\) # (!\divFreq|contagem1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(7),
	datad => VCC,
	cin => \divFreq|Add0~13\,
	combout => \divFreq|Add0~14_combout\,
	cout => \divFreq|Add0~15\);

-- Location: LCFF_X24_Y31_N23
\divFreq|contagem1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(7));

-- Location: LCCOMB_X24_Y31_N26
\divFreq|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~18_combout\ = (\divFreq|contagem1\(9) & (!\divFreq|Add0~17\)) # (!\divFreq|contagem1\(9) & ((\divFreq|Add0~17\) # (GND)))
-- \divFreq|Add0~19\ = CARRY((!\divFreq|Add0~17\) # (!\divFreq|contagem1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(9),
	datad => VCC,
	cin => \divFreq|Add0~17\,
	combout => \divFreq|Add0~18_combout\,
	cout => \divFreq|Add0~19\);

-- Location: LCFF_X24_Y31_N27
\divFreq|contagem1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(9));

-- Location: LCCOMB_X24_Y31_N28
\divFreq|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~20_combout\ = (\divFreq|contagem1\(10) & (\divFreq|Add0~19\ $ (GND))) # (!\divFreq|contagem1\(10) & (!\divFreq|Add0~19\ & VCC))
-- \divFreq|Add0~21\ = CARRY((\divFreq|contagem1\(10) & !\divFreq|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(10),
	datad => VCC,
	cin => \divFreq|Add0~19\,
	combout => \divFreq|Add0~20_combout\,
	cout => \divFreq|Add0~21\);

-- Location: LCFF_X24_Y31_N29
\divFreq|contagem1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(10));

-- Location: LCCOMB_X24_Y31_N30
\divFreq|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~22_combout\ = (\divFreq|contagem1\(11) & (!\divFreq|Add0~21\)) # (!\divFreq|contagem1\(11) & ((\divFreq|Add0~21\) # (GND)))
-- \divFreq|Add0~23\ = CARRY((!\divFreq|Add0~21\) # (!\divFreq|contagem1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(11),
	datad => VCC,
	cin => \divFreq|Add0~21\,
	combout => \divFreq|Add0~22_combout\,
	cout => \divFreq|Add0~23\);

-- Location: LCCOMB_X25_Y31_N30
\divFreq|contagem1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~1_combout\ = (\divFreq|Add0~22_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~22_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~1_combout\);

-- Location: LCFF_X25_Y31_N31
\divFreq|contagem1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(11));

-- Location: LCCOMB_X24_Y30_N0
\divFreq|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~24_combout\ = (\divFreq|contagem1\(12) & (\divFreq|Add0~23\ $ (GND))) # (!\divFreq|contagem1\(12) & (!\divFreq|Add0~23\ & VCC))
-- \divFreq|Add0~25\ = CARRY((\divFreq|contagem1\(12) & !\divFreq|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(12),
	datad => VCC,
	cin => \divFreq|Add0~23\,
	combout => \divFreq|Add0~24_combout\,
	cout => \divFreq|Add0~25\);

-- Location: LCCOMB_X25_Y31_N16
\divFreq|contagem1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~2_combout\ = (\divFreq|Add0~24_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~24_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~2_combout\);

-- Location: LCFF_X25_Y31_N17
\divFreq|contagem1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(12));

-- Location: LCCOMB_X24_Y30_N2
\divFreq|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~26_combout\ = (\divFreq|contagem1\(13) & (!\divFreq|Add0~25\)) # (!\divFreq|contagem1\(13) & ((\divFreq|Add0~25\) # (GND)))
-- \divFreq|Add0~27\ = CARRY((!\divFreq|Add0~25\) # (!\divFreq|contagem1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(13),
	datad => VCC,
	cin => \divFreq|Add0~25\,
	combout => \divFreq|Add0~26_combout\,
	cout => \divFreq|Add0~27\);

-- Location: LCCOMB_X25_Y31_N22
\divFreq|contagem1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~3_combout\ = (\divFreq|Add0~26_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~26_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~3_combout\);

-- Location: LCFF_X25_Y31_N23
\divFreq|contagem1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(13));

-- Location: LCCOMB_X25_Y31_N4
\divFreq|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~3_combout\ = (\divFreq|contagem1\(12) & (!\divFreq|contagem1\(10) & (\divFreq|contagem1\(13) & \divFreq|contagem1\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(12),
	datab => \divFreq|contagem1\(10),
	datac => \divFreq|contagem1\(13),
	datad => \divFreq|contagem1\(11),
	combout => \divFreq|Equal0~3_combout\);

-- Location: LCFF_X24_Y31_N17
\divFreq|contagem1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(4));

-- Location: LCFF_X24_Y31_N13
\divFreq|contagem1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(2));

-- Location: LCCOMB_X24_Y31_N0
\divFreq|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~0_combout\ = (!\divFreq|contagem1\(1) & (!\divFreq|contagem1\(0) & (!\divFreq|contagem1\(3) & !\divFreq|contagem1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datab => \divFreq|contagem1\(0),
	datac => \divFreq|contagem1\(3),
	datad => \divFreq|contagem1\(2),
	combout => \divFreq|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y31_N4
\divFreq|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~1_combout\ = (!\divFreq|contagem1\(5) & (!\divFreq|contagem1\(4) & \divFreq|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datac => \divFreq|contagem1\(4),
	datad => \divFreq|Equal0~0_combout\,
	combout => \divFreq|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y31_N0
\divFreq|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~2_combout\ = (!\divFreq|contagem1\(8) & (!\divFreq|contagem1\(9) & (\divFreq|contagem1\(6) & !\divFreq|contagem1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(8),
	datab => \divFreq|contagem1\(9),
	datac => \divFreq|contagem1\(6),
	datad => \divFreq|contagem1\(7),
	combout => \divFreq|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y31_N18
\divFreq|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~4_combout\ = (\divFreq|Equal0~3_combout\ & (\divFreq|Equal0~1_combout\ & \divFreq|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal0~3_combout\,
	datac => \divFreq|Equal0~1_combout\,
	datad => \divFreq|Equal0~2_combout\,
	combout => \divFreq|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y30_N4
\divFreq|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~28_combout\ = (\divFreq|contagem1\(14) & (\divFreq|Add0~27\ $ (GND))) # (!\divFreq|contagem1\(14) & (!\divFreq|Add0~27\ & VCC))
-- \divFreq|Add0~29\ = CARRY((\divFreq|contagem1\(14) & !\divFreq|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(14),
	datad => VCC,
	cin => \divFreq|Add0~27\,
	combout => \divFreq|Add0~28_combout\,
	cout => \divFreq|Add0~29\);

-- Location: LCCOMB_X24_Y30_N26
\divFreq|contagem1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~4_combout\ = (\divFreq|Add0~28_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~5_combout\)) # (!\divFreq|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~7_combout\,
	datab => \divFreq|Add0~28_combout\,
	datac => \divFreq|Equal0~5_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~4_combout\);

-- Location: LCFF_X24_Y30_N27
\divFreq|contagem1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(14));

-- Location: LCCOMB_X24_Y30_N6
\divFreq|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~30_combout\ = (\divFreq|contagem1\(15) & (!\divFreq|Add0~29\)) # (!\divFreq|contagem1\(15) & ((\divFreq|Add0~29\) # (GND)))
-- \divFreq|Add0~31\ = CARRY((!\divFreq|Add0~29\) # (!\divFreq|contagem1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(15),
	datad => VCC,
	cin => \divFreq|Add0~29\,
	combout => \divFreq|Add0~30_combout\,
	cout => \divFreq|Add0~31\);

-- Location: LCFF_X24_Y30_N7
\divFreq|contagem1[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(15));

-- Location: LCCOMB_X24_Y30_N8
\divFreq|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~32_combout\ = (\divFreq|contagem1\(16) & (\divFreq|Add0~31\ $ (GND))) # (!\divFreq|contagem1\(16) & (!\divFreq|Add0~31\ & VCC))
-- \divFreq|Add0~33\ = CARRY((\divFreq|contagem1\(16) & !\divFreq|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(16),
	datad => VCC,
	cin => \divFreq|Add0~31\,
	combout => \divFreq|Add0~32_combout\,
	cout => \divFreq|Add0~33\);

-- Location: LCCOMB_X24_Y30_N28
\divFreq|contagem1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~5_combout\ = (\divFreq|Add0~32_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~5_combout\)) # (!\divFreq|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~7_combout\,
	datab => \divFreq|Add0~32_combout\,
	datac => \divFreq|Equal0~5_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~5_combout\);

-- Location: LCFF_X24_Y30_N29
\divFreq|contagem1[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(16));

-- Location: LCCOMB_X24_Y31_N2
\divFreq|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~5_combout\ = (!\divFreq|contagem1\(17) & (!\divFreq|contagem1\(15) & (\divFreq|contagem1\(16) & \divFreq|contagem1\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(17),
	datab => \divFreq|contagem1\(15),
	datac => \divFreq|contagem1\(16),
	datad => \divFreq|contagem1\(14),
	combout => \divFreq|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y30_N30
\divFreq|contagem1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~6_combout\ = (\divFreq|Add0~36_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~5_combout\)) # (!\divFreq|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Add0~36_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Equal0~5_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~6_combout\);

-- Location: LCFF_X24_Y30_N31
\divFreq|contagem1[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(18));

-- Location: LCCOMB_X24_Y30_N14
\divFreq|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~38_combout\ = (\divFreq|contagem1\(19) & (!\divFreq|Add0~37\)) # (!\divFreq|contagem1\(19) & ((\divFreq|Add0~37\) # (GND)))
-- \divFreq|Add0~39\ = CARRY((!\divFreq|Add0~37\) # (!\divFreq|contagem1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(19),
	datad => VCC,
	cin => \divFreq|Add0~37\,
	combout => \divFreq|Add0~38_combout\,
	cout => \divFreq|Add0~39\);

-- Location: LCCOMB_X25_Y31_N12
\divFreq|contagem1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~7_combout\ = (\divFreq|Add0~38_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Equal0~4_combout\,
	datad => \divFreq|Add0~38_combout\,
	combout => \divFreq|contagem1~7_combout\);

-- Location: LCFF_X25_Y31_N13
\divFreq|contagem1[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(19));

-- Location: LCCOMB_X24_Y30_N16
\divFreq|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~40_combout\ = (\divFreq|contagem1\(20) & (\divFreq|Add0~39\ $ (GND))) # (!\divFreq|contagem1\(20) & (!\divFreq|Add0~39\ & VCC))
-- \divFreq|Add0~41\ = CARRY((\divFreq|contagem1\(20) & !\divFreq|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(20),
	datad => VCC,
	cin => \divFreq|Add0~39\,
	combout => \divFreq|Add0~40_combout\,
	cout => \divFreq|Add0~41\);

-- Location: LCCOMB_X25_Y31_N26
\divFreq|contagem1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~8_combout\ = (\divFreq|Add0~40_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Equal0~4_combout\,
	datad => \divFreq|Add0~40_combout\,
	combout => \divFreq|contagem1~8_combout\);

-- Location: LCFF_X25_Y31_N27
\divFreq|contagem1[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(20));

-- Location: LCCOMB_X24_Y30_N18
\divFreq|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~42_combout\ = (\divFreq|contagem1\(21) & (!\divFreq|Add0~41\)) # (!\divFreq|contagem1\(21) & ((\divFreq|Add0~41\) # (GND)))
-- \divFreq|Add0~43\ = CARRY((!\divFreq|Add0~41\) # (!\divFreq|contagem1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(21),
	datad => VCC,
	cin => \divFreq|Add0~41\,
	combout => \divFreq|Add0~42_combout\,
	cout => \divFreq|Add0~43\);

-- Location: LCCOMB_X24_Y30_N20
\divFreq|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add0~44_combout\ = (\divFreq|contagem1\(22) & (\divFreq|Add0~43\ $ (GND))) # (!\divFreq|contagem1\(22) & (!\divFreq|Add0~43\ & VCC))
-- \divFreq|Add0~45\ = CARRY((\divFreq|contagem1\(22) & !\divFreq|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(22),
	datad => VCC,
	cin => \divFreq|Add0~43\,
	combout => \divFreq|Add0~44_combout\,
	cout => \divFreq|Add0~45\);

-- Location: LCFF_X24_Y30_N23
\divFreq|contagem1[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(23));

-- Location: LCCOMB_X25_Y31_N20
\divFreq|contagem1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~10_combout\ = (\divFreq|Add0~44_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~44_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~10_combout\);

-- Location: LCFF_X25_Y31_N21
\divFreq|contagem1[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(22));

-- Location: LCCOMB_X25_Y31_N8
\divFreq|contagem1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem1~9_combout\ = (\divFreq|Add0~42_combout\ & (((!\divFreq|Equal0~4_combout\) # (!\divFreq|Equal0~7_combout\)) # (!\divFreq|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|Add0~42_combout\,
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|contagem1~9_combout\);

-- Location: LCFF_X25_Y31_N9
\divFreq|contagem1[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem1\(21));

-- Location: LCCOMB_X25_Y31_N2
\divFreq|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~6_combout\ = (\divFreq|contagem1\(20) & (\divFreq|contagem1\(18) & (\divFreq|contagem1\(21) & \divFreq|contagem1\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(20),
	datab => \divFreq|contagem1\(18),
	datac => \divFreq|contagem1\(21),
	datad => \divFreq|contagem1\(19),
	combout => \divFreq|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y31_N28
\divFreq|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal0~7_combout\ = (\divFreq|contagem1\(24) & (!\divFreq|contagem1\(23) & (\divFreq|contagem1\(22) & \divFreq|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(24),
	datab => \divFreq|contagem1\(23),
	datac => \divFreq|contagem1\(22),
	datad => \divFreq|Equal0~6_combout\,
	combout => \divFreq|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y31_N24
\divFreq|estado[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|estado[0]~2_combout\ = \divFreq|estado\(0) $ (((\divFreq|Equal0~5_combout\ & (\divFreq|Equal0~7_combout\ & \divFreq|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal0~5_combout\,
	datab => \divFreq|Equal0~7_combout\,
	datac => \divFreq|estado\(0),
	datad => \divFreq|Equal0~4_combout\,
	combout => \divFreq|estado[0]~2_combout\);

-- Location: LCFF_X25_Y31_N25
\divFreq|estado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|estado[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|estado\(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : cycloneii_io
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
	padio => ww_C,
	combout => \C~combout\);

-- Location: LCCOMB_X22_Y33_N0
\y~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~1_combout\ = (\g~3_combout\ & (((\divFreq|estado\(0) & \C~combout\)))) # (!\g~3_combout\ & ((\y~0_combout\) # ((\divFreq|estado\(0) & \C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g~3_combout\,
	datab => \y~0_combout\,
	datac => \divFreq|estado\(0),
	datad => \C~combout\,
	combout => \y~1_combout\);

-- Location: LCCOMB_X23_Y29_N4
\divFreq|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~1_cout\ = CARRY((\divFreq|contagem1\(1) & \divFreq|contagem1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datab => \divFreq|contagem1\(0),
	datad => VCC,
	cout => \divFreq|Add1~1_cout\);

-- Location: LCCOMB_X23_Y29_N6
\divFreq|Add1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~3_cout\ = CARRY((!\divFreq|Add1~1_cout\) # (!\divFreq|contagem1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(2),
	datad => VCC,
	cin => \divFreq|Add1~1_cout\,
	cout => \divFreq|Add1~3_cout\);

-- Location: LCCOMB_X23_Y29_N8
\divFreq|Add1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~5_cout\ = CARRY((\divFreq|contagem1\(3) & !\divFreq|Add1~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(3),
	datad => VCC,
	cin => \divFreq|Add1~3_cout\,
	cout => \divFreq|Add1~5_cout\);

-- Location: LCCOMB_X23_Y29_N10
\divFreq|Add1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~7_cout\ = CARRY((!\divFreq|Add1~5_cout\) # (!\divFreq|contagem1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(4),
	datad => VCC,
	cin => \divFreq|Add1~5_cout\,
	cout => \divFreq|Add1~7_cout\);

-- Location: LCCOMB_X23_Y29_N12
\divFreq|Add1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~9_cout\ = CARRY((\divFreq|contagem1\(5) & !\divFreq|Add1~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datad => VCC,
	cin => \divFreq|Add1~7_cout\,
	cout => \divFreq|Add1~9_cout\);

-- Location: LCCOMB_X23_Y29_N14
\divFreq|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~10_combout\ = (\divFreq|contagem20\(6) & (!\divFreq|Add1~9_cout\)) # (!\divFreq|contagem20\(6) & ((\divFreq|Add1~9_cout\) # (GND)))
-- \divFreq|Add1~11\ = CARRY((!\divFreq|Add1~9_cout\) # (!\divFreq|contagem20\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(6),
	datad => VCC,
	cin => \divFreq|Add1~9_cout\,
	combout => \divFreq|Add1~10_combout\,
	cout => \divFreq|Add1~11\);

-- Location: LCFF_X23_Y29_N15
\divFreq|contagem20[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(6));

-- Location: LCCOMB_X23_Y29_N16
\divFreq|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~12_combout\ = (\divFreq|contagem20\(7) & (\divFreq|Add1~11\ $ (GND))) # (!\divFreq|contagem20\(7) & (!\divFreq|Add1~11\ & VCC))
-- \divFreq|Add1~13\ = CARRY((\divFreq|contagem20\(7) & !\divFreq|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(7),
	datad => VCC,
	cin => \divFreq|Add1~11\,
	combout => \divFreq|Add1~12_combout\,
	cout => \divFreq|Add1~13\);

-- Location: LCCOMB_X23_Y29_N18
\divFreq|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~14_combout\ = (\divFreq|contagem20\(8) & (!\divFreq|Add1~13\)) # (!\divFreq|contagem20\(8) & ((\divFreq|Add1~13\) # (GND)))
-- \divFreq|Add1~15\ = CARRY((!\divFreq|Add1~13\) # (!\divFreq|contagem20\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(8),
	datad => VCC,
	cin => \divFreq|Add1~13\,
	combout => \divFreq|Add1~14_combout\,
	cout => \divFreq|Add1~15\);

-- Location: LCCOMB_X23_Y29_N0
\divFreq|contagem20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~0_combout\ = (\divFreq|Add1~14_combout\ & !\divFreq|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Add1~14_combout\,
	datad => \divFreq|Equal1~8_combout\,
	combout => \divFreq|contagem20~0_combout\);

-- Location: LCFF_X23_Y29_N1
\divFreq|contagem20[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(8));

-- Location: LCCOMB_X23_Y29_N20
\divFreq|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~16_combout\ = (\divFreq|contagem20\(9) & (\divFreq|Add1~15\ $ (GND))) # (!\divFreq|contagem20\(9) & (!\divFreq|Add1~15\ & VCC))
-- \divFreq|Add1~17\ = CARRY((\divFreq|contagem20\(9) & !\divFreq|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(9),
	datad => VCC,
	cin => \divFreq|Add1~15\,
	combout => \divFreq|Add1~16_combout\,
	cout => \divFreq|Add1~17\);

-- Location: LCCOMB_X23_Y29_N22
\divFreq|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~18_combout\ = (\divFreq|contagem20\(10) & (!\divFreq|Add1~17\)) # (!\divFreq|contagem20\(10) & ((\divFreq|Add1~17\) # (GND)))
-- \divFreq|Add1~19\ = CARRY((!\divFreq|Add1~17\) # (!\divFreq|contagem20\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(10),
	datad => VCC,
	cin => \divFreq|Add1~17\,
	combout => \divFreq|Add1~18_combout\,
	cout => \divFreq|Add1~19\);

-- Location: LCCOMB_X23_Y29_N2
\divFreq|contagem20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~1_combout\ = (\divFreq|Add1~18_combout\ & !\divFreq|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Add1~18_combout\,
	datad => \divFreq|Equal1~8_combout\,
	combout => \divFreq|contagem20~1_combout\);

-- Location: LCFF_X23_Y29_N3
\divFreq|contagem20[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(10));

-- Location: LCCOMB_X23_Y29_N26
\divFreq|Add1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~22_combout\ = (\divFreq|contagem20\(12) & (!\divFreq|Add1~21\)) # (!\divFreq|contagem20\(12) & ((\divFreq|Add1~21\) # (GND)))
-- \divFreq|Add1~23\ = CARRY((!\divFreq|Add1~21\) # (!\divFreq|contagem20\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(12),
	datad => VCC,
	cin => \divFreq|Add1~21\,
	combout => \divFreq|Add1~22_combout\,
	cout => \divFreq|Add1~23\);

-- Location: LCFF_X23_Y29_N27
\divFreq|contagem20[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(12));

-- Location: LCCOMB_X23_Y29_N30
\divFreq|Add1~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~26_combout\ = (\divFreq|contagem20\(14) & (!\divFreq|Add1~25\)) # (!\divFreq|contagem20\(14) & ((\divFreq|Add1~25\) # (GND)))
-- \divFreq|Add1~27\ = CARRY((!\divFreq|Add1~25\) # (!\divFreq|contagem20\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(14),
	datad => VCC,
	cin => \divFreq|Add1~25\,
	combout => \divFreq|Add1~26_combout\,
	cout => \divFreq|Add1~27\);

-- Location: LCCOMB_X24_Y29_N14
\divFreq|contagem20~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~5_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~26_combout\,
	combout => \divFreq|contagem20~5_combout\);

-- Location: LCFF_X24_Y29_N15
\divFreq|contagem20[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(14));

-- Location: LCCOMB_X23_Y28_N0
\divFreq|Add1~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~28_combout\ = (\divFreq|contagem20\(15) & (\divFreq|Add1~27\ $ (GND))) # (!\divFreq|contagem20\(15) & (!\divFreq|Add1~27\ & VCC))
-- \divFreq|Add1~29\ = CARRY((\divFreq|contagem20\(15) & !\divFreq|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(15),
	datad => VCC,
	cin => \divFreq|Add1~27\,
	combout => \divFreq|Add1~28_combout\,
	cout => \divFreq|Add1~29\);

-- Location: LCFF_X23_Y28_N1
\divFreq|contagem20[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(15));

-- Location: LCCOMB_X23_Y28_N2
\divFreq|Add1~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~30_combout\ = (\divFreq|contagem20\(16) & (!\divFreq|Add1~29\)) # (!\divFreq|contagem20\(16) & ((\divFreq|Add1~29\) # (GND)))
-- \divFreq|Add1~31\ = CARRY((!\divFreq|Add1~29\) # (!\divFreq|contagem20\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(16),
	datad => VCC,
	cin => \divFreq|Add1~29\,
	combout => \divFreq|Add1~30_combout\,
	cout => \divFreq|Add1~31\);

-- Location: LCCOMB_X24_Y28_N10
\divFreq|contagem20~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~6_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~30_combout\,
	combout => \divFreq|contagem20~6_combout\);

-- Location: LCFF_X24_Y28_N11
\divFreq|contagem20[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(16));

-- Location: LCCOMB_X23_Y28_N4
\divFreq|Add1~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~32_combout\ = (\divFreq|contagem20\(17) & (\divFreq|Add1~31\ $ (GND))) # (!\divFreq|contagem20\(17) & (!\divFreq|Add1~31\ & VCC))
-- \divFreq|Add1~33\ = CARRY((\divFreq|contagem20\(17) & !\divFreq|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(17),
	datad => VCC,
	cin => \divFreq|Add1~31\,
	combout => \divFreq|Add1~32_combout\,
	cout => \divFreq|Add1~33\);

-- Location: LCFF_X23_Y28_N5
\divFreq|contagem20[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(17));

-- Location: LCCOMB_X23_Y28_N8
\divFreq|Add1~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~36_combout\ = (\divFreq|contagem20\(19) & (\divFreq|Add1~35\ $ (GND))) # (!\divFreq|contagem20\(19) & (!\divFreq|Add1~35\ & VCC))
-- \divFreq|Add1~37\ = CARRY((\divFreq|contagem20\(19) & !\divFreq|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(19),
	datad => VCC,
	cin => \divFreq|Add1~35\,
	combout => \divFreq|Add1~36_combout\,
	cout => \divFreq|Add1~37\);

-- Location: LCCOMB_X24_Y28_N24
\divFreq|contagem20~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~8_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~36_combout\,
	combout => \divFreq|contagem20~8_combout\);

-- Location: LCFF_X24_Y28_N25
\divFreq|contagem20[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(19));

-- Location: LCCOMB_X23_Y28_N14
\divFreq|Add1~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~42_combout\ = (\divFreq|contagem20\(22) & (!\divFreq|Add1~41\)) # (!\divFreq|contagem20\(22) & ((\divFreq|Add1~41\) # (GND)))
-- \divFreq|Add1~43\ = CARRY((!\divFreq|Add1~41\) # (!\divFreq|contagem20\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(22),
	datad => VCC,
	cin => \divFreq|Add1~41\,
	combout => \divFreq|Add1~42_combout\,
	cout => \divFreq|Add1~43\);

-- Location: LCCOMB_X24_Y28_N18
\divFreq|contagem20~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~9_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~42_combout\,
	combout => \divFreq|contagem20~9_combout\);

-- Location: LCFF_X24_Y28_N19
\divFreq|contagem20[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(22));

-- Location: LCCOMB_X23_Y28_N16
\divFreq|Add1~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~44_combout\ = (\divFreq|contagem20\(23) & (\divFreq|Add1~43\ $ (GND))) # (!\divFreq|contagem20\(23) & (!\divFreq|Add1~43\ & VCC))
-- \divFreq|Add1~45\ = CARRY((\divFreq|contagem20\(23) & !\divFreq|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(23),
	datad => VCC,
	cin => \divFreq|Add1~43\,
	combout => \divFreq|Add1~44_combout\,
	cout => \divFreq|Add1~45\);

-- Location: LCCOMB_X24_Y28_N22
\divFreq|contagem20~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~10_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~44_combout\,
	combout => \divFreq|contagem20~10_combout\);

-- Location: LCFF_X24_Y28_N23
\divFreq|contagem20[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(23));

-- Location: LCCOMB_X23_Y28_N18
\divFreq|Add1~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~46_combout\ = (\divFreq|contagem20\(24) & (!\divFreq|Add1~45\)) # (!\divFreq|contagem20\(24) & ((\divFreq|Add1~45\) # (GND)))
-- \divFreq|Add1~47\ = CARRY((!\divFreq|Add1~45\) # (!\divFreq|contagem20\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(24),
	datad => VCC,
	cin => \divFreq|Add1~45\,
	combout => \divFreq|Add1~46_combout\,
	cout => \divFreq|Add1~47\);

-- Location: LCCOMB_X24_Y28_N0
\divFreq|contagem20~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~11_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~46_combout\,
	combout => \divFreq|contagem20~11_combout\);

-- Location: LCFF_X24_Y28_N1
\divFreq|contagem20[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(24));

-- Location: LCCOMB_X23_Y28_N22
\divFreq|Add1~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~50_combout\ = (\divFreq|contagem20\(26) & (!\divFreq|Add1~49\)) # (!\divFreq|contagem20\(26) & ((\divFreq|Add1~49\) # (GND)))
-- \divFreq|Add1~51\ = CARRY((!\divFreq|Add1~49\) # (!\divFreq|contagem20\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(26),
	datad => VCC,
	cin => \divFreq|Add1~49\,
	combout => \divFreq|Add1~50_combout\,
	cout => \divFreq|Add1~51\);

-- Location: LCCOMB_X23_Y28_N30
\divFreq|contagem20~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~12_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~50_combout\,
	combout => \divFreq|contagem20~12_combout\);

-- Location: LCFF_X23_Y28_N31
\divFreq|contagem20[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(26));

-- Location: LCCOMB_X23_Y28_N24
\divFreq|Add1~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~52_combout\ = (\divFreq|contagem20\(27) & (\divFreq|Add1~51\ $ (GND))) # (!\divFreq|contagem20\(27) & (!\divFreq|Add1~51\ & VCC))
-- \divFreq|Add1~53\ = CARRY((\divFreq|contagem20\(27) & !\divFreq|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem20\(27),
	datad => VCC,
	cin => \divFreq|Add1~51\,
	combout => \divFreq|Add1~52_combout\,
	cout => \divFreq|Add1~53\);

-- Location: LCCOMB_X24_Y28_N14
\divFreq|contagem20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~2_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~52_combout\,
	combout => \divFreq|contagem20~2_combout\);

-- Location: LCFF_X24_Y28_N15
\divFreq|contagem20[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(27));

-- Location: LCCOMB_X23_Y28_N26
\divFreq|Add1~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add1~54_combout\ = \divFreq|Add1~53\ $ (\divFreq|contagem20\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divFreq|contagem20\(28),
	cin => \divFreq|Add1~53\,
	combout => \divFreq|Add1~54_combout\);

-- Location: LCCOMB_X23_Y28_N28
\divFreq|contagem20~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem20~3_combout\ = (!\divFreq|Equal1~8_combout\ & \divFreq|Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~8_combout\,
	datad => \divFreq|Add1~54_combout\,
	combout => \divFreq|contagem20~3_combout\);

-- Location: LCFF_X23_Y28_N29
\divFreq|contagem20[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem20~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(28));

-- Location: LCCOMB_X24_Y28_N28
\divFreq|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~2_combout\ = (\divFreq|contagem20\(27) & \divFreq|contagem20\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|contagem20\(27),
	datad => \divFreq|contagem20\(28),
	combout => \divFreq|Equal1~2_combout\);

-- Location: LCFF_X23_Y29_N17
\divFreq|contagem20[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(7));

-- Location: LCFF_X23_Y29_N21
\divFreq|contagem20[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem20\(9));

-- Location: LCCOMB_X24_Y29_N18
\divFreq|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~1_combout\ = (\divFreq|contagem20\(8) & (!\divFreq|contagem20\(7) & (!\divFreq|contagem20\(9) & \divFreq|contagem20\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(8),
	datab => \divFreq|contagem20\(7),
	datac => \divFreq|contagem20\(9),
	datad => \divFreq|contagem20\(10),
	combout => \divFreq|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y31_N6
\divFreq|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~0_combout\ = (!\divFreq|contagem1\(4) & (!\divFreq|contagem1\(5) & (!\divFreq|contagem20\(6) & \divFreq|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(4),
	datab => \divFreq|contagem1\(5),
	datac => \divFreq|contagem20\(6),
	datad => \divFreq|Equal0~0_combout\,
	combout => \divFreq|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y28_N6
\divFreq|Equal1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal1~8_combout\ = (\divFreq|Equal1~7_combout\ & (\divFreq|Equal1~2_combout\ & (\divFreq|Equal1~1_combout\ & \divFreq|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal1~7_combout\,
	datab => \divFreq|Equal1~2_combout\,
	datac => \divFreq|Equal1~1_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|Equal1~8_combout\);

-- Location: LCCOMB_X24_Y28_N8
\divFreq|estado[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|estado[1]~0_combout\ = \divFreq|estado\(1) $ (\divFreq|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|estado\(1),
	datad => \divFreq|Equal1~8_combout\,
	combout => \divFreq|estado[1]~0_combout\);

-- Location: LCFF_X24_Y28_N9
\divFreq|estado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|estado[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|estado\(1));

-- Location: LCCOMB_X22_Y33_N28
\r~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \r~0_combout\ = (\A~combout\ & \divFreq|estado\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\,
	datad => \divFreq|estado\(1),
	combout => \r~0_combout\);

-- Location: LCCOMB_X24_Y33_N6
\divFreq|Add3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~1_cout\ = CARRY((\divFreq|contagem1\(1) & \divFreq|contagem1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datab => \divFreq|contagem1\(0),
	datad => VCC,
	cout => \divFreq|Add3~1_cout\);

-- Location: LCCOMB_X24_Y33_N8
\divFreq|Add3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~3_cout\ = CARRY((!\divFreq|Add3~1_cout\) # (!\divFreq|contagem1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(2),
	datad => VCC,
	cin => \divFreq|Add3~1_cout\,
	cout => \divFreq|Add3~3_cout\);

-- Location: LCCOMB_X24_Y33_N10
\divFreq|Add3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~5_cout\ = CARRY((\divFreq|contagem1\(3) & !\divFreq|Add3~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(3),
	datad => VCC,
	cin => \divFreq|Add3~3_cout\,
	cout => \divFreq|Add3~5_cout\);

-- Location: LCCOMB_X24_Y33_N12
\divFreq|Add3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~7_cout\ = CARRY((!\divFreq|Add3~5_cout\) # (!\divFreq|contagem1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(4),
	datad => VCC,
	cin => \divFreq|Add3~5_cout\,
	cout => \divFreq|Add3~7_cout\);

-- Location: LCCOMB_X24_Y33_N14
\divFreq|Add3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~9_cout\ = CARRY((\divFreq|contagem1\(5) & !\divFreq|Add3~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datad => VCC,
	cin => \divFreq|Add3~7_cout\,
	cout => \divFreq|Add3~9_cout\);

-- Location: LCCOMB_X24_Y33_N16
\divFreq|Add3~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~11_cout\ = CARRY((!\divFreq|Add3~9_cout\) # (!\divFreq|contagem20\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(6),
	datad => VCC,
	cin => \divFreq|Add3~9_cout\,
	cout => \divFreq|Add3~11_cout\);

-- Location: LCCOMB_X24_Y33_N18
\divFreq|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~12_combout\ = (\divFreq|contagem10\(7) & (\divFreq|Add3~11_cout\ $ (GND))) # (!\divFreq|contagem10\(7) & (!\divFreq|Add3~11_cout\ & VCC))
-- \divFreq|Add3~13\ = CARRY((\divFreq|contagem10\(7) & !\divFreq|Add3~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(7),
	datad => VCC,
	cin => \divFreq|Add3~11_cout\,
	combout => \divFreq|Add3~12_combout\,
	cout => \divFreq|Add3~13\);

-- Location: LCCOMB_X24_Y33_N4
\divFreq|contagem10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~3_combout\ = (\divFreq|Add3~12_combout\ & !\divFreq|Equal3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Add3~12_combout\,
	datad => \divFreq|Equal3~6_combout\,
	combout => \divFreq|contagem10~3_combout\);

-- Location: LCFF_X24_Y33_N5
\divFreq|contagem10[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(7));

-- Location: LCCOMB_X24_Y33_N22
\divFreq|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~16_combout\ = (\divFreq|contagem10\(9) & (\divFreq|Add3~15\ $ (GND))) # (!\divFreq|contagem10\(9) & (!\divFreq|Add3~15\ & VCC))
-- \divFreq|Add3~17\ = CARRY((\divFreq|contagem10\(9) & !\divFreq|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(9),
	datad => VCC,
	cin => \divFreq|Add3~15\,
	combout => \divFreq|Add3~16_combout\,
	cout => \divFreq|Add3~17\);

-- Location: LCCOMB_X23_Y33_N16
\divFreq|contagem10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~12_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datac => \divFreq|Add3~16_combout\,
	combout => \divFreq|contagem10~12_combout\);

-- Location: LCFF_X23_Y33_N17
\divFreq|contagem10[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(9));

-- Location: LCCOMB_X24_Y33_N26
\divFreq|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~20_combout\ = (\divFreq|contagem10\(11) & (\divFreq|Add3~19\ $ (GND))) # (!\divFreq|contagem10\(11) & (!\divFreq|Add3~19\ & VCC))
-- \divFreq|Add3~21\ = CARRY((\divFreq|contagem10\(11) & !\divFreq|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(11),
	datad => VCC,
	cin => \divFreq|Add3~19\,
	combout => \divFreq|Add3~20_combout\,
	cout => \divFreq|Add3~21\);

-- Location: LCFF_X24_Y33_N27
\divFreq|contagem10[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(11));

-- Location: LCCOMB_X24_Y33_N28
\divFreq|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~22_combout\ = (\divFreq|contagem10\(12) & (!\divFreq|Add3~21\)) # (!\divFreq|contagem10\(12) & ((\divFreq|Add3~21\) # (GND)))
-- \divFreq|Add3~23\ = CARRY((!\divFreq|Add3~21\) # (!\divFreq|contagem10\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(12),
	datad => VCC,
	cin => \divFreq|Add3~21\,
	combout => \divFreq|Add3~22_combout\,
	cout => \divFreq|Add3~23\);

-- Location: LCCOMB_X24_Y33_N0
\divFreq|contagem10~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~11_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~22_combout\,
	combout => \divFreq|contagem10~11_combout\);

-- Location: LCFF_X24_Y33_N1
\divFreq|contagem10[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(12));

-- Location: LCCOMB_X24_Y33_N30
\divFreq|Add3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~24_combout\ = (\divFreq|contagem10\(13) & (\divFreq|Add3~23\ $ (GND))) # (!\divFreq|contagem10\(13) & (!\divFreq|Add3~23\ & VCC))
-- \divFreq|Add3~25\ = CARRY((\divFreq|contagem10\(13) & !\divFreq|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(13),
	datad => VCC,
	cin => \divFreq|Add3~23\,
	combout => \divFreq|Add3~24_combout\,
	cout => \divFreq|Add3~25\);

-- Location: LCCOMB_X24_Y33_N2
\divFreq|contagem10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~10_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~24_combout\,
	combout => \divFreq|contagem10~10_combout\);

-- Location: LCFF_X24_Y33_N3
\divFreq|contagem10[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(13));

-- Location: LCCOMB_X24_Y32_N0
\divFreq|Add3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~26_combout\ = (\divFreq|contagem10\(14) & (!\divFreq|Add3~25\)) # (!\divFreq|contagem10\(14) & ((\divFreq|Add3~25\) # (GND)))
-- \divFreq|Add3~27\ = CARRY((!\divFreq|Add3~25\) # (!\divFreq|contagem10\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(14),
	datad => VCC,
	cin => \divFreq|Add3~25\,
	combout => \divFreq|Add3~26_combout\,
	cout => \divFreq|Add3~27\);

-- Location: LCFF_X24_Y32_N1
\divFreq|contagem10[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(14));

-- Location: LCCOMB_X24_Y32_N4
\divFreq|Add3~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~30_combout\ = (\divFreq|contagem10\(16) & (!\divFreq|Add3~29\)) # (!\divFreq|contagem10\(16) & ((\divFreq|Add3~29\) # (GND)))
-- \divFreq|Add3~31\ = CARRY((!\divFreq|Add3~29\) # (!\divFreq|contagem10\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(16),
	datad => VCC,
	cin => \divFreq|Add3~29\,
	combout => \divFreq|Add3~30_combout\,
	cout => \divFreq|Add3~31\);

-- Location: LCFF_X24_Y32_N5
\divFreq|contagem10[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(16));

-- Location: LCCOMB_X24_Y32_N8
\divFreq|Add3~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~34_combout\ = (\divFreq|contagem10\(18) & (!\divFreq|Add3~33\)) # (!\divFreq|contagem10\(18) & ((\divFreq|Add3~33\) # (GND)))
-- \divFreq|Add3~35\ = CARRY((!\divFreq|Add3~33\) # (!\divFreq|contagem10\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(18),
	datad => VCC,
	cin => \divFreq|Add3~33\,
	combout => \divFreq|Add3~34_combout\,
	cout => \divFreq|Add3~35\);

-- Location: LCCOMB_X23_Y32_N24
\divFreq|contagem10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~7_combout\ = (\divFreq|Add3~34_combout\ & !\divFreq|Equal3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add3~34_combout\,
	datad => \divFreq|Equal3~6_combout\,
	combout => \divFreq|contagem10~7_combout\);

-- Location: LCFF_X23_Y32_N25
\divFreq|contagem10[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(18));

-- Location: LCCOMB_X24_Y32_N14
\divFreq|Add3~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~40_combout\ = (\divFreq|contagem10\(21) & (\divFreq|Add3~39\ $ (GND))) # (!\divFreq|contagem10\(21) & (!\divFreq|Add3~39\ & VCC))
-- \divFreq|Add3~41\ = CARRY((\divFreq|contagem10\(21) & !\divFreq|Add3~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(21),
	datad => VCC,
	cin => \divFreq|Add3~39\,
	combout => \divFreq|Add3~40_combout\,
	cout => \divFreq|Add3~41\);

-- Location: LCCOMB_X23_Y32_N28
\divFreq|contagem10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~6_combout\ = (\divFreq|Add3~40_combout\ & !\divFreq|Equal3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add3~40_combout\,
	datad => \divFreq|Equal3~6_combout\,
	combout => \divFreq|contagem10~6_combout\);

-- Location: LCFF_X23_Y32_N29
\divFreq|contagem10[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(21));

-- Location: LCCOMB_X24_Y32_N16
\divFreq|Add3~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~42_combout\ = (\divFreq|contagem10\(22) & (!\divFreq|Add3~41\)) # (!\divFreq|contagem10\(22) & ((\divFreq|Add3~41\) # (GND)))
-- \divFreq|Add3~43\ = CARRY((!\divFreq|Add3~41\) # (!\divFreq|contagem10\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(22),
	datad => VCC,
	cin => \divFreq|Add3~41\,
	combout => \divFreq|Add3~42_combout\,
	cout => \divFreq|Add3~43\);

-- Location: LCCOMB_X23_Y32_N22
\divFreq|contagem10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~5_combout\ = (\divFreq|Add3~42_combout\ & !\divFreq|Equal3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add3~42_combout\,
	datad => \divFreq|Equal3~6_combout\,
	combout => \divFreq|contagem10~5_combout\);

-- Location: LCFF_X23_Y32_N23
\divFreq|contagem10[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(22));

-- Location: LCCOMB_X24_Y32_N20
\divFreq|Add3~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~46_combout\ = (\divFreq|contagem10\(24) & (!\divFreq|Add3~45\)) # (!\divFreq|contagem10\(24) & ((\divFreq|Add3~45\) # (GND)))
-- \divFreq|Add3~47\ = CARRY((!\divFreq|Add3~45\) # (!\divFreq|contagem10\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(24),
	datad => VCC,
	cin => \divFreq|Add3~45\,
	combout => \divFreq|Add3~46_combout\,
	cout => \divFreq|Add3~47\);

-- Location: LCCOMB_X24_Y32_N22
\divFreq|Add3~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add3~48_combout\ = (\divFreq|contagem10\(25) & (\divFreq|Add3~47\ $ (GND))) # (!\divFreq|contagem10\(25) & (!\divFreq|Add3~47\ & VCC))
-- \divFreq|Add3~49\ = CARRY((\divFreq|contagem10\(25) & !\divFreq|Add3~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem10\(25),
	datad => VCC,
	cin => \divFreq|Add3~47\,
	combout => \divFreq|Add3~48_combout\,
	cout => \divFreq|Add3~49\);

-- Location: LCCOMB_X24_Y32_N30
\divFreq|contagem10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~2_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~48_combout\,
	combout => \divFreq|contagem10~2_combout\);

-- Location: LCFF_X24_Y32_N31
\divFreq|contagem10[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(25));

-- Location: LCCOMB_X23_Y32_N4
\divFreq|contagem10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem10~1_combout\ = (!\divFreq|Equal3~6_combout\ & \divFreq|Add3~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Equal3~6_combout\,
	datad => \divFreq|Add3~50_combout\,
	combout => \divFreq|contagem10~1_combout\);

-- Location: LCFF_X23_Y32_N5
\divFreq|contagem10[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(26));

-- Location: LCFF_X24_Y32_N21
\divFreq|contagem10[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add3~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem10\(24));

-- Location: LCCOMB_X23_Y32_N18
\divFreq|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~0_combout\ = (\divFreq|contagem10\(27) & (\divFreq|contagem10\(25) & (\divFreq|contagem10\(26) & !\divFreq|contagem10\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem10\(27),
	datab => \divFreq|contagem10\(25),
	datac => \divFreq|contagem10\(26),
	datad => \divFreq|contagem10\(24),
	combout => \divFreq|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y32_N0
\divFreq|Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal3~6_combout\ = (\divFreq|Equal3~5_combout\ & (\divFreq|Equal3~0_combout\ & (\divFreq|contagem10\(7) & \divFreq|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal3~5_combout\,
	datab => \divFreq|Equal3~0_combout\,
	datac => \divFreq|contagem10\(7),
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|Equal3~6_combout\);

-- Location: LCCOMB_X22_Y33_N22
\divFreq|estado[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|estado[3]~1_combout\ = \divFreq|estado\(3) $ (\divFreq|Equal3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|estado\(3),
	datad => \divFreq|Equal3~6_combout\,
	combout => \divFreq|estado[3]~1_combout\);

-- Location: LCFF_X22_Y33_N23
\divFreq|estado[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|estado[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|estado\(3));

-- Location: LCCOMB_X22_Y33_N16
\r~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \r~1_combout\ = (!\C~combout\ & ((\r~0_combout\) # ((\divFreq|estado\(3) & \B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\,
	datab => \r~0_combout\,
	datac => \divFreq|estado\(3),
	datad => \B~combout\,
	combout => \r~1_combout\);

-- Location: LCCOMB_X22_Y33_N8
\y~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y~2_combout\ = (\g~4_combout\ & (((\divFreq|estado\(0) & \C~combout\)))) # (!\g~4_combout\ & ((\y~0_combout\) # ((\divFreq|estado\(0) & \C~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g~4_combout\,
	datab => \y~0_combout\,
	datac => \divFreq|estado\(0),
	datad => \C~combout\,
	combout => \y~2_combout\);

-- Location: LCCOMB_X23_Y31_N4
\divFreq|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~1_cout\ = CARRY((\divFreq|contagem1\(1) & \divFreq|contagem1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datab => \divFreq|contagem1\(0),
	datad => VCC,
	cout => \divFreq|Add2~1_cout\);

-- Location: LCCOMB_X23_Y31_N6
\divFreq|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~3_cout\ = CARRY((!\divFreq|Add2~1_cout\) # (!\divFreq|contagem1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(2),
	datad => VCC,
	cin => \divFreq|Add2~1_cout\,
	cout => \divFreq|Add2~3_cout\);

-- Location: LCCOMB_X23_Y31_N8
\divFreq|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~5_cout\ = CARRY((\divFreq|contagem1\(3) & !\divFreq|Add2~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(3),
	datad => VCC,
	cin => \divFreq|Add2~3_cout\,
	cout => \divFreq|Add2~5_cout\);

-- Location: LCCOMB_X23_Y31_N10
\divFreq|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~7_cout\ = CARRY((!\divFreq|Add2~5_cout\) # (!\divFreq|contagem1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(4),
	datad => VCC,
	cin => \divFreq|Add2~5_cout\,
	cout => \divFreq|Add2~7_cout\);

-- Location: LCCOMB_X23_Y31_N12
\divFreq|Add2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~9_cout\ = CARRY((\divFreq|contagem1\(5) & !\divFreq|Add2~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datad => VCC,
	cin => \divFreq|Add2~7_cout\,
	cout => \divFreq|Add2~9_cout\);

-- Location: LCCOMB_X23_Y31_N14
\divFreq|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~11_cout\ = CARRY((!\divFreq|Add2~9_cout\) # (!\divFreq|contagem20\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem20\(6),
	datad => VCC,
	cin => \divFreq|Add2~9_cout\,
	cout => \divFreq|Add2~11_cout\);

-- Location: LCCOMB_X23_Y31_N16
\divFreq|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~12_combout\ = (\divFreq|contagem30\(7) & (\divFreq|Add2~11_cout\ $ (GND))) # (!\divFreq|contagem30\(7) & (!\divFreq|Add2~11_cout\ & VCC))
-- \divFreq|Add2~13\ = CARRY((\divFreq|contagem30\(7) & !\divFreq|Add2~11_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(7),
	datad => VCC,
	cin => \divFreq|Add2~11_cout\,
	combout => \divFreq|Add2~12_combout\,
	cout => \divFreq|Add2~13\);

-- Location: LCCOMB_X22_Y30_N2
\divFreq|contagem30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~0_combout\ = (\divFreq|Add2~12_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~12_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~0_combout\);

-- Location: LCFF_X22_Y30_N3
\divFreq|contagem30[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(7));

-- Location: LCCOMB_X23_Y31_N18
\divFreq|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~14_combout\ = (\divFreq|contagem30\(8) & (!\divFreq|Add2~13\)) # (!\divFreq|contagem30\(8) & ((\divFreq|Add2~13\) # (GND)))
-- \divFreq|Add2~15\ = CARRY((!\divFreq|Add2~13\) # (!\divFreq|contagem30\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(8),
	datad => VCC,
	cin => \divFreq|Add2~13\,
	combout => \divFreq|Add2~14_combout\,
	cout => \divFreq|Add2~15\);

-- Location: LCCOMB_X23_Y31_N0
\divFreq|contagem30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~1_combout\ = (\divFreq|Add2~14_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Add2~14_combout\,
	datac => \divFreq|Equal2~6_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~1_combout\);

-- Location: LCFF_X23_Y31_N1
\divFreq|contagem30[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(8));

-- Location: LCCOMB_X23_Y31_N20
\divFreq|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~16_combout\ = (\divFreq|contagem30\(9) & (\divFreq|Add2~15\ $ (GND))) # (!\divFreq|contagem30\(9) & (!\divFreq|Add2~15\ & VCC))
-- \divFreq|Add2~17\ = CARRY((\divFreq|contagem30\(9) & !\divFreq|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(9),
	datad => VCC,
	cin => \divFreq|Add2~15\,
	combout => \divFreq|Add2~16_combout\,
	cout => \divFreq|Add2~17\);

-- Location: LCCOMB_X22_Y30_N20
\divFreq|contagem30~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~2_combout\ = (\divFreq|Add2~16_combout\ & (((!\divFreq|Equal2~6_combout\) # (!\divFreq|Equal1~0_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal1~0_combout\,
	datac => \divFreq|Equal2~6_combout\,
	datad => \divFreq|Add2~16_combout\,
	combout => \divFreq|contagem30~2_combout\);

-- Location: LCFF_X22_Y30_N21
\divFreq|contagem30[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(9));

-- Location: LCCOMB_X23_Y31_N2
\divFreq|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~0_combout\ = (\divFreq|contagem30\(10) & (\divFreq|contagem30\(7) & (\divFreq|contagem30\(9) & \divFreq|contagem30\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(10),
	datab => \divFreq|contagem30\(7),
	datac => \divFreq|contagem30\(9),
	datad => \divFreq|contagem30\(8),
	combout => \divFreq|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y31_N24
\divFreq|Add2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~20_combout\ = (\divFreq|contagem30\(11) & (\divFreq|Add2~19\ $ (GND))) # (!\divFreq|contagem30\(11) & (!\divFreq|Add2~19\ & VCC))
-- \divFreq|Add2~21\ = CARRY((\divFreq|contagem30\(11) & !\divFreq|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(11),
	datad => VCC,
	cin => \divFreq|Add2~19\,
	combout => \divFreq|Add2~20_combout\,
	cout => \divFreq|Add2~21\);

-- Location: LCCOMB_X23_Y31_N26
\divFreq|Add2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~22_combout\ = (\divFreq|contagem30\(12) & (!\divFreq|Add2~21\)) # (!\divFreq|contagem30\(12) & ((\divFreq|Add2~21\) # (GND)))
-- \divFreq|Add2~23\ = CARRY((!\divFreq|Add2~21\) # (!\divFreq|contagem30\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(12),
	datad => VCC,
	cin => \divFreq|Add2~21\,
	combout => \divFreq|Add2~22_combout\,
	cout => \divFreq|Add2~23\);

-- Location: LCCOMB_X22_Y30_N22
\divFreq|contagem30~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~6_combout\ = (\divFreq|Add2~22_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~22_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~6_combout\);

-- Location: LCFF_X22_Y30_N23
\divFreq|contagem30[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(12));

-- Location: LCCOMB_X23_Y31_N28
\divFreq|Add2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~24_combout\ = (\divFreq|contagem30\(13) & (\divFreq|Add2~23\ $ (GND))) # (!\divFreq|contagem30\(13) & (!\divFreq|Add2~23\ & VCC))
-- \divFreq|Add2~25\ = CARRY((\divFreq|contagem30\(13) & !\divFreq|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(13),
	datad => VCC,
	cin => \divFreq|Add2~23\,
	combout => \divFreq|Add2~24_combout\,
	cout => \divFreq|Add2~25\);

-- Location: LCFF_X23_Y31_N29
\divFreq|contagem30[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(13));

-- Location: LCCOMB_X23_Y31_N30
\divFreq|Add2~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~26_combout\ = (\divFreq|contagem30\(14) & (!\divFreq|Add2~25\)) # (!\divFreq|contagem30\(14) & ((\divFreq|Add2~25\) # (GND)))
-- \divFreq|Add2~27\ = CARRY((!\divFreq|Add2~25\) # (!\divFreq|contagem30\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(14),
	datad => VCC,
	cin => \divFreq|Add2~25\,
	combout => \divFreq|Add2~26_combout\,
	cout => \divFreq|Add2~27\);

-- Location: LCFF_X23_Y31_N31
\divFreq|contagem30[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(14));

-- Location: LCCOMB_X23_Y30_N0
\divFreq|Add2~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~28_combout\ = (\divFreq|contagem30\(15) & (\divFreq|Add2~27\ $ (GND))) # (!\divFreq|contagem30\(15) & (!\divFreq|Add2~27\ & VCC))
-- \divFreq|Add2~29\ = CARRY((\divFreq|contagem30\(15) & !\divFreq|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(15),
	datad => VCC,
	cin => \divFreq|Add2~27\,
	combout => \divFreq|Add2~28_combout\,
	cout => \divFreq|Add2~29\);

-- Location: LCFF_X23_Y30_N1
\divFreq|contagem30[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(15));

-- Location: LCCOMB_X23_Y30_N2
\divFreq|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~30_combout\ = (\divFreq|contagem30\(16) & (!\divFreq|Add2~29\)) # (!\divFreq|contagem30\(16) & ((\divFreq|Add2~29\) # (GND)))
-- \divFreq|Add2~31\ = CARRY((!\divFreq|Add2~29\) # (!\divFreq|contagem30\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(16),
	datad => VCC,
	cin => \divFreq|Add2~29\,
	combout => \divFreq|Add2~30_combout\,
	cout => \divFreq|Add2~31\);

-- Location: LCFF_X23_Y30_N3
\divFreq|contagem30[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(16));

-- Location: LCCOMB_X23_Y30_N4
\divFreq|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~32_combout\ = (\divFreq|contagem30\(17) & (\divFreq|Add2~31\ $ (GND))) # (!\divFreq|contagem30\(17) & (!\divFreq|Add2~31\ & VCC))
-- \divFreq|Add2~33\ = CARRY((\divFreq|contagem30\(17) & !\divFreq|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(17),
	datad => VCC,
	cin => \divFreq|Add2~31\,
	combout => \divFreq|Add2~32_combout\,
	cout => \divFreq|Add2~33\);

-- Location: LCFF_X23_Y30_N5
\divFreq|contagem30[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(17));

-- Location: LCCOMB_X23_Y30_N6
\divFreq|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~34_combout\ = (\divFreq|contagem30\(18) & (!\divFreq|Add2~33\)) # (!\divFreq|contagem30\(18) & ((\divFreq|Add2~33\) # (GND)))
-- \divFreq|Add2~35\ = CARRY((!\divFreq|Add2~33\) # (!\divFreq|contagem30\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(18),
	datad => VCC,
	cin => \divFreq|Add2~33\,
	combout => \divFreq|Add2~34_combout\,
	cout => \divFreq|Add2~35\);

-- Location: LCCOMB_X22_Y30_N4
\divFreq|contagem30~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~7_combout\ = (\divFreq|Add2~34_combout\ & (((!\divFreq|Equal2~6_combout\) # (!\divFreq|Equal1~0_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal1~0_combout\,
	datac => \divFreq|Equal2~6_combout\,
	datad => \divFreq|Add2~34_combout\,
	combout => \divFreq|contagem30~7_combout\);

-- Location: LCFF_X22_Y30_N5
\divFreq|contagem30[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(18));

-- Location: LCCOMB_X23_Y30_N8
\divFreq|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~36_combout\ = (\divFreq|contagem30\(19) & (\divFreq|Add2~35\ $ (GND))) # (!\divFreq|contagem30\(19) & (!\divFreq|Add2~35\ & VCC))
-- \divFreq|Add2~37\ = CARRY((\divFreq|contagem30\(19) & !\divFreq|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(19),
	datad => VCC,
	cin => \divFreq|Add2~35\,
	combout => \divFreq|Add2~36_combout\,
	cout => \divFreq|Add2~37\);

-- Location: LCFF_X23_Y30_N9
\divFreq|contagem30[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(19));

-- Location: LCCOMB_X23_Y30_N10
\divFreq|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~38_combout\ = (\divFreq|contagem30\(20) & (!\divFreq|Add2~37\)) # (!\divFreq|contagem30\(20) & ((\divFreq|Add2~37\) # (GND)))
-- \divFreq|Add2~39\ = CARRY((!\divFreq|Add2~37\) # (!\divFreq|contagem30\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(20),
	datad => VCC,
	cin => \divFreq|Add2~37\,
	combout => \divFreq|Add2~38_combout\,
	cout => \divFreq|Add2~39\);

-- Location: LCCOMB_X22_Y30_N28
\divFreq|contagem30~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~8_combout\ = (\divFreq|Add2~38_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~38_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~8_combout\);

-- Location: LCFF_X22_Y30_N29
\divFreq|contagem30[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(20));

-- Location: LCCOMB_X23_Y30_N14
\divFreq|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~42_combout\ = (\divFreq|contagem30\(22) & (!\divFreq|Add2~41\)) # (!\divFreq|contagem30\(22) & ((\divFreq|Add2~41\) # (GND)))
-- \divFreq|Add2~43\ = CARRY((!\divFreq|Add2~41\) # (!\divFreq|contagem30\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(22),
	datad => VCC,
	cin => \divFreq|Add2~41\,
	combout => \divFreq|Add2~42_combout\,
	cout => \divFreq|Add2~43\);

-- Location: LCFF_X23_Y30_N15
\divFreq|contagem30[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(22));

-- Location: LCCOMB_X23_Y30_N16
\divFreq|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~44_combout\ = (\divFreq|contagem30\(23) & (\divFreq|Add2~43\ $ (GND))) # (!\divFreq|contagem30\(23) & (!\divFreq|Add2~43\ & VCC))
-- \divFreq|Add2~45\ = CARRY((\divFreq|contagem30\(23) & !\divFreq|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(23),
	datad => VCC,
	cin => \divFreq|Add2~43\,
	combout => \divFreq|Add2~44_combout\,
	cout => \divFreq|Add2~45\);

-- Location: LCCOMB_X22_Y30_N26
\divFreq|contagem30~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~10_combout\ = (\divFreq|Add2~44_combout\ & (((!\divFreq|Equal1~0_combout\) # (!\divFreq|Equal2~6_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|Add2~44_combout\,
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|contagem30~10_combout\);

-- Location: LCFF_X22_Y30_N27
\divFreq|contagem30[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(23));

-- Location: LCCOMB_X23_Y30_N18
\divFreq|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~46_combout\ = (\divFreq|contagem30\(24) & (!\divFreq|Add2~45\)) # (!\divFreq|contagem30\(24) & ((\divFreq|Add2~45\) # (GND)))
-- \divFreq|Add2~47\ = CARRY((!\divFreq|Add2~45\) # (!\divFreq|contagem30\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(24),
	datad => VCC,
	cin => \divFreq|Add2~45\,
	combout => \divFreq|Add2~46_combout\,
	cout => \divFreq|Add2~47\);

-- Location: LCFF_X23_Y30_N19
\divFreq|contagem30[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(24));

-- Location: LCCOMB_X23_Y30_N20
\divFreq|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~48_combout\ = (\divFreq|contagem30\(25) & (\divFreq|Add2~47\ $ (GND))) # (!\divFreq|contagem30\(25) & (!\divFreq|Add2~47\ & VCC))
-- \divFreq|Add2~49\ = CARRY((\divFreq|contagem30\(25) & !\divFreq|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(25),
	datad => VCC,
	cin => \divFreq|Add2~47\,
	combout => \divFreq|Add2~48_combout\,
	cout => \divFreq|Add2~49\);

-- Location: LCCOMB_X23_Y30_N22
\divFreq|Add2~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~50_combout\ = (\divFreq|contagem30\(26) & (!\divFreq|Add2~49\)) # (!\divFreq|contagem30\(26) & ((\divFreq|Add2~49\) # (GND)))
-- \divFreq|Add2~51\ = CARRY((!\divFreq|Add2~49\) # (!\divFreq|contagem30\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(26),
	datad => VCC,
	cin => \divFreq|Add2~49\,
	combout => \divFreq|Add2~50_combout\,
	cout => \divFreq|Add2~51\);

-- Location: LCCOMB_X22_Y30_N24
\divFreq|contagem30~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~11_combout\ = (\divFreq|Add2~50_combout\ & (((!\divFreq|Equal2~6_combout\) # (!\divFreq|Equal1~0_combout\)) # (!\divFreq|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal1~0_combout\,
	datac => \divFreq|Equal2~6_combout\,
	datad => \divFreq|Add2~50_combout\,
	combout => \divFreq|contagem30~11_combout\);

-- Location: LCFF_X22_Y30_N25
\divFreq|contagem30[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(26));

-- Location: LCCOMB_X23_Y30_N26
\divFreq|Add2~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~54_combout\ = (\divFreq|contagem30\(28) & (!\divFreq|Add2~53\)) # (!\divFreq|contagem30\(28) & ((\divFreq|Add2~53\) # (GND)))
-- \divFreq|Add2~55\ = CARRY((!\divFreq|Add2~53\) # (!\divFreq|contagem30\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem30\(28),
	datad => VCC,
	cin => \divFreq|Add2~53\,
	combout => \divFreq|Add2~54_combout\,
	cout => \divFreq|Add2~55\);

-- Location: LCFF_X23_Y30_N27
\divFreq|contagem30[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(28));

-- Location: LCCOMB_X23_Y30_N28
\divFreq|Add2~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add2~56_combout\ = \divFreq|Add2~55\ $ (!\divFreq|contagem30\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divFreq|contagem30\(29),
	cin => \divFreq|Add2~55\,
	combout => \divFreq|Add2~56_combout\);

-- Location: LCCOMB_X23_Y30_N30
\divFreq|contagem30~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem30~5_combout\ = (\divFreq|Add2~56_combout\ & (((!\divFreq|Equal2~0_combout\) # (!\divFreq|Equal1~0_combout\)) # (!\divFreq|Equal2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~6_combout\,
	datab => \divFreq|Equal1~0_combout\,
	datac => \divFreq|Equal2~0_combout\,
	datad => \divFreq|Add2~56_combout\,
	combout => \divFreq|contagem30~5_combout\);

-- Location: LCFF_X23_Y30_N31
\divFreq|contagem30[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem30~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(29));

-- Location: LCCOMB_X22_Y30_N8
\divFreq|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~3_combout\ = (\divFreq|contagem30\(21) & (!\divFreq|contagem30\(22) & (!\divFreq|contagem30\(19) & \divFreq|contagem30\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(21),
	datab => \divFreq|contagem30\(22),
	datac => \divFreq|contagem30\(19),
	datad => \divFreq|contagem30\(20),
	combout => \divFreq|Equal2~3_combout\);

-- Location: LCFF_X23_Y31_N25
\divFreq|contagem30[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(11));

-- Location: LCCOMB_X22_Y31_N16
\divFreq|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~1_combout\ = (\divFreq|contagem30\(12) & (!\divFreq|contagem30\(13) & (!\divFreq|contagem30\(14) & !\divFreq|contagem30\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(12),
	datab => \divFreq|contagem30\(13),
	datac => \divFreq|contagem30\(14),
	datad => \divFreq|contagem30\(11),
	combout => \divFreq|Equal2~1_combout\);

-- Location: LCFF_X23_Y30_N21
\divFreq|contagem30[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem30\(25));

-- Location: LCCOMB_X22_Y30_N18
\divFreq|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~4_combout\ = (\divFreq|contagem30\(26) & (\divFreq|contagem30\(23) & (!\divFreq|contagem30\(25) & !\divFreq|contagem30\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(26),
	datab => \divFreq|contagem30\(23),
	datac => \divFreq|contagem30\(25),
	datad => \divFreq|contagem30\(24),
	combout => \divFreq|Equal2~4_combout\);

-- Location: LCCOMB_X22_Y30_N0
\divFreq|Equal2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~5_combout\ = (\divFreq|Equal2~2_combout\ & (\divFreq|Equal2~3_combout\ & (\divFreq|Equal2~1_combout\ & \divFreq|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~2_combout\,
	datab => \divFreq|Equal2~3_combout\,
	datac => \divFreq|Equal2~1_combout\,
	datad => \divFreq|Equal2~4_combout\,
	combout => \divFreq|Equal2~5_combout\);

-- Location: LCCOMB_X22_Y30_N14
\divFreq|Equal2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal2~6_combout\ = (\divFreq|contagem30\(27) & (\divFreq|contagem30\(29) & (!\divFreq|contagem30\(28) & \divFreq|Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem30\(27),
	datab => \divFreq|contagem30\(29),
	datac => \divFreq|contagem30\(28),
	datad => \divFreq|Equal2~5_combout\,
	combout => \divFreq|Equal2~6_combout\);

-- Location: LCCOMB_X22_Y30_N16
\divFreq|estado[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|estado[2]~4_combout\ = \divFreq|estado\(2) $ (((\divFreq|Equal2~0_combout\ & (\divFreq|Equal2~6_combout\ & \divFreq|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal2~0_combout\,
	datab => \divFreq|Equal2~6_combout\,
	datac => \divFreq|estado\(2),
	datad => \divFreq|Equal1~0_combout\,
	combout => \divFreq|estado[2]~4_combout\);

-- Location: LCFF_X22_Y30_N17
\divFreq|estado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|estado[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|estado\(2));

-- Location: LCCOMB_X22_Y33_N24
\g~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \g~2_combout\ = (!\C~combout\ & ((\r~0_combout\) # ((\divFreq|estado\(2) & \B~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\,
	datab => \r~0_combout\,
	datac => \divFreq|estado\(2),
	datad => \B~combout\,
	combout => \g~2_combout\);

-- Location: LCCOMB_X22_Y33_N12
\g~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \g~4_combout\ = (\g~3_combout\ & (!\y~2_combout\ & \g~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g~3_combout\,
	datab => \y~2_combout\,
	datac => \g~2_combout\,
	combout => \g~4_combout\);

-- Location: LCCOMB_X22_Y33_N2
\r~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \r~2_combout\ = (\r~1_combout\ & ((\y~1_combout\) # (!\g~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~1_combout\,
	datac => \r~1_combout\,
	datad => \g~4_combout\,
	combout => \r~2_combout\);

-- Location: LCCOMB_X22_Y33_N6
\g~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \g~3_combout\ = (!\y~1_combout\ & (\g~2_combout\ & \g~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y~1_combout\,
	datac => \g~2_combout\,
	datad => \g~4_combout\,
	combout => \g~3_combout\);

-- Location: LCCOMB_X22_Y33_N10
\r~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \r~3_combout\ = (\r~1_combout\ & ((\y~2_combout\) # (!\g~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \g~3_combout\,
	datab => \y~2_combout\,
	datac => \r~1_combout\,
	combout => \r~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X25_Y30_N6
\divFreq|Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~1_cout\ = CARRY((\divFreq|contagem1\(1) & \divFreq|contagem1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(1),
	datab => \divFreq|contagem1\(0),
	datad => VCC,
	cout => \divFreq|Add4~1_cout\);

-- Location: LCCOMB_X25_Y30_N8
\divFreq|Add4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~3_cout\ = CARRY((!\divFreq|Add4~1_cout\) # (!\divFreq|contagem1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(2),
	datad => VCC,
	cin => \divFreq|Add4~1_cout\,
	cout => \divFreq|Add4~3_cout\);

-- Location: LCCOMB_X25_Y30_N10
\divFreq|Add4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~5_cout\ = CARRY((\divFreq|contagem1\(3) & !\divFreq|Add4~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(3),
	datad => VCC,
	cin => \divFreq|Add4~3_cout\,
	cout => \divFreq|Add4~5_cout\);

-- Location: LCCOMB_X25_Y30_N12
\divFreq|Add4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~7_cout\ = CARRY((!\divFreq|Add4~5_cout\) # (!\divFreq|contagem1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem1\(4),
	datad => VCC,
	cin => \divFreq|Add4~5_cout\,
	cout => \divFreq|Add4~7_cout\);

-- Location: LCCOMB_X25_Y30_N14
\divFreq|Add4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~9_cout\ = CARRY((\divFreq|contagem1\(5) & !\divFreq|Add4~7_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem1\(5),
	datad => VCC,
	cin => \divFreq|Add4~7_cout\,
	cout => \divFreq|Add4~9_cout\);

-- Location: LCCOMB_X25_Y30_N16
\divFreq|Add4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~10_combout\ = (\divFreq|contagem3\(6) & (!\divFreq|Add4~9_cout\)) # (!\divFreq|contagem3\(6) & ((\divFreq|Add4~9_cout\) # (GND)))
-- \divFreq|Add4~11\ = CARRY((!\divFreq|Add4~9_cout\) # (!\divFreq|contagem3\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(6),
	datad => VCC,
	cin => \divFreq|Add4~9_cout\,
	combout => \divFreq|Add4~10_combout\,
	cout => \divFreq|Add4~11\);

-- Location: LCCOMB_X25_Y30_N0
\divFreq|contagem3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~8_combout\ = (\divFreq|Add4~10_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add4~10_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~8_combout\);

-- Location: LCFF_X25_Y30_N1
\divFreq|contagem3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(6));

-- Location: LCCOMB_X25_Y30_N18
\divFreq|Add4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~12_combout\ = (\divFreq|contagem3\(7) & (\divFreq|Add4~11\ $ (GND))) # (!\divFreq|contagem3\(7) & (!\divFreq|Add4~11\ & VCC))
-- \divFreq|Add4~13\ = CARRY((\divFreq|contagem3\(7) & !\divFreq|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(7),
	datad => VCC,
	cin => \divFreq|Add4~11\,
	combout => \divFreq|Add4~12_combout\,
	cout => \divFreq|Add4~13\);

-- Location: LCCOMB_X25_Y30_N2
\divFreq|contagem3~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~9_combout\ = (\divFreq|Add4~12_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|Add4~12_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~9_combout\);

-- Location: LCFF_X25_Y30_N3
\divFreq|contagem3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(7));

-- Location: LCCOMB_X25_Y30_N20
\divFreq|Add4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~14_combout\ = (\divFreq|contagem3\(8) & (!\divFreq|Add4~13\)) # (!\divFreq|contagem3\(8) & ((\divFreq|Add4~13\) # (GND)))
-- \divFreq|Add4~15\ = CARRY((!\divFreq|Add4~13\) # (!\divFreq|contagem3\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(8),
	datad => VCC,
	cin => \divFreq|Add4~13\,
	combout => \divFreq|Add4~14_combout\,
	cout => \divFreq|Add4~15\);

-- Location: LCCOMB_X25_Y30_N22
\divFreq|Add4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~16_combout\ = (\divFreq|contagem3\(9) & (\divFreq|Add4~15\ $ (GND))) # (!\divFreq|contagem3\(9) & (!\divFreq|Add4~15\ & VCC))
-- \divFreq|Add4~17\ = CARRY((\divFreq|contagem3\(9) & !\divFreq|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(9),
	datad => VCC,
	cin => \divFreq|Add4~15\,
	combout => \divFreq|Add4~16_combout\,
	cout => \divFreq|Add4~17\);

-- Location: LCFF_X25_Y30_N23
\divFreq|contagem3[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(9));

-- Location: LCCOMB_X25_Y30_N28
\divFreq|Add4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~22_combout\ = (\divFreq|contagem3\(12) & (!\divFreq|Add4~21\)) # (!\divFreq|contagem3\(12) & ((\divFreq|Add4~21\) # (GND)))
-- \divFreq|Add4~23\ = CARRY((!\divFreq|Add4~21\) # (!\divFreq|contagem3\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(12),
	datad => VCC,
	cin => \divFreq|Add4~21\,
	combout => \divFreq|Add4~22_combout\,
	cout => \divFreq|Add4~23\);

-- Location: LCFF_X25_Y30_N29
\divFreq|contagem3[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(12));

-- Location: LCCOMB_X25_Y30_N30
\divFreq|Add4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~24_combout\ = (\divFreq|contagem3\(13) & (\divFreq|Add4~23\ $ (GND))) # (!\divFreq|contagem3\(13) & (!\divFreq|Add4~23\ & VCC))
-- \divFreq|Add4~25\ = CARRY((\divFreq|contagem3\(13) & !\divFreq|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(13),
	datad => VCC,
	cin => \divFreq|Add4~23\,
	combout => \divFreq|Add4~24_combout\,
	cout => \divFreq|Add4~25\);

-- Location: LCCOMB_X24_Y29_N22
\divFreq|contagem3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~6_combout\ = (!\divFreq|Equal4~6_combout\ & \divFreq|Add4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~6_combout\,
	datad => \divFreq|Add4~24_combout\,
	combout => \divFreq|contagem3~6_combout\);

-- Location: LCFF_X24_Y29_N23
\divFreq|contagem3[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(13));

-- Location: LCCOMB_X25_Y29_N2
\divFreq|Add4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~28_combout\ = (\divFreq|contagem3\(15) & (\divFreq|Add4~27\ $ (GND))) # (!\divFreq|contagem3\(15) & (!\divFreq|Add4~27\ & VCC))
-- \divFreq|Add4~29\ = CARRY((\divFreq|contagem3\(15) & !\divFreq|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(15),
	datad => VCC,
	cin => \divFreq|Add4~27\,
	combout => \divFreq|Add4~28_combout\,
	cout => \divFreq|Add4~29\);

-- Location: LCFF_X25_Y29_N3
\divFreq|contagem3[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(15));

-- Location: LCCOMB_X25_Y29_N4
\divFreq|Add4~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~30_combout\ = (\divFreq|contagem3\(16) & (!\divFreq|Add4~29\)) # (!\divFreq|contagem3\(16) & ((\divFreq|Add4~29\) # (GND)))
-- \divFreq|Add4~31\ = CARRY((!\divFreq|Add4~29\) # (!\divFreq|contagem3\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(16),
	datad => VCC,
	cin => \divFreq|Add4~29\,
	combout => \divFreq|Add4~30_combout\,
	cout => \divFreq|Add4~31\);

-- Location: LCFF_X25_Y29_N5
\divFreq|contagem3[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(16));

-- Location: LCCOMB_X25_Y29_N6
\divFreq|Add4~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~32_combout\ = (\divFreq|contagem3\(17) & (\divFreq|Add4~31\ $ (GND))) # (!\divFreq|contagem3\(17) & (!\divFreq|Add4~31\ & VCC))
-- \divFreq|Add4~33\ = CARRY((\divFreq|contagem3\(17) & !\divFreq|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(17),
	datad => VCC,
	cin => \divFreq|Add4~31\,
	combout => \divFreq|Add4~32_combout\,
	cout => \divFreq|Add4~33\);

-- Location: LCCOMB_X25_Y29_N8
\divFreq|Add4~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~34_combout\ = (\divFreq|contagem3\(18) & (!\divFreq|Add4~33\)) # (!\divFreq|contagem3\(18) & ((\divFreq|Add4~33\) # (GND)))
-- \divFreq|Add4~35\ = CARRY((!\divFreq|Add4~33\) # (!\divFreq|contagem3\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(18),
	datad => VCC,
	cin => \divFreq|Add4~33\,
	combout => \divFreq|Add4~34_combout\,
	cout => \divFreq|Add4~35\);

-- Location: LCFF_X25_Y29_N9
\divFreq|contagem3[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(18));

-- Location: LCCOMB_X25_Y29_N10
\divFreq|Add4~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~36_combout\ = (\divFreq|contagem3\(19) & (\divFreq|Add4~35\ $ (GND))) # (!\divFreq|contagem3\(19) & (!\divFreq|Add4~35\ & VCC))
-- \divFreq|Add4~37\ = CARRY((\divFreq|contagem3\(19) & !\divFreq|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(19),
	datad => VCC,
	cin => \divFreq|Add4~35\,
	combout => \divFreq|Add4~36_combout\,
	cout => \divFreq|Add4~37\);

-- Location: LCCOMB_X25_Y29_N30
\divFreq|contagem3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~4_combout\ = (!\divFreq|Equal4~6_combout\ & \divFreq|Add4~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~6_combout\,
	datad => \divFreq|Add4~36_combout\,
	combout => \divFreq|contagem3~4_combout\);

-- Location: LCFF_X25_Y29_N31
\divFreq|contagem3[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(19));

-- Location: LCCOMB_X25_Y29_N12
\divFreq|Add4~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~38_combout\ = (\divFreq|contagem3\(20) & (!\divFreq|Add4~37\)) # (!\divFreq|contagem3\(20) & ((\divFreq|Add4~37\) # (GND)))
-- \divFreq|Add4~39\ = CARRY((!\divFreq|Add4~37\) # (!\divFreq|contagem3\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(20),
	datad => VCC,
	cin => \divFreq|Add4~37\,
	combout => \divFreq|Add4~38_combout\,
	cout => \divFreq|Add4~39\);

-- Location: LCCOMB_X25_Y29_N28
\divFreq|contagem3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~3_combout\ = (!\divFreq|Equal4~6_combout\ & \divFreq|Add4~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~6_combout\,
	datad => \divFreq|Add4~38_combout\,
	combout => \divFreq|contagem3~3_combout\);

-- Location: LCFF_X25_Y29_N29
\divFreq|contagem3[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(20));

-- Location: LCCOMB_X25_Y29_N16
\divFreq|Add4~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~42_combout\ = (\divFreq|contagem3\(22) & (!\divFreq|Add4~41\)) # (!\divFreq|contagem3\(22) & ((\divFreq|Add4~41\) # (GND)))
-- \divFreq|Add4~43\ = CARRY((!\divFreq|Add4~41\) # (!\divFreq|contagem3\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(22),
	datad => VCC,
	cin => \divFreq|Add4~41\,
	combout => \divFreq|Add4~42_combout\,
	cout => \divFreq|Add4~43\);

-- Location: LCCOMB_X24_Y29_N24
\divFreq|contagem3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~1_combout\ = (\divFreq|Add4~42_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add4~42_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~1_combout\);

-- Location: LCFF_X24_Y29_N25
\divFreq|contagem3[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(22));

-- Location: LCCOMB_X25_Y29_N18
\divFreq|Add4~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~44_combout\ = (\divFreq|contagem3\(23) & (\divFreq|Add4~43\ $ (GND))) # (!\divFreq|contagem3\(23) & (!\divFreq|Add4~43\ & VCC))
-- \divFreq|Add4~45\ = CARRY((\divFreq|contagem3\(23) & !\divFreq|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(23),
	datad => VCC,
	cin => \divFreq|Add4~43\,
	combout => \divFreq|Add4~44_combout\,
	cout => \divFreq|Add4~45\);

-- Location: LCFF_X25_Y29_N19
\divFreq|contagem3[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(23));

-- Location: LCCOMB_X25_Y29_N20
\divFreq|Add4~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~46_combout\ = (\divFreq|contagem3\(24) & (!\divFreq|Add4~45\)) # (!\divFreq|contagem3\(24) & ((\divFreq|Add4~45\) # (GND)))
-- \divFreq|Add4~47\ = CARRY((!\divFreq|Add4~45\) # (!\divFreq|contagem3\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(24),
	datad => VCC,
	cin => \divFreq|Add4~45\,
	combout => \divFreq|Add4~46_combout\,
	cout => \divFreq|Add4~47\);

-- Location: LCFF_X25_Y29_N21
\divFreq|contagem3[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(24));

-- Location: LCCOMB_X25_Y29_N22
\divFreq|Add4~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~48_combout\ = (\divFreq|contagem3\(25) & (\divFreq|Add4~47\ $ (GND))) # (!\divFreq|contagem3\(25) & (!\divFreq|Add4~47\ & VCC))
-- \divFreq|Add4~49\ = CARRY((\divFreq|contagem3\(25) & !\divFreq|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divFreq|contagem3\(25),
	datad => VCC,
	cin => \divFreq|Add4~47\,
	combout => \divFreq|Add4~48_combout\,
	cout => \divFreq|Add4~49\);

-- Location: LCFF_X25_Y29_N23
\divFreq|contagem3[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(25));

-- Location: LCCOMB_X25_Y29_N24
\divFreq|Add4~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Add4~50_combout\ = \divFreq|Add4~49\ $ (\divFreq|contagem3\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \divFreq|contagem3\(26),
	cin => \divFreq|Add4~49\,
	combout => \divFreq|Add4~50_combout\);

-- Location: LCCOMB_X25_Y29_N26
\divFreq|contagem3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|contagem3~0_combout\ = (\divFreq|Add4~50_combout\ & !\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|Add4~50_combout\,
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|contagem3~0_combout\);

-- Location: LCFF_X25_Y29_N27
\divFreq|contagem3[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|contagem3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(26));

-- Location: LCCOMB_X24_Y29_N2
\divFreq|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~0_combout\ = (!\divFreq|contagem3\(25) & (!\divFreq|contagem3\(24) & (\divFreq|contagem3\(26) & !\divFreq|contagem3\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(25),
	datab => \divFreq|contagem3\(24),
	datac => \divFreq|contagem3\(26),
	datad => \divFreq|contagem3\(23),
	combout => \divFreq|Equal4~0_combout\);

-- Location: LCFF_X25_Y29_N7
\divFreq|contagem3[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(17));

-- Location: LCCOMB_X24_Y29_N26
\divFreq|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~2_combout\ = (!\divFreq|contagem3\(16) & (!\divFreq|contagem3\(17) & (!\divFreq|contagem3\(18) & !\divFreq|contagem3\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(16),
	datab => \divFreq|contagem3\(17),
	datac => \divFreq|contagem3\(18),
	datad => \divFreq|contagem3\(15),
	combout => \divFreq|Equal4~2_combout\);

-- Location: LCFF_X25_Y30_N21
\divFreq|contagem3[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|Add4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|contagem3\(8));

-- Location: LCCOMB_X25_Y30_N4
\divFreq|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~4_combout\ = (!\divFreq|contagem3\(10) & (!\divFreq|contagem3\(9) & (!\divFreq|contagem3\(8) & \divFreq|contagem3\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|contagem3\(10),
	datab => \divFreq|contagem3\(9),
	datac => \divFreq|contagem3\(8),
	datad => \divFreq|contagem3\(7),
	combout => \divFreq|Equal4~4_combout\);

-- Location: LCCOMB_X24_Y29_N28
\divFreq|Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~5_combout\ = (\divFreq|Equal4~3_combout\ & (\divFreq|Equal4~2_combout\ & (\divFreq|Equal4~4_combout\ & \divFreq|contagem3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~3_combout\,
	datab => \divFreq|Equal4~2_combout\,
	datac => \divFreq|Equal4~4_combout\,
	datad => \divFreq|contagem3\(6),
	combout => \divFreq|Equal4~5_combout\);

-- Location: LCCOMB_X24_Y29_N10
\divFreq|Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|Equal4~6_combout\ = (\divFreq|Equal4~1_combout\ & (\divFreq|Equal4~0_combout\ & (\divFreq|Equal0~1_combout\ & \divFreq|Equal4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divFreq|Equal4~1_combout\,
	datab => \divFreq|Equal4~0_combout\,
	datac => \divFreq|Equal0~1_combout\,
	datad => \divFreq|Equal4~5_combout\,
	combout => \divFreq|Equal4~6_combout\);

-- Location: LCCOMB_X24_Y29_N8
\divFreq|estado[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \divFreq|estado[4]~3_combout\ = \divFreq|estado\(4) $ (\divFreq|Equal4~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divFreq|estado\(4),
	datad => \divFreq|Equal4~6_combout\,
	combout => \divFreq|estado[4]~3_combout\);

-- Location: LCFF_X24_Y29_N9
\divFreq|estado[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \divFreq|estado[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \divFreq|estado\(4));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[0]~I\ : cycloneii_io
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
	datain => \r~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\r[1]~I\ : cycloneii_io
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
	datain => \r~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_r(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[0]~I\ : cycloneii_io
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
	datain => \g~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\g[1]~I\ : cycloneii_io
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
	datain => \g~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_g(1));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[0]~I\ : cycloneii_io
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
	datain => \y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y[1]~I\ : cycloneii_io
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
	datain => \y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock20~I\ : cycloneii_io
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
	datain => \divFreq|estado\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock20);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock10~I\ : cycloneii_io
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
	datain => \divFreq|estado\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock10);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock30~I\ : cycloneii_io
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
	datain => \divFreq|estado\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock30);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock3~I\ : cycloneii_io
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
	datain => \divFreq|estado\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock3);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clock1~I\ : cycloneii_io
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
	datain => \divFreq|estado\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clock1);
END structure;


