--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
--Date        : Tue Apr 27 10:50:47 2021
--Host        : ubuv1804 running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target u96v2_sbc_base_wrapper.bd
--Design      : u96v2_sbc_base_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity u96v2_sbc_base_wrapper is
  port (
    bt_ctsn : in STD_LOGIC;
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_rtsn : out STD_LOGIC;
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi0_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi0_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_csi0_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi1_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi1_d : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hs_mezz_csi1_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_dsi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_dsi_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_hsic_d : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_hsic_str : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_pwm0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_rst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_uart0_rx : in STD_LOGIC;
    ls_mezz_uart0_tx : out STD_LOGIC;
    ls_mezz_uart1_rx : in STD_LOGIC;
    ls_mezz_uart1_tx : out STD_LOGIC;
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end u96v2_sbc_base_wrapper;

architecture STRUCTURE of u96v2_sbc_base_wrapper is
  component u96v2_sbc_base is
  port (
    ls_mezz_uart0_rx : in STD_LOGIC;
    ls_mezz_uart0_tx : out STD_LOGIC;
    ls_mezz_uart1_rx : in STD_LOGIC;
    ls_mezz_uart1_tx : out STD_LOGIC;
    ls_mezz_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ls_mezz_rst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fan_pwm_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ls_mezz_pwm1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_ctsn : in STD_LOGIC;
    bt_rtsn : out STD_LOGIC;
    hs_mezz_csi0_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi0_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_csi1_c : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_csi1_d : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hs_mezz_csi0_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_csi1_mclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_dsi_clk : out STD_LOGIC_VECTOR ( 1 downto 0 );
    hs_mezz_dsi_d : out STD_LOGIC_VECTOR ( 7 downto 0 );
    hs_mezz_hsic_str : out STD_LOGIC_VECTOR ( 0 to 0 );
    hs_mezz_hsic_d : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component u96v2_sbc_base;
begin
u96v2_sbc_base_i: component u96v2_sbc_base
     port map (
      bt_ctsn => bt_ctsn,
      bt_en_led_tri_o(0) => bt_en_led_tri_o(0),
      bt_rtsn => bt_rtsn,
      fan_pwm_tri_o(0) => fan_pwm_tri_o(0),
      hs_mezz_csi0_c(1 downto 0) => hs_mezz_csi0_c(1 downto 0),
      hs_mezz_csi0_d(7 downto 0) => hs_mezz_csi0_d(7 downto 0),
      hs_mezz_csi0_mclk(0) => hs_mezz_csi0_mclk(0),
      hs_mezz_csi1_c(1 downto 0) => hs_mezz_csi1_c(1 downto 0),
      hs_mezz_csi1_d(3 downto 0) => hs_mezz_csi1_d(3 downto 0),
      hs_mezz_csi1_mclk(0) => hs_mezz_csi1_mclk(0),
      hs_mezz_dsi_clk(1 downto 0) => hs_mezz_dsi_clk(1 downto 0),
      hs_mezz_dsi_d(7 downto 0) => hs_mezz_dsi_d(7 downto 0),
      hs_mezz_hsic_d(0) => hs_mezz_hsic_d(0),
      hs_mezz_hsic_str(0) => hs_mezz_hsic_str(0),
      ls_mezz_int(1 downto 0) => ls_mezz_int(1 downto 0),
      ls_mezz_pwm0(0) => ls_mezz_pwm0(0),
      ls_mezz_pwm1(0) => ls_mezz_pwm1(0),
      ls_mezz_rst(1 downto 0) => ls_mezz_rst(1 downto 0),
      ls_mezz_uart0_rx => ls_mezz_uart0_rx,
      ls_mezz_uart0_tx => ls_mezz_uart0_tx,
      ls_mezz_uart1_rx => ls_mezz_uart1_rx,
      ls_mezz_uart1_tx => ls_mezz_uart1_tx,
      wifi_en_led_tri_o(0) => wifi_en_led_tri_o(0)
    );
end STRUCTURE;
