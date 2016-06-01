-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2015.3
-- Copyright (C) 2015 Xilinx Inc. All rights reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity edge2pulse is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    signal_r : IN STD_LOGIC_VECTOR (0 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of edge2pulse is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "edge2pulse,hls_ip_2015_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.311000,HLS_SYN_LAT=1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=7,HLS_SYN_LUT=5}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";

    signal reg_V : STD_LOGIC_VECTOR (2 downto 0) := "000";
    signal tmp_3_fu_90_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_3_reg_96 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_bdd_21 : BOOLEAN;
    signal p_s_phi_fu_42_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_s_reg_38 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_bdd_31 : BOOLEAN;
    signal p_Result_s_fu_58_p3 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_fu_54_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_2_fu_80_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_fu_72_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_1_not_fu_84_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);


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


    -- p_s_reg_38 assign process. --
    p_s_reg_38_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((tmp_3_fu_90_p2 = ap_const_lv1_0)))) then 
                p_s_reg_38 <= ap_const_lv1_0;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_3_reg_96 = ap_const_lv1_0))) then 
                p_s_reg_38 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    -- assign process. --
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) then
                reg_V <= p_Result_s_fu_58_p3;
                tmp_3_reg_96 <= tmp_3_fu_90_p2;
            end if;
        end if;
    end process;

    -- the next state (ap_NS_fsm) of the state machine. --
    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                ap_NS_fsm <= ap_ST_st2_fsm_1;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_return <= p_s_phi_fu_42_p4;

    -- ap_sig_bdd_21 assign process. --
    ap_sig_bdd_21_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_21 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    -- ap_sig_bdd_31 assign process. --
    ap_sig_bdd_31_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_bdd_31 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    -- ap_sig_cseq_ST_st1_fsm_0 assign process. --
    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_bdd_21)
    begin
        if (ap_sig_bdd_21) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    -- ap_sig_cseq_ST_st2_fsm_1 assign process. --
    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_bdd_31)
    begin
        if (ap_sig_bdd_31) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;

    p_Result_1_not_fu_84_p2 <= (tmp_2_fu_80_p1 xor ap_const_lv1_1);
    p_Result_s_fu_58_p3 <= (tmp_fu_54_p1 & signal_r);

    -- p_s_phi_fu_42_p4 assign process. --
    p_s_phi_fu_42_p4_assign_proc : process(tmp_3_reg_96, p_s_reg_38, ap_sig_cseq_ST_st2_fsm_1)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (tmp_3_reg_96 = ap_const_lv1_0))) then 
            p_s_phi_fu_42_p4 <= ap_const_lv1_1;
        else 
            p_s_phi_fu_42_p4 <= p_s_reg_38;
        end if; 
    end process;

    tmp_1_fu_72_p3 <= reg_V(1 downto 1);
    tmp_2_fu_80_p1 <= reg_V(1 - 1 downto 0);
    tmp_3_fu_90_p2 <= (tmp_1_fu_72_p3 or p_Result_1_not_fu_84_p2);
    tmp_fu_54_p1 <= reg_V(2 - 1 downto 0);
end behav;