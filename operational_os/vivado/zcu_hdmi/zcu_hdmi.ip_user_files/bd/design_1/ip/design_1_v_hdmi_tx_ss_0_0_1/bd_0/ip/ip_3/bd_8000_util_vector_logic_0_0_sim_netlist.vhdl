-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Sun Apr 16 16:49:08 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode funcsim -rename_top bd_8000_util_vector_logic_0_0 -prefix
--               bd_8000_util_vector_logic_0_0_ bd_8000_util_vector_logic_0_0_sim_netlist.vhdl
-- Design      : bd_8000_util_vector_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_8000_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_8000_util_vector_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_8000_util_vector_logic_0_0 : entity is "bd_8000_util_vector_logic_0_0,util_vector_logic,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_8000_util_vector_logic_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bd_8000_util_vector_logic_0_0 : entity is "util_vector_logic,Vivado 2016.4";
end bd_8000_util_vector_logic_0_0;

architecture STRUCTURE of bd_8000_util_vector_logic_0_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
