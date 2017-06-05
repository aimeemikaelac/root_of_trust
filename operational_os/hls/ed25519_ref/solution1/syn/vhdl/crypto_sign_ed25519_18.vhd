-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity crypto_sign_ed25519_18 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    r_v_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    r_v_ce0 : OUT STD_LOGIC;
    r_v_we0 : OUT STD_LOGIC;
    r_v_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_v_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    r_v_address1 : OUT STD_LOGIC_VECTOR (4 downto 0);
    r_v_ce1 : OUT STD_LOGIC;
    r_v_we1 : OUT STD_LOGIC;
    r_v_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    r_v_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    x_v_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    x_v_ce0 : OUT STD_LOGIC;
    x_v_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    y_v_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    y_v_ce0 : OUT STD_LOGIC;
    y_v_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of crypto_sign_ed25519_18 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (14 downto 0) := "000000000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (14 downto 0) := "000000000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (14 downto 0) := "000000000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (14 downto 0) := "000000000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (14 downto 0) := "000000001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (14 downto 0) := "000000010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (14 downto 0) := "000000100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (14 downto 0) := "000001000000000";
    constant ap_ST_fsm_state11 : STD_LOGIC_VECTOR (14 downto 0) := "000010000000000";
    constant ap_ST_fsm_state12 : STD_LOGIC_VECTOR (14 downto 0) := "000100000000000";
    constant ap_ST_fsm_state13 : STD_LOGIC_VECTOR (14 downto 0) := "001000000000000";
    constant ap_ST_fsm_state14 : STD_LOGIC_VECTOR (14 downto 0) := "010000000000000";
    constant ap_ST_fsm_state15 : STD_LOGIC_VECTOR (14 downto 0) := "100000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_A : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001010";
    constant ap_const_lv32_B : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001011";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv64_1F : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000011111";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv6_3F : STD_LOGIC_VECTOR (5 downto 0) := "111111";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv32_26 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000100110";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv31_13 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000010011";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (14 downto 0) := "000000000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_37_fu_248_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_39_fu_265_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_39_reg_461 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal exitcond2_fu_259_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal x_v_load_reg_471 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal j_1_fu_282_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal j_1_reg_479 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal exitcond1_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_767_fu_293_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_767_reg_489 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_766_fu_299_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_766_reg_494 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal t_addr_11_reg_499 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal exitcond_fu_314_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_762_fu_331_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_762_reg_517 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal t_q0 : STD_LOGIC_VECTOR (31 downto 0);
    signal t_load_2_reg_527 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_41_fu_336_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_41_reg_532 : STD_LOGIC_VECTOR (5 downto 0);
    signal r_v_addr_reg_537 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state11 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state11 : signal is "none";
    signal rep_fu_360_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal rep_reg_552 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state12 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state12 : signal is "none";
    signal i_42_fu_395_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_42_reg_560 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state14 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state14 : signal is "none";
    signal r_v_addr_11_reg_565 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_i_fu_389_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_v_addr_12_reg_571 : STD_LOGIC_VECTOR (4 downto 0);
    signal t_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal t_ce0 : STD_LOGIC;
    signal t_we0 : STD_LOGIC;
    signal t_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_reg_174 : STD_LOGIC_VECTOR (5 downto 0);
    signal exitcond3_fu_242_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_1_reg_185 : STD_LOGIC_VECTOR (5 downto 0);
    signal j_reg_197 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i_2_reg_208 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal rep_i_reg_220 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_i_reg_231 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state13 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state13 : signal is "none";
    signal ap_CS_fsm_state15 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state15 : signal is "none";
    signal tmp_fu_254_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_271_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_765_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_768_fu_304_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_763_fu_320_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_755_i_fu_401_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_756_i_fu_406_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_769_fu_308_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_764_fu_347_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_i_cast_fu_384_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_441_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_757_i_fu_429_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_758_i_cast_fu_436_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_766_fu_299_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_761_fu_325_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp2_i_fu_342_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_757_fu_370_p4 : STD_LOGIC_VECTOR (24 downto 0);
    signal tmp_770_fu_366_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal t_s_fu_415_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal t_6_fu_425_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_771_fu_411_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_441_p0 : STD_LOGIC_VECTOR (5 downto 0);
    signal grp_fu_441_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal exitcond1_i_fu_354_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (14 downto 0);
    signal grp_fu_441_p10 : STD_LOGIC_VECTOR (30 downto 0);

    component crypto_sign_mac_mpcA IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (5 downto 0);
        din1 : IN STD_LOGIC_VECTOR (24 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component crypto_sign_ed255sc4 IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (5 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (31 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    t_U : component crypto_sign_ed255sc4
    generic map (
        DataWidth => 32,
        AddressRange => 63,
        AddressWidth => 6)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => t_address0,
        ce0 => t_ce0,
        we0 => t_we0,
        d0 => t_d0,
        q0 => t_q0);

    crypto_sign_mac_mpcA_x_U63 : component crypto_sign_mac_mpcA
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 6,
        din1_WIDTH => 25,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => grp_fu_441_p0,
        din1 => grp_fu_441_p1,
        din2 => r_v_q1,
        dout => grp_fu_441_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_1_reg_185_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond3_fu_242_p2))) then 
                i_1_reg_185 <= ap_const_lv6_0;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond1_fu_276_p2 = ap_const_lv1_1))) then 
                i_1_reg_185 <= i_39_reg_461;
            end if; 
        end if;
    end process;

    i_2_reg_208_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_259_p2 = ap_const_lv1_1))) then 
                i_2_reg_208 <= ap_const_lv6_20;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
                i_2_reg_208 <= i_41_reg_532;
            end if; 
        end if;
    end process;

    i_i_reg_231_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
                i_i_reg_231 <= i_42_reg_560;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
                i_i_reg_231 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    i_reg_174_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond3_fu_242_p2))) then 
                i_reg_174 <= i_37_fu_248_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_174 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    j_reg_197_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
                j_reg_197 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                j_reg_197 <= j_1_reg_479;
            end if; 
        end if;
    end process;

    rep_i_reg_220_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) and (ap_const_lv1_1 = exitcond_i_fu_389_p2))) then 
                rep_i_reg_220 <= rep_reg_552;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
                rep_i_reg_220 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                i_39_reg_461 <= i_39_fu_265_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                i_41_reg_532 <= i_41_fu_336_p2;
                t_load_2_reg_527 <= t_q0;
                    tmp_762_reg_517(5 downto 0) <= tmp_762_fu_331_p1(5 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state14)) then
                i_42_reg_560 <= i_42_fu_395_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                j_1_reg_479 <= j_1_fu_282_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state14) and (ap_const_lv1_0 = exitcond_i_fu_389_p2))) then
                r_v_addr_11_reg_565 <= tmp_755_i_fu_401_p1(5 - 1 downto 0);
                r_v_addr_12_reg_571 <= tmp_756_i_fu_406_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state12)) then
                rep_reg_552 <= rep_fu_360_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                t_addr_11_reg_499 <= tmp_768_fu_304_p1(6 - 1 downto 0);
                tmp_766_reg_494 <= tmp_766_fu_299_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state5) and (ap_const_lv1_0 = exitcond1_fu_276_p2))) then
                tmp_767_reg_489 <= tmp_767_fu_293_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                x_v_load_reg_471 <= x_v_q0;
            end if;
        end if;
    end process;
    tmp_762_reg_517(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_CS_fsm_state3, exitcond2_fu_259_p2, ap_CS_fsm_state5, exitcond1_fu_276_p2, ap_CS_fsm_state8, exitcond_fu_314_p2, ap_CS_fsm_state12, ap_CS_fsm_state14, exitcond_i_fu_389_p2, exitcond3_fu_242_p2, exitcond1_i_fu_354_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_1 = exitcond3_fu_242_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_state3 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (exitcond2_fu_259_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state5) and (exitcond1_fu_276_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state7;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_314_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state11;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state10;
            when ap_ST_fsm_state10 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when ap_ST_fsm_state11 => 
                ap_NS_fsm <= ap_ST_fsm_state12;
            when ap_ST_fsm_state12 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state12) and (ap_const_lv1_1 = exitcond1_i_fu_354_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state13;
                end if;
            when ap_ST_fsm_state13 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when ap_ST_fsm_state14 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state14) and (ap_const_lv1_1 = exitcond_i_fu_389_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state12;
                else
                    ap_NS_fsm <= ap_ST_fsm_state15;
                end if;
            when ap_ST_fsm_state15 => 
                ap_NS_fsm <= ap_ST_fsm_state14;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state11 <= ap_CS_fsm(10);
    ap_CS_fsm_state12 <= ap_CS_fsm(11);
    ap_CS_fsm_state13 <= ap_CS_fsm(12);
    ap_CS_fsm_state14 <= ap_CS_fsm(13);
    ap_CS_fsm_state15 <= ap_CS_fsm(14);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state12, exitcond1_i_fu_354_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state12) and (ap_const_lv1_1 = exitcond1_i_fu_354_p2)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state12, exitcond1_i_fu_354_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) and (ap_const_lv1_1 = exitcond1_i_fu_354_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    exitcond1_fu_276_p2 <= "1" when (j_reg_197 = ap_const_lv6_20) else "0";
    exitcond1_i_fu_354_p2 <= "1" when (rep_i_reg_220 = ap_const_lv2_2) else "0";
    exitcond2_fu_259_p2 <= "1" when (i_1_reg_185 = ap_const_lv6_20) else "0";
    exitcond3_fu_242_p2 <= "1" when (i_reg_174 = ap_const_lv6_3F) else "0";
    exitcond_fu_314_p2 <= "1" when (i_2_reg_208 = ap_const_lv6_3F) else "0";
    exitcond_i_fu_389_p2 <= "1" when (i_i_reg_231 = ap_const_lv5_1F) else "0";
    grp_fu_441_p0 <= ap_const_lv31_13(6 - 1 downto 0);
    grp_fu_441_p1 <= grp_fu_441_p10(25 - 1 downto 0);
    grp_fu_441_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_757_fu_370_p4),31));
    i_37_fu_248_p2 <= std_logic_vector(unsigned(i_reg_174) + unsigned(ap_const_lv6_1));
    i_39_fu_265_p2 <= std_logic_vector(unsigned(i_1_reg_185) + unsigned(ap_const_lv6_1));
    i_41_fu_336_p2 <= std_logic_vector(unsigned(i_2_reg_208) + unsigned(ap_const_lv6_1));
    i_42_fu_395_p2 <= std_logic_vector(unsigned(i_i_reg_231) + unsigned(ap_const_lv5_1));
    j_1_fu_282_p2 <= std_logic_vector(unsigned(j_reg_197) + unsigned(ap_const_lv6_1));
    r_v_addr_reg_537 <= ap_const_lv64_1F(5 - 1 downto 0);

    r_v_address0_assign_proc : process(tmp_762_reg_517, r_v_addr_reg_537, ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state14, r_v_addr_11_reg_565, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state15, tmp_756_i_fu_406_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            r_v_address0 <= r_v_addr_11_reg_565;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            r_v_address0 <= tmp_756_i_fu_406_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            r_v_address0 <= ap_const_lv64_0(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            r_v_address0 <= r_v_addr_reg_537;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            r_v_address0 <= ap_const_lv64_1F(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            r_v_address0 <= tmp_762_reg_517(5 - 1 downto 0);
        else 
            r_v_address0 <= "XXXXX";
        end if; 
    end process;


    r_v_address1_assign_proc : process(ap_CS_fsm_state12, ap_CS_fsm_state14, r_v_addr_12_reg_571, ap_CS_fsm_state13, ap_CS_fsm_state15, tmp_755_i_fu_401_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            r_v_address1 <= r_v_addr_12_reg_571;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state14)) then 
            r_v_address1 <= tmp_755_i_fu_401_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            r_v_address1 <= ap_const_lv64_1F(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state12)) then 
            r_v_address1 <= ap_const_lv64_0(5 - 1 downto 0);
        else 
            r_v_address1 <= "XXXXX";
        end if; 
    end process;


    r_v_ce0_assign_proc : process(ap_CS_fsm_state11, ap_CS_fsm_state12, ap_CS_fsm_state14, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state15))) then 
            r_v_ce0 <= ap_const_logic_1;
        else 
            r_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_ce1_assign_proc : process(ap_CS_fsm_state12, ap_CS_fsm_state14, ap_CS_fsm_state13, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state12) or (ap_const_logic_1 = ap_CS_fsm_state14) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state15))) then 
            r_v_ce1 <= ap_const_logic_1;
        else 
            r_v_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_d0_assign_proc : process(t_q0, ap_CS_fsm_state11, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state15, tmp_764_fu_347_p2, grp_fu_441_p3, tmp_758_i_cast_fu_436_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            r_v_d0 <= tmp_758_i_cast_fu_436_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            r_v_d0 <= grp_fu_441_p3;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state11)) then 
            r_v_d0 <= t_q0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state10)) then 
            r_v_d0 <= tmp_764_fu_347_p2;
        else 
            r_v_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    r_v_d1_assign_proc : process(ap_CS_fsm_state13, ap_CS_fsm_state15, tmp_i_cast_fu_384_p1, tmp_757_i_fu_429_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state15)) then 
            r_v_d1 <= tmp_757_i_fu_429_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state13)) then 
            r_v_d1 <= tmp_i_cast_fu_384_p1;
        else 
            r_v_d1 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    r_v_we0_assign_proc : process(ap_CS_fsm_state11, ap_CS_fsm_state10, ap_CS_fsm_state13, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state11) or (ap_const_logic_1 = ap_CS_fsm_state10) or (ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state15))) then 
            r_v_we0 <= ap_const_logic_1;
        else 
            r_v_we0 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_we1_assign_proc : process(ap_CS_fsm_state13, ap_CS_fsm_state15)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state13) or (ap_const_logic_1 = ap_CS_fsm_state15))) then 
            r_v_we1 <= ap_const_logic_1;
        else 
            r_v_we1 <= ap_const_logic_0;
        end if; 
    end process;

    rep_fu_360_p2 <= std_logic_vector(unsigned(rep_i_reg_220) + unsigned(ap_const_lv2_1));
    t_6_fu_425_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_s_fu_415_p4),32));

    t_address0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state6, t_addr_11_reg_499, ap_CS_fsm_state8, exitcond_fu_314_p2, tmp_762_fu_331_p1, ap_CS_fsm_state9, ap_CS_fsm_state7, tmp_fu_254_p1, tmp_768_fu_304_p1, tmp_763_fu_320_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            t_address0 <= tmp_762_fu_331_p1(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_314_p2 = ap_const_lv1_1))) then 
            t_address0 <= ap_const_lv64_1F(6 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_0 = exitcond_fu_314_p2))) then 
            t_address0 <= tmp_763_fu_320_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            t_address0 <= t_addr_11_reg_499;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            t_address0 <= tmp_768_fu_304_p1(6 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            t_address0 <= tmp_fu_254_p1(6 - 1 downto 0);
        else 
            t_address0 <= "XXXXXX";
        end if; 
    end process;


    t_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state6, ap_CS_fsm_state8, exitcond_fu_314_p2, ap_CS_fsm_state9, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state6) or ((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_0 = exitcond_fu_314_p2)) or ((ap_const_logic_1 = ap_CS_fsm_state8) and (exitcond_fu_314_p2 = ap_const_lv1_1)) or (ap_const_logic_1 = ap_CS_fsm_state9) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            t_ce0 <= ap_const_logic_1;
        else 
            t_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    t_d0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state7, tmp_769_fu_308_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            t_d0 <= tmp_769_fu_308_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            t_d0 <= ap_const_lv32_0;
        else 
            t_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    t_s_fu_415_p4 <= r_v_q1(31 downto 8);

    t_we0_assign_proc : process(ap_CS_fsm_state2, exitcond3_fu_242_p2, ap_CS_fsm_state7)
    begin
        if ((((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_const_lv1_0 = exitcond3_fu_242_p2)) or (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            t_we0 <= ap_const_logic_1;
        else 
            t_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp2_i_fu_342_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(t_load_2_reg_527) * signed('0' &ap_const_lv32_26))), 32));
    tmp_755_i_fu_401_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_i_reg_231),64));
    tmp_756_i_fu_406_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_42_fu_395_p2),64));
    tmp_757_fu_370_p4 <= r_v_q0(31 downto 7);
    tmp_757_i_fu_429_p2 <= std_logic_vector(unsigned(t_6_fu_425_p1) + unsigned(r_v_q0));
    tmp_758_i_cast_fu_436_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_771_fu_411_p1),32));
    tmp_761_fu_325_p2 <= (i_2_reg_208 xor ap_const_lv6_20);
    tmp_762_fu_331_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_761_fu_325_p2),64));
    tmp_763_fu_320_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_2_reg_208),64));
    tmp_764_fu_347_p2 <= std_logic_vector(unsigned(t_q0) + unsigned(tmp2_i_fu_342_p2));
    tmp_765_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_197),64));
    tmp_766_fu_299_p1 <= y_v_q0;
    tmp_766_fu_299_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(x_v_load_reg_471) * signed(tmp_766_fu_299_p1))), 32));
    tmp_767_fu_293_p2 <= std_logic_vector(unsigned(i_1_reg_185) + unsigned(j_reg_197));
    tmp_768_fu_304_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_767_reg_489),64));
    tmp_769_fu_308_p2 <= std_logic_vector(unsigned(t_q0) + unsigned(tmp_766_reg_494));
    tmp_770_fu_366_p1 <= r_v_q0(7 - 1 downto 0);
    tmp_771_fu_411_p1 <= r_v_q1(8 - 1 downto 0);
    tmp_fu_254_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_174),64));
    tmp_i_cast_fu_384_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_770_fu_366_p1),32));
    tmp_s_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_185),64));
    x_v_address0 <= tmp_s_fu_271_p1(5 - 1 downto 0);

    x_v_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            x_v_ce0 <= ap_const_logic_1;
        else 
            x_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    y_v_address0 <= tmp_765_fu_288_p1(5 - 1 downto 0);

    y_v_ce0_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            y_v_ce0 <= ap_const_logic_1;
        else 
            y_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;