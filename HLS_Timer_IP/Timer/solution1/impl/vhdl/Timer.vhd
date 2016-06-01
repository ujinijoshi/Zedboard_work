-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.3
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Timer is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    PPS : IN STD_LOGIC_VECTOR (0 downto 0);
    pps_en : IN STD_LOGIC_VECTOR (0 downto 0);
    num_clks : IN STD_LOGIC_VECTOR (31 downto 0);
    hop_rate : IN STD_LOGIC_VECTOR (31 downto 0);
    trigger_out : OUT STD_LOGIC_VECTOR (0 downto 0);
    trigger_out_ap_vld : OUT STD_LOGIC;
    pps_edge : OUT STD_LOGIC_VECTOR (0 downto 0);
    pps_edge_ap_vld : OUT STD_LOGIC );
end;


architecture behav of Timer is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "Timer,hls_ip_2015_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.958000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=167,HLS_SYN_LUT=184}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_19 : BOOLEAN;
    signal state : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ticks : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    signal trigger_count : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal grp_read_fu_68_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal PPS_read_reg_195 : STD_LOGIC_VECTOR (0 downto 0);
    signal state_load_load_fu_112_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal state_load_reg_200 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_50 : BOOLEAN;
    signal trigger_count_load_reg_204 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_209 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_bdd_68 : BOOLEAN;
    signal tmp_7_fu_160_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_154_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_6_fu_172_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal num_clks_assign_fu_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal hop_rate_assign_fu_52 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_2_fu_123_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);


begin




    -- the current state (ap_CS_fsm) of the state machine. --
    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    -- state assign process. --
    state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                state <= ap_const_lv1_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2)))) then 
                    state <= ap_const_lv1_1;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = state_load_load_fu_112_p1)) and not((ap_const_lv1_0 = tmp_3_fu_129_p2)))) then 
                    state <= ap_const_lv1_0;
                end if; 
            end if;
        end if;
    end process;


    -- ticks assign process. --
    ticks_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ticks <= ap_const_lv32_1;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = state_load_reg_200)) and (ap_const_lv1_0 = tmp_3_reg_209) and (ap_const_lv1_0 = tmp_5_fu_154_p2))) then 
                    ticks <= tmp_7_fu_160_p2;
                elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then 
                    ticks <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    -- trigger_count assign process. --
    trigger_count_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                trigger_count <= ap_const_lv32_0;
            else
                if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = state_load_reg_200)) and (ap_const_lv1_0 = tmp_3_reg_209) and not((ap_const_lv1_0 = tmp_5_fu_154_p2)))) then 
                    trigger_count <= tmp_6_fu_172_p2;
                elsif ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = state_load_load_fu_112_p1)) and not((ap_const_lv1_0 = tmp_3_fu_129_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = state_load_load_fu_112_p1)))) then 
                    trigger_count <= ap_const_lv32_0;
                end if; 
            end if;
        end if;
    end process;


    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                PPS_read_reg_195 <= PPS;
                hop_rate_assign_fu_52 <= hop_rate;
                num_clks_assign_fu_48 <= num_clks;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then
                state_load_reg_200 <= state;
            end if;
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = state_load_load_fu_112_p1)))) then
                tmp_3_reg_209 <= tmp_3_fu_129_p2;
                trigger_count_load_reg_204 <= trigger_count;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, grp_read_fu_68_p2, state_load_reg_200, tmp_3_reg_209, tmp_5_fu_154_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                if ((((ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_3_reg_209))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_5_fu_154_p2))))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    -- ap_done assign process. --
    ap_done_assign_proc : process(grp_read_fu_68_p2, state_load_reg_200, tmp_3_reg_209, ap_sig_cseq_ST_st3_fsm_2, tmp_5_fu_154_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (((ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_3_reg_209))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_5_fu_154_p2)))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_idle assign process. --
    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if ((not((ap_const_logic_1 = ap_start)) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_ready assign process. --
    ap_ready_assign_proc : process(grp_read_fu_68_p2, state_load_reg_200, tmp_3_reg_209, ap_sig_cseq_ST_st3_fsm_2, tmp_5_fu_154_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (((ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_3_reg_209))) or (not((ap_const_lv1_0 = state_load_reg_200)) and not((ap_const_lv1_0 = tmp_5_fu_154_p2)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_bdd_19 assign process. --
    ap_sig_bdd_19_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_19 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_50 assign process. --
    ap_sig_bdd_50_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_50 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_bdd_68 assign process. --
    ap_sig_bdd_68_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_68 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_19)
    begin
        if (ap_sig_bdd_19) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_50)
    begin
        if (ap_sig_bdd_50) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st3_fsm_2 assign process. --
    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_bdd_68)
    begin
        if (ap_sig_bdd_68) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;

    grp_read_fu_68_p2 <= PPS;
    pps_edge <= PPS_read_reg_195;

    -- pps_edge_ap_vld assign process. --
    pps_edge_ap_vld_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            pps_edge_ap_vld <= ap_const_logic_1;
        else 
            pps_edge_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    state_load_load_fu_112_p1 <= state;
    tmp_2_fu_123_p2 <= std_logic_vector(unsigned(hop_rate_assign_fu_52) + unsigned(ap_const_lv32_FFFFFFFF));
    tmp_3_fu_129_p2 <= "1" when (trigger_count = tmp_2_fu_123_p2) else "0";
    tmp_5_fu_154_p2 <= "1" when (ticks = num_clks_assign_fu_48) else "0";
    tmp_6_fu_172_p2 <= std_logic_vector(unsigned(trigger_count_load_reg_204) + unsigned(ap_const_lv32_1));
    tmp_7_fu_160_p2 <= std_logic_vector(unsigned(ticks) + unsigned(ap_const_lv32_1));

    -- trigger_out assign process. --
    trigger_out_assign_proc : process(grp_read_fu_68_p2, state_load_reg_200, ap_sig_cseq_ST_st2_fsm_1, tmp_3_reg_209, ap_sig_cseq_ST_st3_fsm_2, tmp_5_fu_154_p2)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = state_load_reg_200)) and (ap_const_lv1_0 = tmp_3_reg_209) and not((ap_const_lv1_0 = tmp_5_fu_154_p2))))) then 
            trigger_out <= ap_const_lv1_1;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            trigger_out <= ap_const_lv1_0;
        else 
            trigger_out <= "X";
        end if; 
    end process;


    -- trigger_out_ap_vld assign process. --
    trigger_out_ap_vld_assign_proc : process(grp_read_fu_68_p2, state_load_reg_200, ap_sig_cseq_ST_st2_fsm_1, tmp_3_reg_209, ap_sig_cseq_ST_st3_fsm_2, tmp_5_fu_154_p2)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) or ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (ap_const_lv1_0 = state_load_reg_200) and not((ap_const_lv1_0 = grp_read_fu_68_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and not((ap_const_lv1_0 = state_load_reg_200)) and (ap_const_lv1_0 = tmp_3_reg_209) and not((ap_const_lv1_0 = tmp_5_fu_154_p2))))) then 
            trigger_out_ap_vld <= ap_const_logic_1;
        else 
            trigger_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;
