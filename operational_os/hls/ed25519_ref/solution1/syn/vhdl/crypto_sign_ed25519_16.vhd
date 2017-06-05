-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2017.1
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity crypto_sign_ed25519_16 is
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
    y_v_address0 : OUT STD_LOGIC_VECTOR (4 downto 0);
    y_v_ce0 : OUT STD_LOGIC;
    y_v_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of crypto_sign_ed25519_16 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (8 downto 0) := "000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (8 downto 0) := "000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (8 downto 0) := "000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (8 downto 0) := "000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (8 downto 0) := "000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (8 downto 0) := "001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (8 downto 0) := "010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv5_1F : STD_LOGIC_VECTOR (4 downto 0) := "11111";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal m_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal m_ce0 : STD_LOGIC;
    signal m_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_49_fu_205_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_49_reg_396 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal r_v_addr_reg_401 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond1_fu_199_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_50_fu_230_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_50_reg_414 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal r_v_addr_18_reg_419 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_fu_224_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal r_v_addr_19_reg_424 : STD_LOGIC_VECTOR (4 downto 0);
    signal i_51_fu_282_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_51_reg_438 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal tmp_i_fu_288_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_reg_443 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond2_i_fu_276_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal mask_cast_fu_297_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal mask_cast_reg_458 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_783_fu_321_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal i_52_fu_359_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_52_reg_471 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal r_v_addr_21_reg_476 : STD_LOGIC_VECTOR (4 downto 0);
    signal exitcond_i_fu_353_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal t_address0 : STD_LOGIC_VECTOR (4 downto 0);
    signal t_ce0 : STD_LOGIC;
    signal t_we0 : STD_LOGIC;
    signal t_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal t_q0 : STD_LOGIC_VECTOR (7 downto 0);
    signal i_reg_143 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal i_1_reg_154 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal pb_i_reg_165 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_i_reg_177 : STD_LOGIC_VECTOR (5 downto 0);
    signal i_1_i_reg_188 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal tmp_fu_211_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_779_fu_236_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_780_fu_241_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_764_i_fu_365_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal mask_fu_50 : STD_LOGIC_VECTOR (1 downto 0);
    signal phitmp_i_cast_cast_fu_340_p3 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_s_fu_217_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_852_cast_fu_271_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_768_i_fu_386_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal carry_fu_250_p4 : STD_LOGIC_VECTOR (23 downto 0);
    signal carry_1_fu_260_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_782_fu_246_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal pb_i_cast1_fu_301_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal pb_fu_305_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal pb_4_cast_fu_311_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal x_3_fu_315_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal phitmp_i_fu_334_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_765_i_fu_371_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_766_i_fu_375_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_767_i_fu_381_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (8 downto 0);

    component reduce_add_sub_m IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component reduce_add_sub_t IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (4 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (7 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;



begin
    m_U : component reduce_add_sub_m
    generic map (
        DataWidth => 8,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => m_address0,
        ce0 => m_ce0,
        q0 => m_q0);

    t_U : component reduce_add_sub_t
    generic map (
        DataWidth => 8,
        AddressRange => 32,
        AddressWidth => 5)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => t_address0,
        ce0 => t_ce0,
        we0 => t_we0,
        d0 => t_d0,
        q0 => t_q0);





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


    i_1_i_reg_188_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond2_i_fu_276_p2 = ap_const_lv1_1))) then 
                i_1_i_reg_188 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
                i_1_i_reg_188 <= i_52_reg_471;
            end if; 
        end if;
    end process;

    i_1_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_199_p2 = ap_const_lv1_1))) then 
                i_1_reg_154 <= ap_const_lv5_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                i_1_reg_154 <= i_50_reg_414;
            end if; 
        end if;
    end process;

    i_i_reg_177_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_224_p2 = ap_const_lv1_1))) then 
                i_i_reg_177 <= ap_const_lv6_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                i_i_reg_177 <= i_51_reg_438;
            end if; 
        end if;
    end process;

    i_reg_143_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
                i_reg_143 <= i_49_reg_396;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_reg_143 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    pb_i_reg_165_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_224_p2 = ap_const_lv1_1))) then 
                pb_i_reg_165 <= ap_const_lv1_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                pb_i_reg_165 <= x_3_fu_315_p2(31 downto 31);
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_49_reg_396 <= i_49_fu_205_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_50_reg_414 <= i_50_fu_230_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                i_51_reg_438 <= i_51_fu_282_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state8)) then
                i_52_reg_471 <= i_52_fu_359_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond2_i_fu_276_p2 = ap_const_lv1_1))) then
                mask_cast_reg_458 <= mask_cast_fu_297_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state7)) then
                mask_fu_50 <= phitmp_i_cast_cast_fu_340_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (ap_const_lv1_0 = exitcond_fu_224_p2))) then
                r_v_addr_18_reg_419 <= tmp_779_fu_236_p1(5 - 1 downto 0);
                r_v_addr_19_reg_424 <= tmp_780_fu_241_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_0 = exitcond_i_fu_353_p2))) then
                r_v_addr_21_reg_476 <= tmp_764_i_fu_365_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_199_p2 = ap_const_lv1_0))) then
                r_v_addr_reg_401 <= tmp_fu_211_p1(5 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (ap_const_lv1_0 = exitcond2_i_fu_276_p2))) then
                    tmp_i_reg_443(5 downto 0) <= tmp_i_fu_288_p1(5 downto 0);
            end if;
        end if;
    end process;
    tmp_i_reg_443(63 downto 6) <= "0000000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, exitcond1_fu_199_p2, ap_CS_fsm_state4, exitcond_fu_224_p2, ap_CS_fsm_state6, exitcond2_i_fu_276_p2, ap_CS_fsm_state8, exitcond_i_fu_353_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (exitcond1_fu_199_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_224_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (exitcond2_i_fu_276_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state8 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_1 = exitcond_i_fu_353_p2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state9;
                end if;
            when ap_ST_fsm_state9 => 
                ap_NS_fsm <= ap_ST_fsm_state8;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state8, exitcond_i_fu_353_p2)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_1 = exitcond_i_fu_353_p2)))) then 
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


    ap_ready_assign_proc : process(ap_CS_fsm_state8, exitcond_i_fu_353_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state8) and (ap_const_lv1_1 = exitcond_i_fu_353_p2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    carry_1_fu_260_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(carry_fu_250_p4),32));
    carry_fu_250_p4 <= r_v_q0(31 downto 8);
    exitcond1_fu_199_p2 <= "1" when (i_reg_143 = ap_const_lv6_20) else "0";
    exitcond2_i_fu_276_p2 <= "1" when (i_i_reg_177 = ap_const_lv6_20) else "0";
    exitcond_fu_224_p2 <= "1" when (i_1_reg_154 = ap_const_lv5_1F) else "0";
    exitcond_i_fu_353_p2 <= "1" when (i_1_i_reg_188 = ap_const_lv6_20) else "0";
    i_49_fu_205_p2 <= std_logic_vector(unsigned(i_reg_143) + unsigned(ap_const_lv6_1));
    i_50_fu_230_p2 <= std_logic_vector(unsigned(i_1_reg_154) + unsigned(ap_const_lv5_1));
    i_51_fu_282_p2 <= std_logic_vector(unsigned(i_i_reg_177) + unsigned(ap_const_lv6_1));
    i_52_fu_359_p2 <= std_logic_vector(unsigned(i_1_i_reg_188) + unsigned(ap_const_lv6_1));
    m_address0 <= tmp_i_fu_288_p1(5 - 1 downto 0);

    m_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            m_ce0 <= ap_const_logic_1;
        else 
            m_ce0 <= ap_const_logic_0;
        end if; 
    end process;

        mask_cast_fu_297_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(mask_fu_50),32));

    pb_4_cast_fu_311_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pb_fu_305_p2),32));
    pb_fu_305_p2 <= std_logic_vector(unsigned(m_q0) + unsigned(pb_i_cast1_fu_301_p1));
    pb_i_cast1_fu_301_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(pb_i_reg_165),8));
    phitmp_i_cast_cast_fu_340_p3 <= 
        ap_const_lv2_3 when (phitmp_i_fu_334_p2(0) = '1') else 
        ap_const_lv2_0;
    phitmp_i_fu_334_p2 <= (tmp_783_fu_321_p3 xor ap_const_lv1_1);

    r_v_address0_assign_proc : process(ap_CS_fsm_state2, r_v_addr_reg_401, ap_CS_fsm_state4, r_v_addr_18_reg_419, r_v_addr_21_reg_476, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state9, tmp_fu_211_p1, tmp_779_fu_236_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            r_v_address0 <= r_v_addr_21_reg_476;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_address0 <= r_v_addr_18_reg_419;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            r_v_address0 <= tmp_779_fu_236_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            r_v_address0 <= r_v_addr_reg_401;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            r_v_address0 <= tmp_fu_211_p1(5 - 1 downto 0);
        else 
            r_v_address0 <= "XXXXX";
        end if; 
    end process;


    r_v_address1_assign_proc : process(ap_CS_fsm_state4, r_v_addr_19_reg_424, ap_CS_fsm_state6, tmp_i_fu_288_p1, ap_CS_fsm_state8, ap_CS_fsm_state5, tmp_780_fu_241_p1, tmp_764_i_fu_365_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            r_v_address1 <= tmp_764_i_fu_365_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            r_v_address1 <= tmp_i_fu_288_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_address1 <= r_v_addr_19_reg_424;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            r_v_address1 <= tmp_780_fu_241_p1(5 - 1 downto 0);
        else 
            r_v_address1 <= "XXXXX";
        end if; 
    end process;


    r_v_ce0_assign_proc : process(ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state2) or (ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            r_v_ce0 <= ap_const_logic_1;
        else 
            r_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_ce1_assign_proc : process(ap_CS_fsm_state4, ap_CS_fsm_state6, ap_CS_fsm_state8, ap_CS_fsm_state5)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state4) or (ap_const_logic_1 = ap_CS_fsm_state6) or (ap_const_logic_1 = ap_CS_fsm_state8) or (ap_const_logic_1 = ap_CS_fsm_state5))) then 
            r_v_ce1 <= ap_const_logic_1;
        else 
            r_v_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_d0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state9, tmp_s_fu_217_p2, tmp_852_cast_fu_271_p1, tmp_768_i_fu_386_p2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state9)) then 
            r_v_d0 <= tmp_768_i_fu_386_p2;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_d0 <= tmp_852_cast_fu_271_p1;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            r_v_d0 <= tmp_s_fu_217_p2;
        else 
            r_v_d0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    r_v_d1 <= std_logic_vector(unsigned(carry_1_fu_260_p1) + unsigned(r_v_q1));

    r_v_we0_assign_proc : process(ap_CS_fsm_state3, ap_CS_fsm_state5, ap_CS_fsm_state9)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state3) or (ap_const_logic_1 = ap_CS_fsm_state5) or (ap_const_logic_1 = ap_CS_fsm_state9))) then 
            r_v_we0 <= ap_const_logic_1;
        else 
            r_v_we0 <= ap_const_logic_0;
        end if; 
    end process;


    r_v_we1_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            r_v_we1 <= ap_const_logic_1;
        else 
            r_v_we1 <= ap_const_logic_0;
        end if; 
    end process;


    t_address0_assign_proc : process(tmp_i_reg_443, ap_CS_fsm_state7, ap_CS_fsm_state8, tmp_764_i_fu_365_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state8)) then 
            t_address0 <= tmp_764_i_fu_365_p1(5 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            t_address0 <= tmp_i_reg_443(5 - 1 downto 0);
        else 
            t_address0 <= "XXXXX";
        end if; 
    end process;


    t_ce0_assign_proc : process(ap_CS_fsm_state7, ap_CS_fsm_state8)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or (ap_const_logic_1 = ap_CS_fsm_state8))) then 
            t_ce0 <= ap_const_logic_1;
        else 
            t_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    t_d0 <= x_3_fu_315_p2(8 - 1 downto 0);

    t_we0_assign_proc : process(ap_CS_fsm_state7)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
            t_we0 <= ap_const_logic_1;
        else 
            t_we0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_764_i_fu_365_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_i_reg_188),64));
    tmp_765_i_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(t_q0),32));
    tmp_766_i_fu_375_p2 <= (r_v_q1 xor tmp_765_i_fu_371_p1);
    tmp_767_i_fu_381_p2 <= (tmp_766_i_fu_375_p2 and mask_cast_reg_458);
    tmp_768_i_fu_386_p2 <= (r_v_q1 xor tmp_767_i_fu_381_p2);
    tmp_779_fu_236_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_1_reg_154),64));
    tmp_780_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_50_fu_230_p2),64));
    tmp_782_fu_246_p1 <= r_v_q0(8 - 1 downto 0);
    tmp_783_fu_321_p3 <= x_3_fu_315_p2(31 downto 31);
    tmp_852_cast_fu_271_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_782_fu_246_p1),32));
    tmp_fu_211_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_143),64));
    tmp_i_fu_288_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_i_reg_177),64));
    tmp_s_fu_217_p2 <= std_logic_vector(unsigned(r_v_q0) + unsigned(y_v_q0));
    x_3_fu_315_p2 <= std_logic_vector(unsigned(r_v_q1) - unsigned(pb_4_cast_fu_311_p1));
    y_v_address0 <= tmp_fu_211_p1(5 - 1 downto 0);

    y_v_ce0_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            y_v_ce0 <= ap_const_logic_1;
        else 
            y_v_ce0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;