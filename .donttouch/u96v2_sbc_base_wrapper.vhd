--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Tue Oct  5 14:01:24 2021
--Host        : adm-59955 running 64-bit Ubuntu 20.04.3 LTS
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
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end u96v2_sbc_base_wrapper;

architecture STRUCTURE of u96v2_sbc_base_wrapper is
  component u96v2_sbc_base is
  port (
    wifi_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    bt_en_led_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component u96v2_sbc_base;
begin
u96v2_sbc_base_i: component u96v2_sbc_base
     port map (
      bt_en_led_tri_o(0) => bt_en_led_tri_o(0),
      wifi_en_led_tri_o(0) => wifi_en_led_tri_o(0)
    );
end STRUCTURE;
