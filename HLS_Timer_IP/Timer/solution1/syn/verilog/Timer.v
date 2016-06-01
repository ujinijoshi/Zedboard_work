// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.3
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="Timer,hls_ip_2015_3,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.958000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=167,HLS_SYN_LUT=184}" *)

module Timer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        PPS,
        pps_en,
        num_clks,
        hop_rate,
        trigger_out,
        trigger_out_ap_vld,
        pps_edge,
        pps_edge_ap_vld
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_st2_fsm_1 = 3'b10;
parameter    ap_ST_st3_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] PPS;
input  [0:0] pps_en;
input  [31:0] num_clks;
input  [31:0] hop_rate;
output  [0:0] trigger_out;
output   trigger_out_ap_vld;
output  [0:0] pps_edge;
output   pps_edge_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] trigger_out;
reg trigger_out_ap_vld;
reg pps_edge_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm = 3'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_19;
reg   [0:0] state = 1'b0;
reg   [31:0] ticks = 32'b1;
reg   [31:0] trigger_count = 32'b00000000000000000000000000000000;
wire   [0:0] grp_read_fu_68_p2;
reg   [0:0] PPS_read_reg_195;
wire   [0:0] state_load_load_fu_112_p1;
reg   [0:0] state_load_reg_200;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_bdd_50;
reg   [31:0] trigger_count_load_reg_204;
wire   [0:0] tmp_3_fu_129_p2;
reg   [0:0] tmp_3_reg_209;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_bdd_68;
wire   [31:0] tmp_7_fu_160_p2;
wire   [0:0] tmp_5_fu_154_p2;
wire   [31:0] tmp_6_fu_172_p2;
reg   [31:0] num_clks_assign_fu_48;
reg   [31:0] hop_rate_assign_fu_52;
wire   [31:0] tmp_2_fu_123_p2;
reg   [2:0] ap_NS_fsm;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk) begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// state assign process. ///
always @ (posedge ap_clk) begin : ap_ret_state
    if (ap_rst == 1'b1) begin
        state <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2))) begin
            state <= ap_const_lv1_1;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == state_load_load_fu_112_p1) & ~(ap_const_lv1_0 == tmp_3_fu_129_p2))) begin
            state <= ap_const_lv1_0;
        end
    end
end

/// ticks assign process. ///
always @ (posedge ap_clk) begin : ap_ret_ticks
    if (ap_rst == 1'b1) begin
        ticks <= ap_const_lv32_1;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == state_load_reg_200) & (ap_const_lv1_0 == tmp_3_reg_209) & (ap_const_lv1_0 == tmp_5_fu_154_p2))) begin
            ticks <= tmp_7_fu_160_p2;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
            ticks <= ap_const_lv32_0;
        end
    end
end

/// trigger_count assign process. ///
always @ (posedge ap_clk) begin : ap_ret_trigger_count
    if (ap_rst == 1'b1) begin
        trigger_count <= ap_const_lv32_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == state_load_reg_200) & (ap_const_lv1_0 == tmp_3_reg_209) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2))) begin
            trigger_count <= tmp_6_fu_172_p2;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == state_load_load_fu_112_p1) & ~(ap_const_lv1_0 == tmp_3_fu_129_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & (ap_const_lv1_0 == state_load_load_fu_112_p1)))) begin
            trigger_count <= ap_const_lv32_0;
        end
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == ap_const_logic_0))) begin
        PPS_read_reg_195 <= PPS;
        hop_rate_assign_fu_52 <= hop_rate;
        num_clks_assign_fu_48 <= num_clks;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_load_reg_200 <= state;
    end
end

/// assign process. ///
always @ (posedge ap_clk) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) & ~(ap_const_lv1_0 == state_load_load_fu_112_p1))) begin
        tmp_3_reg_209 <= tmp_3_fu_129_p2;
        trigger_count_load_reg_204 <= trigger_count;
    end
end

/// ap_done assign process. ///
always @ (grp_read_fu_68_p2 or state_load_reg_200 or tmp_3_reg_209 or ap_sig_cseq_ST_st3_fsm_2 or tmp_5_fu_154_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (((ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_3_reg_209)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0) begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (grp_read_fu_68_p2 or state_load_reg_200 or tmp_3_reg_209 or ap_sig_cseq_ST_st3_fsm_2 or tmp_5_fu_154_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (((ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_3_reg_209)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_19) begin
    if (ap_sig_bdd_19) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm_1 assign process. ///
always @ (ap_sig_bdd_50) begin
    if (ap_sig_bdd_50) begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st3_fsm_2 assign process. ///
always @ (ap_sig_bdd_68) begin
    if (ap_sig_bdd_68) begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    end
end

/// pps_edge_ap_vld assign process. ///
always @ (ap_sig_cseq_ST_st2_fsm_1) begin
    if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        pps_edge_ap_vld = ap_const_logic_1;
    end else begin
        pps_edge_ap_vld = ap_const_logic_0;
    end
end

/// trigger_out assign process. ///
always @ (grp_read_fu_68_p2 or state_load_reg_200 or ap_sig_cseq_ST_st2_fsm_1 or tmp_3_reg_209 or ap_sig_cseq_ST_st3_fsm_2 or tmp_5_fu_154_p2) begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == state_load_reg_200) & (ap_const_lv1_0 == tmp_3_reg_209) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2)))) begin
        trigger_out = ap_const_lv1_1;
    end else if ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        trigger_out = ap_const_lv1_0;
    end else begin
        trigger_out = 'bx;
    end
end

/// trigger_out_ap_vld assign process. ///
always @ (grp_read_fu_68_p2 or state_load_reg_200 or ap_sig_cseq_ST_st2_fsm_1 or tmp_3_reg_209 or ap_sig_cseq_ST_st3_fsm_2 or tmp_5_fu_154_p2) begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm_1) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & (ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st3_fsm_2) & ~(ap_const_lv1_0 == state_load_reg_200) & (ap_const_lv1_0 == tmp_3_reg_209) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2)))) begin
        trigger_out_ap_vld = ap_const_logic_1;
    end else begin
        trigger_out_ap_vld = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_start or ap_CS_fsm or grp_read_fu_68_p2 or state_load_reg_200 or tmp_3_reg_209 or tmp_5_fu_154_p2) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            if (~(ap_start == ap_const_logic_0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : 
        begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st3_fsm_2 : 
        begin
            if ((((ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == grp_read_fu_68_p2)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_3_reg_209)) | (~(ap_const_lv1_0 == state_load_reg_200) & ~(ap_const_lv1_0 == tmp_5_fu_154_p2)))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_19 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_19 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_50 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_50 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_1]);
end

/// ap_sig_bdd_68 assign process. ///
always @ (ap_CS_fsm) begin
    ap_sig_bdd_68 = (ap_const_lv1_1 == ap_CS_fsm[ap_const_lv32_2]);
end
assign grp_read_fu_68_p2 = PPS;
assign pps_edge = PPS_read_reg_195;
assign state_load_load_fu_112_p1 = state;
assign tmp_2_fu_123_p2 = ($signed(hop_rate_assign_fu_52) + $signed(ap_const_lv32_FFFFFFFF));
assign tmp_3_fu_129_p2 = (trigger_count == tmp_2_fu_123_p2? 1'b1: 1'b0);
assign tmp_5_fu_154_p2 = (ticks == num_clks_assign_fu_48? 1'b1: 1'b0);
assign tmp_6_fu_172_p2 = (trigger_count_load_reg_204 + ap_const_lv32_1);
assign tmp_7_fu_160_p2 = (ticks + ap_const_lv32_1);


endmodule //Timer
