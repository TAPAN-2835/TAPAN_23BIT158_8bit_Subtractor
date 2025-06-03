/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : W-2024.09
// Date      : Mon Jun  2 15:45:55 2025
/////////////////////////////////////////////////////////////


module subtractor_8bit ( clk, a, b, result );
  input [7:0] a;
  input [7:0] b;
  output [7:0] result;
  input clk;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28;
  wire   [3:0] count;
  wire   [7:0] a_reg;
  wire   [7:0] b_reg;

  \**SEQGEN**  \count_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N17), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N16), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N15), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \count_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N14), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(count[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(1'b1) );
  \**SEQGEN**  \b_reg_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(b[7]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(b[6]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(b[5]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(b[4]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(b[3]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(b[2]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(b[1]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \b_reg_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(b[0]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(b_reg[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(a[7]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(a[6]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(a[5]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(a[4]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(a[3]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(a[2]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(a[1]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \a_reg_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(a[0]), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(a_reg[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N28) );
  \**SEQGEN**  \result_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N9), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N8), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N7), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N6), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N5), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N4), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N3), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  \**SEQGEN**  \result_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N2), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(result[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N24) );
  GTECH_NOT I_0 ( .A(count[2]), .Z(N18) );
  GTECH_NOT I_1 ( .A(count[1]), .Z(N19) );
  GTECH_NOT I_2 ( .A(count[0]), .Z(N20) );
  GTECH_OR2 C95 ( .A(N18), .B(count[3]), .Z(N21) );
  GTECH_OR2 C96 ( .A(N19), .B(N21), .Z(N22) );
  GTECH_OR2 C97 ( .A(N20), .B(N22), .Z(N23) );
  GTECH_NOT I_3 ( .A(N23), .Z(N24) );
  GTECH_OR2 C99 ( .A(count[2]), .B(count[3]), .Z(N25) );
  GTECH_OR2 C100 ( .A(count[1]), .B(N25), .Z(N26) );
  GTECH_OR2 C101 ( .A(count[0]), .B(N26), .Z(N27) );
  GTECH_NOT I_4 ( .A(N27), .Z(N28) );
  SUB_TC_OP sub_18 ( .A(a_reg), .B(b_reg), .Z({N9, N8, N7, N6, N5, N4, N3, N2}) );
  ADD_UNS_OP add_21 ( .A(count), .B(1'b1), .Z({N13, N12, N11, N10}) );
  SELECT_OP C103 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0}), .DATA2({N13, N12, N11, 
        N10}), .CONTROL1(N0), .CONTROL2(N1), .Z({N17, N16, N15, N14}) );
  GTECH_BUF B_0 ( .A(N24), .Z(N0) );
  GTECH_BUF B_1 ( .A(N23), .Z(N1) );
  GTECH_BUF B_2 ( .A(N24) );
  GTECH_BUF B_3 ( .A(N23) );
endmodule

