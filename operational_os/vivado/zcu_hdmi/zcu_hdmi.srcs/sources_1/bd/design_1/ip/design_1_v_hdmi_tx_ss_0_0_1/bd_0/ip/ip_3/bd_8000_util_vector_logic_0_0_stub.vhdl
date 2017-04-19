-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (lin64) Build 1733598 Wed Dec 14 22:35:42 MST 2016
-- Date        : Sun Apr 16 16:49:08 2017
-- Host        : SchoolComputer running 64-bit Ubuntu 16.10
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_8000_util_vector_logic_0_0 -prefix
--               bd_8000_util_vector_logic_0_0_ bd_8000_util_vector_logic_0_0_stub.vhdl
-- Design      : bd_8000_util_vector_logic_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-i-es2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_8000_util_vector_logic_0_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end bd_8000_util_vector_logic_0_0;

architecture stub of bd_8000_util_vector_logic_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_vector_logic,Vivado 2016.4";
begin
end;
