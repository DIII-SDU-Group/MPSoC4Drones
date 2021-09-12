-- file: u96v2_sbc_base_system_management_wiz_0_0.vhd
-- (c) Copyright 2013 - 2013 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity u96v2_sbc_base_system_management_wiz_0_0 is
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector(12 downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector(31 downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(3 downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector(12 downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector(31 downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;           

   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (5 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    alarm_out       : out STD_LOGIC
);
end u96v2_sbc_base_system_management_wiz_0_0;

architecture xilinx of u96v2_sbc_base_system_management_wiz_0_0 is

  ATTRIBUTE CORE_GENERATION_INFO : string;
  ATTRIBUTE CORE_GENERATION_INFO OF xilinx : ARCHITECTURE IS "u96v2_sbc_base_system_management_wiz_0_0,system_management_wiz_v1_3_13,{x_ipProduct=Vivado 2020.2.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=system_management_wiz,x_ipVersion=1.3,x_ipCoreRevision=13,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_FAMILY=zynquplus,C_IS_DIABLO=1,C_DUAL0_REGISTER=0,C_DUAL1_REGISTER=0,C_DUAL2_REGISTER=0,C_DUAL3_REGISTER=0,C_COMMON_N_SOURCE=Null,C_ENABLE_ADC_DATA_OUT_MASTER=0,C_ENABLE_ADC_DATA_OUT_SLAVE0=0,C_ENABLE_ADC_DATA_OUT_SLAVE1=0,C_ENABLE_ADC_DATA_OUT_SLAVE2=0,C_ENABLE_DUAL_SEQUENCE_MODE=0,c_component_name=u96v2_sbc_base_system_management_wiz_0_0,C_SIM_FILE_SEL=Default,C_SIM_DEVICE=ZYNQ_ULTRASCALE,C_SIM_FILE_REL_PATH=./,C_SIM_FILE_NAME=design,C_HAS_DCLK=1,C_HAS_DRP=0,C_HAS_RESET=0,C_HAS_CONVST=0,C_HAS_CONVSTCLK=0,C_HAS_VP=1,C_HAS_VN=1,C_HAS_CHANNEL=1,C_HAS_EOC=1,C_HAS_EOS=1,C_HAS_BUSY=1,C_HAS_JTAGLOCKED=0,C_HAS_JTAGMODIFIED=0,C_HAS_JTAGBUSY=0,C_HAS_EXTERNAL_MUX=0,C_EXTERNAL_MUXADDR_ENABLE=0,C_EXTERNAL_MUX_CHANNEL=VP_VN,C_DCLK_FREQUENCY=100,C_SAMPLING_RATE=192307.6923076923,C_HAS_OT_ALARM=0,C_HAS_USER_TEMP_ALARM=0,C_HAS_UNDER_OT_ALARM=0,C_HAS_UNDER_TEMP_ALARM=0,C_HAS_VCCINT_ALARM=0,C_HAS_VCCPSINTFP_ALARM=0,C_HAS_VCCPSAUX_ALARM=0,C_HAS_VCCPSINTLP_ALARM=0,C_HAS_VCCAUX_ALARM=0,C_HAS_VBRAM_ALARM=0,C_HAS_VCCPINT_ALARM=0,C_HAS_VCCPAUX_ALARM=0,C_HAS_VCCDDRO_ALARM=0,C_CONFIGURATION_R0=0,C_CONFIGURATION_R1=12191,C_CONFIGURATION_R2=5120,C_CONFIGURATION_R4=0,C_ALARM_LIMIT_R0=46996,C_ALARM_LIMIT_R1=20097,C_ALARM_LIMIT_R2=41287,C_ALARM_LIMIT_R3=52131,C_ALARM_LIMIT_R4=43779,C_ALARM_LIMIT_R5=18787,C_ALARM_LIMIT_R6=38229,C_ALARM_LIMIT_R7=45066,C_ALARM_LIMIT_R8=20097,C_ALARM_LIMIT_R9=18787,C_ALARM_LIMIT_R10=18787,C_ALARM_LIMIT_R11=17694,C_ALARM_LIMIT_R12=18787,C_ALARM_LIMIT_R13=17694,C_ALARM_LIMIT_R14=39540,C_ALARM_LIMIT_R15=37355,C_SEQUENCE_R0=18177,C_SEQUENCE_SLAVE0_SSIT_R0=256,C_SEQUENCE_SLAVE1_SSIT_R0=256,C_SEQUENCE_SLAVE2_SSIT_R0=256,C_SEQUENCE_R1=0,C_SEQUENCE_R2=0,C_SEQUENCE_R3=0,C_SEQUENCE_R4=0,C_SEQUENCE_R5=0,C_SEQUENCE_R6=0,C_SEQUENCE_R7=0,C_VPVN=0,C_VAUX0=0,C_VAUX1=0,C_VAUX2=0,C_VAUX3=0,C_VAUX4=0,C_VAUX5=0,C_VAUX6=0,C_VAUX7=0,C_VAUX8=0,C_VAUX9=0,C_VAUX10=0,C_VAUX11=0,C_VAUX12=0,C_VAUX13=0,C_VAUX14=0,C_VAUX15=0,C_HAS_AXI=1,C_HAS_PMC=0,C_HAS_PMC_MASTER=0,C_HAS_AXI4STREAM=0,C_HAS_TEMP_BUS=0,C_HAS_SLAVE0_SSIT_TEMP_CH=1,C_HAS_SLAVE1_SSIT_TEMP_CH=1,C_HAS_SLAVE2_SSIT_TEMP_CH=1,C_FIFO_DEPTH=7,C_INCLUDE_INTR=1,C_IS_SSIT_SLAVE0=0,C_IS_SSIT_SLAVE1=0,C_IS_SSIT_SLAVE2=0,C_ENABLE_SLAVE0=0,C_ENABLE_SLAVE1=0,C_ENABLE_SLAVE2=0,C_IS_SSIT_SLAVE0_ANALOG_BANK=0,C_IS_SSIT_SLAVE1_ANALOG_BANK=0,C_IS_SSIT_SLAVE2_ANALOG_BANK=0,C_HAS_I2C=0,C_HAS_PMBUS=0,C_HAS_I2C_SLAVE=0,C_I2C_SLAVE_ADDRESS=32,C_I2C_SLAVE0_ADDRESS=32,C_I2C_SLAVE1_ADDRESS=32,C_I2C_SLAVE2_ADDRESS=32,C_CONFIGURATION_R3=15,C_CONFIGURATION_SLAVE0_SSIT_R3=15,C_CONFIGURATION_SLAVE1_SSIT_R3=15,C_CONFIGURATION_SLAVE2_SSIT_R3=15,C_CONFIGURATION_R4_1=12,C_CONFIGURATION_R4_2=12,C_CONFIGURATION_R4_3=14,C_CONFIGURATION_R4_4=10,C_CONFIGURATION_SLAVE0_SSIT_R4_1=12,C_CONFIGURATION_SLAVE0_SSIT_R4_2=12,C_CONFIGURATION_SLAVE0_SSIT_R4_3=14,C_CONFIGURATION_SLAVE0_SSIT_R4_4=10,C_CONFIGURATION_SLAVE1_SSIT_R4_1=12,C_CONFIGURATION_SLAVE1_SSIT_R4_2=12,C_CONFIGURATION_SLAVE1_SSIT_R4_3=14,C_CONFIGURATION_SLAVE1_SSIT_R4_4=10,C_CONFIGURATION_SLAVE2_SSIT_R4_1=12,C_CONFIGURATION_SLAVE2_SSIT_R4_2=12,C_CONFIGURATION_SLAVE2_SSIT_R4_3=14,C_CONFIGURATION_SLAVE2_SSIT_R4_4=10,C_ALARM_LIMIT_USL1=19550,C_ALARM_LIMIT_USU1=19769,C_ALARM_LIMIT_USL2=19442,C_ALARM_LIMIT_USU2=19879,C_ALARM_LIMIT_USL3=39103,C_ALARM_LIMIT_USU3=39540,C_ALARM_LIMIT_USL4=39103,C_ALARM_LIMIT_USU4=39540,C_ALARM_LIMIT_SLAVE0_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE0_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE0_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE0_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE0_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE0_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE0_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE0_SSIT_USU4=39540,C_ALARM_LIMIT_SLAVE1_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE1_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE1_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE1_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE1_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE1_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE1_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE1_SSIT_USU4=39540,C_ALARM_LIMIT_SLAVE2_SSIT_USL1=19550,C_ALARM_LIMIT_SLAVE2_SSIT_USU1=19769,C_ALARM_LIMIT_SLAVE2_SSIT_USL2=19442,C_ALARM_LIMIT_SLAVE2_SSIT_USU2=19879,C_ALARM_LIMIT_SLAVE2_SSIT_USL3=39103,C_ALARM_LIMIT_SLAVE2_SSIT_USU3=39540,C_ALARM_LIMIT_SLAVE2_SSIT_USL4=39103,C_ALARM_LIMIT_SLAVE2_SSIT_USU4=39540,C_SEQUENCE_R8=0,C_DUAL_SEQUENCE_R2=0,C_DUAL_SEQUENCE_R1=0,C_DUAL_SEQUENCE_R0=0,C_AVG_VUSER=0,C_SEQUENCE_SLAVE0_SSIT_R8=0,C_AVG_SLAVE0_SSIT_VUSER=0,C_SEQUENCE_SLAVE1_SSIT_R8=0,C_AVG_SLAVE1_SSIT_VUSER=0,C_SEQUENCE_SLAVE2_SSIT_R8=0,C_AVG_SLAVE2_SSIT_VUSER=0,C_HAS_USER_SUPPLY0_ALARM=0,C_HAS_USER_SUPPLY1_ALARM=0,C_HAS_USER_SUPPLY2_ALARM=0,C_HAS_USER_SUPPLY3_ALARM=0,C_AVERAGE_EN_VUSER0=0,C_AVERAGE_EN_VUSER1=0,C_AVERAGE_EN_VUSER2=0,C_AVERAGE_EN_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE0_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE0_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE0_SSIT_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE1_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE1_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE1_SSIT_VUSER3=0,C_HAS_USER_SUPPLY0_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY1_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY2_SLAVE2_SSIT_ALARM=0,C_HAS_USER_SUPPLY3_SLAVE2_SSIT_ALARM=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER0=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER1=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER2=0,C_AVERAGE_EN_SLAVE2_SSIT_VUSER3=0,C_I2C_CLK_PERIOD=2500.000,C_USER_SUPPLY0_SOURCE=VCCO,C_USER_SUPPLY1_SOURCE=VCCINT,C_USER_SUPPLY2_SOURCE=VCCAUX,C_USER_SUPPLY3_SOURCE=VCCO,C_USER_SUPPLY0_BANK=44,C_USER_SUPPLY1_BANK=44,C_USER_SUPPLY2_BANK=44,C_USER_SUPPLY3_BANK=65,C_USER_SUPPLY0_SLAVE0_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE0_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE0_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE0_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE0_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE0_SSIT_BANK=65,C_USER_SUPPLY0_SLAVE1_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE1_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE1_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE1_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE1_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE1_SSIT_BANK=65,C_USER_SUPPLY0_SLAVE2_SSIT_SOURCE=VCCO,C_USER_SUPPLY1_SLAVE2_SSIT_SOURCE=VCCINT,C_USER_SUPPLY2_SLAVE2_SSIT_SOURCE=VCCAUX,C_USER_SUPPLY3_SLAVE2_SSIT_SOURCE=VCCO,C_USER_SUPPLY0_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY1_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY2_SLAVE2_SSIT_BANK=44,C_USER_SUPPLY3_SLAVE2_SSIT_BANK=65,C_HAS_VUSER0=0,C_HAS_VUSER1=0,C_HAS_VUSER2=0,C_HAS_VUSER3=0,C_HAS_SLAVE0_SSIT_VUSER0=0,C_HAS_SLAVE0_SSIT_VUSER1=0,C_HAS_SLAVE0_SSIT_VUSER2=0,C_HAS_SLAVE0_SSIT_VUSER3=0,C_HAS_SLAVE1_SSIT_VUSER0=0,C_HAS_SLAVE1_SSIT_VUSER1=0,C_HAS_SLAVE1_SSIT_VUSER2=0,C_HAS_SLAVE1_SSIT_VUSER3=0,C_HAS_SLAVE2_SSIT_VUSER0=0,C_HAS_SLAVE2_SSIT_VUSER1=0,C_HAS_SLAVE2_SSIT_VUSER2=0,C_HAS_SLAVE2_SSIT_VUSER3=0,C_DUAL_SEQ=0,C_DIV_VUSER0=6,C_DIV_VUSER1=3,C_DIV_VUSER2=3,C_DIV_VUSER3=3,C_DIV_VUSER0_SLAVE0=6,C_DIV_VUSER1_SLAVE0=3,C_DIV_VUSER2_SLAVE0=3,C_DIV_VUSER3_SLAVE0=3,C_DIV_VUSER0_SLAVE1=6,C_DIV_VUSER1_SLAVE1=3,C_DIV_VUSER2_SLAVE1=3,C_DIV_VUSER3_SLAVE1=3,C_DIV_VUSER0_SLAVE2=6,C_DIV_VUSER1_SLAVE2=3,C_DIV_VUSER2_SLAVE2=3,C_DIV_VUSER3_SLAVE2=3,C_CHANNEL_CNT=5,C_VAUXN0_LOC=C3,C_VAUXP0_LOC=D3,C_VAUXN1_LOC=E3,C_VAUXP1_LOC=E4,C_VAUXN2_LOC=G4,C_VAUXP2_LOC=H4,C_VAUXN3_LOC=H5,C_VAUXP3_LOC=J5,C_VAUXN4_LOC=M4,C_VAUXP4_LOC=M5,C_VAUXN5_LOC=N4,C_VAUXP5_LOC=N5,C_VAUXN6_LOC=R5,C_VAUXP6_LOC=P5,C_VAUXN7_LOC=T4,C_VAUXP7_LOC=R4,C_VAUXN8_LOC=D1,C_VAUXP8_LOC=E1,C_VAUXN9_LOC=F1,C_VAUXP9_LOC=G1,C_VAUXN10_LOC=G2,C_VAUXP10_LOC=H2,C_VAUXN11_LOC=J1,C_VAUXP11_LOC=K1,C_VAUXN12_LOC=M1,C_VAUXP12_LOC=M2,C_VAUXN13_LOC=P1,C_VAUXP13_LOC=N2,C_VAUXN14_LOC=T1,C_VAUXP14_LOC=R1,C_VAUXN15_LOC=U1,C_VAUXP15_LOC=U2,C_I2C_SCLK_LOC=F3,C_I2C_SDA_LOC=D2}";


  component u96v2_sbc_base_system_management_wiz_0_0_axi_xadc 
   generic
   (
    -----------------------------------------
--    C_BASEADDR              : std_logic_vector  := X"FFFF_FFFF";
--    C_HIGHADDR              : std_logic_vector  := X"0000_0000";
    -----------------------------------------
    -- AXI slave single block generics
    C_INSTANCE              : string := "u96v2_sbc_base_system_management_wiz_0_0_axi_xadc";
    C_FAMILY                : string                   := "KintexU";
    C_S_AXI_ADDR_WIDTH      : integer range 2 to 32   := 11;
    C_S_AXI_DATA_WIDTH      : integer range 32 to 128  := 32;
    -----------------------------------------
    -- SYSMON Generics
    C_INCLUDE_INTR          : integer range 0 to 1   := 1;
    C_SIM_MONITOR_FILE      : string                 := "design.txt"
   );
   port
   (
    -- System interface
    s_axi_aclk      : in  std_logic;                                      
    s_axi_aresetn   : in  std_logic;                                      
    -- AXI Write address channel signals                                        
    s_axi_awaddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_awvalid   : in  std_logic;                                      
    s_axi_awready   : out std_logic;                                      
    -- AXI Write data channel signals                                           
    s_axi_wdata     : in  std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_wstrb     : in  std_logic_vector(((C_S_AXI_DATA_WIDTH/8)-1) downto 0);              
    s_axi_wvalid    : in  std_logic;                                      
    s_axi_wready    : out std_logic;                                      
    -- AXI Write response channel signals                                       
    s_axi_bresp     : out std_logic_vector(1 downto 0);                   
    s_axi_bvalid    : out std_logic;                                      
    s_axi_bready    : in  std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_araddr    : in  std_logic_vector((C_S_AXI_ADDR_WIDTH-1) downto 0);                  
    s_axi_arvalid   : in  std_logic;                                      
    s_axi_arready   : out std_logic;                                      
    -- AXI Read address channel signals                                         
    s_axi_rdata     : out std_logic_vector((C_S_AXI_DATA_WIDTH-1) downto 0);                  
    s_axi_rresp     : out std_logic_vector(1 downto 0);                   
    s_axi_rvalid    : out std_logic;                                      
    s_axi_rready    : in  std_logic;                                      
                                                                                
   -- Input to the system from the axi_xadc core
    ip2intc_irpt    : out std_logic;
 
   -- SYSMON External interface signals

    -- Conversion start control signal for Event driven mode
    vp              : in  STD_LOGIC;
    vn              : in  STD_LOGIC;
    busy_out        : out  STD_LOGIC;                        -- ADC Busy signal
    channel_out     : out  STD_LOGIC_VECTOR (5 downto 0);    -- Channel Selection Outputs
    eoc_out         : out  STD_LOGIC;                        -- End of Conversion Signal
    eos_out         : out  STD_LOGIC;                        -- End of Sequence Signal
    alarm_out       : out STD_LOGIC_VECTOR(15 downto 0)
   );
  end component;

  signal alm_int : std_logic_vector (15 downto 0);

begin

       alarm_out <= alm_int(7);

   U0 : u96v2_sbc_base_system_management_wiz_0_0_axi_xadc 
   generic map
   (
    C_INSTANCE              => "u96v2_sbc_base_system_management_wiz_0_0_axi_xadc",
    C_FAMILY                => "kintexu",
    C_S_AXI_ADDR_WIDTH      => 13,
    C_S_AXI_DATA_WIDTH      => 32,
    C_INCLUDE_INTR          => 1,
    C_SIM_MONITOR_FILE      => "design.txt"
   )
   port map
   (
    s_axi_aclk      => s_axi_aclk,                    
    s_axi_aresetn   => s_axi_aresetn,                    
    s_axi_awaddr    => s_axi_awaddr,                    
    s_axi_awvalid   => s_axi_awvalid,                    
    s_axi_awready   => s_axi_awready,                    
    s_axi_wdata     => s_axi_wdata,                    
    s_axi_wstrb     => s_axi_wstrb,                    
    s_axi_wvalid    => s_axi_wvalid,                    
    s_axi_wready    => s_axi_wready,                    
    s_axi_bresp     => s_axi_bresp,                    
    s_axi_bvalid    => s_axi_bvalid,                    
    s_axi_bready    => s_axi_bready,                    
    s_axi_araddr    => s_axi_araddr,                    
    s_axi_arvalid   => s_axi_arvalid,                    
    s_axi_arready   => s_axi_arready,                    
    s_axi_rdata     => s_axi_rdata,                    
    s_axi_rresp     => s_axi_rresp,                    
    s_axi_rvalid    => s_axi_rvalid,                    
    s_axi_rready    => s_axi_rready,                    
    ip2intc_irpt    => ip2intc_irpt,  

    vp      => '0',
    vn      => '0',
    busy_out => busy_out,
    channel_out => channel_out,
    eoc_out => eoc_out,
    eos_out => eos_out,
    alarm_out  => alm_int
    );

end xilinx;

