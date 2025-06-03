// IC Compiler II Version W-2024.09 Verilog Writer
// Generated on 6/2/2025 at 15:15:26
// Library Name: 8_SUB_LIB
// Block Name: 8_sub
// User Label: 
// Write Command: write_verilog ./../results/sub_8bit.routed.v
module subtractor_8bit ( clk , a , b , result ) ;
input  clk ;
input  [7:0] a ;
input  [7:0] b ;
output [7:0] result ;

wire [2:0] count ;
wire [7:0] a_reg ;
wire [7:0] b_reg ;

DFFX1_RVT \count_reg[0] ( .D ( ropt_net_0 ) , .CLK ( clk ) , .Q ( count[0] ) , 
    .QN ( n162 ) ) ;
DFFX1_RVT \count_reg[1] ( .D ( N15 ) , .CLK ( clk ) , .Q ( count[1] ) ) ;
DFFX1_RVT \count_reg[2] ( .D ( N16 ) , .CLK ( clk ) , .Q ( count[2] ) ) ;
DFFX1_RVT \b_reg_reg[7] ( .D ( n80 ) , .CLK ( clk ) , .Q ( b_reg[7] ) ) ;
DFFX1_RVT \b_reg_reg[6] ( .D ( n79 ) , .CLK ( clk ) , .Q ( b_reg[6] ) ) ;
DFFX1_RVT \b_reg_reg[5] ( .D ( n78 ) , .CLK ( clk ) , .Q ( b_reg[5] ) ) ;
DFFX1_RVT \b_reg_reg[4] ( .D ( n77 ) , .CLK ( clk ) , .Q ( b_reg[4] ) ) ;
DFFX1_RVT \b_reg_reg[3] ( .D ( n76 ) , .CLK ( clk ) , .Q ( b_reg[3] ) ) ;
DFFX1_RVT \b_reg_reg[2] ( .D ( n75 ) , .CLK ( clk ) , .Q ( b_reg[2] ) ) ;
DFFX1_RVT \b_reg_reg[1] ( .D ( n74 ) , .CLK ( clk ) , .Q ( b_reg[1] ) ) ;
DFFX1_RVT \b_reg_reg[0] ( .D ( n73 ) , .CLK ( clk ) , .Q ( b_reg[0] ) ) ;
DFFX1_RVT \a_reg_reg[7] ( .D ( n72 ) , .CLK ( clk ) , .Q ( a_reg[7] ) ) ;
DFFX1_RVT \a_reg_reg[6] ( .D ( n71 ) , .CLK ( clk ) , .Q ( a_reg[6] ) , 
    .QN ( n159 ) ) ;
DFFX1_RVT \a_reg_reg[5] ( .D ( n70 ) , .CLK ( clk ) , .Q ( a_reg[5] ) , 
    .QN ( n158 ) ) ;
DFFX1_RVT \a_reg_reg[4] ( .D ( n69 ) , .CLK ( clk ) , .Q ( a_reg[4] ) , 
    .QN ( n157 ) ) ;
DFFX1_RVT \a_reg_reg[3] ( .D ( n68 ) , .CLK ( clk ) , .Q ( a_reg[3] ) , 
    .QN ( n156 ) ) ;
DFFX1_RVT \a_reg_reg[2] ( .D ( n67 ) , .CLK ( clk ) , .Q ( a_reg[2] ) , 
    .QN ( n155 ) ) ;
DFFX1_RVT \a_reg_reg[1] ( .D ( n66 ) , .CLK ( clk ) , .Q ( a_reg[1] ) , 
    .QN ( n154 ) ) ;
DFFX1_RVT \a_reg_reg[0] ( .D ( n65 ) , .CLK ( clk ) , .Q ( a_reg[0] ) , 
    .QN ( n153 ) ) ;
DFFX1_RVT \result_reg[7] ( .D ( n64 ) , .CLK ( clk ) , .Q ( result[7] ) , 
    .QN ( n160 ) ) ;
DFFX1_RVT \result_reg[6] ( .D ( n63 ) , .CLK ( clk ) , .Q ( result[6] ) ) ;
DFFX1_RVT \result_reg[5] ( .D ( n62 ) , .CLK ( clk ) , .Q ( result[5] ) ) ;
DFFX1_RVT \result_reg[4] ( .D ( n61 ) , .CLK ( clk ) , .Q ( result[4] ) ) ;
DFFX1_RVT \result_reg[3] ( .D ( n60 ) , .CLK ( clk ) , .Q ( result[3] ) ) ;
DFFX1_RVT \result_reg[2] ( .D ( n59 ) , .CLK ( clk ) , .Q ( result[2] ) ) ;
DFFX1_RVT \result_reg[1] ( .D ( n58 ) , .CLK ( clk ) , .Q ( result[1] ) ) ;
DFFX1_RVT \result_reg[0] ( .D ( n57 ) , .CLK ( clk ) , .Q ( result[0] ) , 
    .QN ( n161 ) ) ;
INVX0_RVT U88 ( .A ( n123 ) , .Y ( n124 ) ) ;
INVX0_RVT U89 ( .A ( n128 ) , .Y ( n129 ) ) ;
INVX0_RVT U90 ( .A ( n133 ) , .Y ( n134 ) ) ;
INVX0_RVT U91 ( .A ( n138 ) , .Y ( n139 ) ) ;
INVX0_RVT U92 ( .A ( n143 ) , .Y ( n144 ) ) ;
INVX2_RVT HFSINV_978_820 ( .A ( n149 ) , .Y ( HFSNET_0 ) ) ;
AND3X2_RVT U94 ( .A1 ( count[0] ) , .A2 ( count[1] ) , .A3 ( count[2] ) , 
    .Y ( n149 ) ) ;
AND2X1_RVT U95 ( .A1 ( b_reg[0] ) , .A2 ( n153 ) , .Y ( n146 ) ) ;
INVX0_RVT U96 ( .A ( n146 ) , .Y ( n83 ) ) ;
OR2X1_RVT U97 ( .A1 ( b_reg[0] ) , .A2 ( n153 ) , .Y ( n82 ) ) ;
OAI222X1_RVT U98 ( .A1 ( HFSNET_0 ) , .A2 ( n83 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n82 ) , .A5 ( n149 ) , .A6 ( n161 ) , .Y ( n57 ) ) ;
HADDX1_RVT U99 ( .A0 ( a_reg[1] ) , .B0 ( b_reg[1] ) , .SO ( n147 ) ) ;
OR2X1_RVT U100 ( .A1 ( n146 ) , .A2 ( n147 ) , .Y ( n151 ) ) ;
OA21X1_RVT U101 ( .A1 ( b_reg[1] ) , .A2 ( n154 ) , .A3 ( n151 ) , 
    .Y ( n142 ) ) ;
HADDX1_RVT U102 ( .A0 ( a_reg[2] ) , .B0 ( b_reg[2] ) , .SO ( n141 ) ) ;
OR2X1_RVT U103 ( .A1 ( n142 ) , .A2 ( n141 ) , .Y ( n145 ) ) ;
OA21X1_RVT U104 ( .A1 ( b_reg[2] ) , .A2 ( n155 ) , .A3 ( n145 ) , 
    .Y ( n137 ) ) ;
HADDX1_RVT U105 ( .A0 ( a_reg[3] ) , .B0 ( b_reg[3] ) , .SO ( n136 ) ) ;
OR2X1_RVT U106 ( .A1 ( n137 ) , .A2 ( n136 ) , .Y ( n140 ) ) ;
OA21X1_RVT U107 ( .A1 ( b_reg[3] ) , .A2 ( n156 ) , .A3 ( n140 ) , 
    .Y ( n132 ) ) ;
HADDX1_RVT U108 ( .A0 ( a_reg[4] ) , .B0 ( b_reg[4] ) , .SO ( n131 ) ) ;
OR2X1_RVT U109 ( .A1 ( n132 ) , .A2 ( n131 ) , .Y ( n135 ) ) ;
OA21X1_RVT U110 ( .A1 ( b_reg[4] ) , .A2 ( n157 ) , .A3 ( n135 ) , 
    .Y ( n127 ) ) ;
HADDX1_RVT U111 ( .A0 ( a_reg[5] ) , .B0 ( b_reg[5] ) , .SO ( n126 ) ) ;
OR2X1_RVT U112 ( .A1 ( n127 ) , .A2 ( n126 ) , .Y ( n130 ) ) ;
OA21X1_RVT U113 ( .A1 ( b_reg[5] ) , .A2 ( n158 ) , .A3 ( n130 ) , 
    .Y ( n122 ) ) ;
HADDX1_RVT U114 ( .A0 ( b_reg[6] ) , .B0 ( a_reg[6] ) , .SO ( n121 ) ) ;
OR2X1_RVT U115 ( .A1 ( n122 ) , .A2 ( n121 ) , .Y ( n125 ) ) ;
OA21X1_RVT U116 ( .A1 ( b_reg[6] ) , .A2 ( n159 ) , .A3 ( n125 ) , 
    .Y ( n84 ) ) ;
XNOR3X1_RVT U117 ( .A1 ( b_reg[7] ) , .A2 ( a_reg[7] ) , .A3 ( n84 ) , 
    .Y ( n85 ) ) ;
OR2X1_RVT U118 ( .A1 ( HFSNET_0 ) , .A2 ( n85 ) , .Y ( n86 ) ) ;
OAI21X1_RVT U119 ( .A1 ( n149 ) , .A2 ( n160 ) , .A3 ( n86 ) , .Y ( n64 ) ) ;
HADDX1_RVT U120 ( .A0 ( count[0] ) , .B0 ( count[1] ) , .SO ( N15 ) ) ;
OA221X1_RVT U121 ( .A1 ( count[2] ) , .A2 ( count[1] ) , .A3 ( count[2] ) , 
    .A4 ( count[0] ) , .A5 ( HFSNET_0 ) , .Y ( N16 ) ) ;
OR3X2_RVT U122 ( .A1 ( count[0] ) , .A2 ( count[1] ) , .A3 ( count[2] ) , 
    .Y ( n117 ) ) ;
AND2X1_RVT U123 ( .A1 ( b_reg[7] ) , .A2 ( HFSNET_2 ) , .Y ( n88 ) ) ;
INVX4_RVT HFSINV_1079_821 ( .A ( n117 ) , .Y ( HFSNET_1 ) ) ;
AND2X1_RVT U125 ( .A1 ( HFSNET_1 ) , .A2 ( b[7] ) , .Y ( n87 ) ) ;
OR2X1_RVT U126 ( .A1 ( n88 ) , .A2 ( n87 ) , .Y ( n80 ) ) ;
AND2X1_RVT U127 ( .A1 ( b_reg[6] ) , .A2 ( HFSNET_2 ) , .Y ( n90 ) ) ;
AND2X1_RVT U128 ( .A1 ( HFSNET_1 ) , .A2 ( b[6] ) , .Y ( n89 ) ) ;
OR2X1_RVT U129 ( .A1 ( n90 ) , .A2 ( n89 ) , .Y ( n79 ) ) ;
AND2X1_RVT U130 ( .A1 ( b_reg[5] ) , .A2 ( HFSNET_2 ) , .Y ( n92 ) ) ;
AND2X1_RVT U131 ( .A1 ( HFSNET_1 ) , .A2 ( b[5] ) , .Y ( n91 ) ) ;
OR2X1_RVT U132 ( .A1 ( n92 ) , .A2 ( n91 ) , .Y ( n78 ) ) ;
AND2X1_RVT U133 ( .A1 ( b_reg[4] ) , .A2 ( n117 ) , .Y ( n94 ) ) ;
AND2X1_RVT U134 ( .A1 ( HFSNET_1 ) , .A2 ( b[4] ) , .Y ( n93 ) ) ;
OR2X1_RVT U135 ( .A1 ( n94 ) , .A2 ( n93 ) , .Y ( n77 ) ) ;
AND2X1_RVT U136 ( .A1 ( b_reg[3] ) , .A2 ( n117 ) , .Y ( n96 ) ) ;
AND2X1_RVT U137 ( .A1 ( HFSNET_1 ) , .A2 ( b[3] ) , .Y ( n95 ) ) ;
OR2X1_RVT U138 ( .A1 ( n96 ) , .A2 ( n95 ) , .Y ( n76 ) ) ;
AND2X1_RVT U139 ( .A1 ( b_reg[2] ) , .A2 ( HFSNET_2 ) , .Y ( n98 ) ) ;
AND2X1_RVT U140 ( .A1 ( HFSNET_1 ) , .A2 ( b[2] ) , .Y ( n97 ) ) ;
OR2X1_RVT U141 ( .A1 ( n98 ) , .A2 ( n97 ) , .Y ( n75 ) ) ;
AND2X1_RVT U142 ( .A1 ( b_reg[1] ) , .A2 ( n117 ) , .Y ( n100 ) ) ;
AND2X1_RVT U143 ( .A1 ( HFSNET_1 ) , .A2 ( b[1] ) , .Y ( n99 ) ) ;
OR2X1_RVT U144 ( .A1 ( n100 ) , .A2 ( n99 ) , .Y ( n74 ) ) ;
AND2X1_RVT U145 ( .A1 ( b_reg[0] ) , .A2 ( n117 ) , .Y ( n102 ) ) ;
AND2X1_RVT U146 ( .A1 ( HFSNET_1 ) , .A2 ( b[0] ) , .Y ( n101 ) ) ;
OR2X1_RVT U147 ( .A1 ( n102 ) , .A2 ( n101 ) , .Y ( n73 ) ) ;
AND2X1_RVT U148 ( .A1 ( a_reg[7] ) , .A2 ( HFSNET_2 ) , .Y ( n104 ) ) ;
AND2X1_RVT U149 ( .A1 ( HFSNET_1 ) , .A2 ( a[7] ) , .Y ( n103 ) ) ;
OR2X1_RVT U150 ( .A1 ( n104 ) , .A2 ( n103 ) , .Y ( n72 ) ) ;
AND2X1_RVT U151 ( .A1 ( a_reg[6] ) , .A2 ( HFSNET_2 ) , .Y ( n106 ) ) ;
AND2X1_RVT U152 ( .A1 ( HFSNET_1 ) , .A2 ( a[6] ) , .Y ( n105 ) ) ;
OR2X1_RVT U153 ( .A1 ( n106 ) , .A2 ( n105 ) , .Y ( n71 ) ) ;
AND2X1_RVT U154 ( .A1 ( a_reg[5] ) , .A2 ( HFSNET_2 ) , .Y ( n108 ) ) ;
AND2X1_RVT U155 ( .A1 ( HFSNET_1 ) , .A2 ( a[5] ) , .Y ( n107 ) ) ;
OR2X1_RVT U156 ( .A1 ( n108 ) , .A2 ( n107 ) , .Y ( n70 ) ) ;
AND2X1_RVT U157 ( .A1 ( a_reg[4] ) , .A2 ( n117 ) , .Y ( n110 ) ) ;
AND2X1_RVT U158 ( .A1 ( HFSNET_1 ) , .A2 ( a[4] ) , .Y ( n109 ) ) ;
OR2X1_RVT U159 ( .A1 ( n110 ) , .A2 ( n109 ) , .Y ( n69 ) ) ;
AND2X1_RVT U160 ( .A1 ( a_reg[3] ) , .A2 ( n117 ) , .Y ( n112 ) ) ;
AND2X1_RVT U161 ( .A1 ( HFSNET_1 ) , .A2 ( a[3] ) , .Y ( n111 ) ) ;
OR2X1_RVT U162 ( .A1 ( n112 ) , .A2 ( n111 ) , .Y ( n68 ) ) ;
AND2X1_RVT U163 ( .A1 ( a_reg[2] ) , .A2 ( n117 ) , .Y ( n114 ) ) ;
AND2X1_RVT U164 ( .A1 ( HFSNET_1 ) , .A2 ( a[2] ) , .Y ( n113 ) ) ;
OR2X1_RVT U165 ( .A1 ( n114 ) , .A2 ( n113 ) , .Y ( n67 ) ) ;
AND2X1_RVT U166 ( .A1 ( a_reg[1] ) , .A2 ( HFSNET_2 ) , .Y ( n116 ) ) ;
AND2X1_RVT U167 ( .A1 ( HFSNET_1 ) , .A2 ( a[1] ) , .Y ( n115 ) ) ;
OR2X1_RVT U168 ( .A1 ( n116 ) , .A2 ( n115 ) , .Y ( n66 ) ) ;
AND2X1_RVT U169 ( .A1 ( a_reg[0] ) , .A2 ( HFSNET_2 ) , .Y ( n120 ) ) ;
AND2X1_RVT U170 ( .A1 ( HFSNET_1 ) , .A2 ( a[0] ) , .Y ( n119 ) ) ;
OR2X1_RVT U171 ( .A1 ( n120 ) , .A2 ( n119 ) , .Y ( n65 ) ) ;
AND2X1_RVT U172 ( .A1 ( n122 ) , .A2 ( n121 ) , .Y ( n123 ) ) ;
OA222X1_RVT U173 ( .A1 ( HFSNET_0 ) , .A2 ( n125 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n124 ) , .A5 ( result[6] ) , .A6 ( n149 ) , .Y ( n63 ) ) ;
AND2X1_RVT U174 ( .A1 ( n127 ) , .A2 ( n126 ) , .Y ( n128 ) ) ;
OA222X1_RVT U175 ( .A1 ( HFSNET_0 ) , .A2 ( n130 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n129 ) , .A5 ( result[5] ) , .A6 ( n149 ) , .Y ( n62 ) ) ;
AND2X1_RVT U176 ( .A1 ( n132 ) , .A2 ( n131 ) , .Y ( n133 ) ) ;
OA222X1_RVT U177 ( .A1 ( HFSNET_0 ) , .A2 ( n135 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n134 ) , .A5 ( result[4] ) , .A6 ( n149 ) , .Y ( n61 ) ) ;
AND2X1_RVT U178 ( .A1 ( n137 ) , .A2 ( n136 ) , .Y ( n138 ) ) ;
OA222X1_RVT U179 ( .A1 ( HFSNET_0 ) , .A2 ( n140 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n139 ) , .A5 ( result[3] ) , .A6 ( n149 ) , .Y ( n60 ) ) ;
AND2X1_RVT U180 ( .A1 ( n142 ) , .A2 ( n141 ) , .Y ( n143 ) ) ;
OA222X1_RVT U181 ( .A1 ( HFSNET_0 ) , .A2 ( n145 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n144 ) , .A5 ( result[2] ) , .A6 ( n149 ) , .Y ( n59 ) ) ;
AND2X1_RVT U182 ( .A1 ( n147 ) , .A2 ( n146 ) , .Y ( n148 ) ) ;
INVX0_RVT U183 ( .A ( n148 ) , .Y ( n150 ) ) ;
OA222X1_RVT U184 ( .A1 ( HFSNET_0 ) , .A2 ( n151 ) , .A3 ( HFSNET_0 ) , 
    .A4 ( n150 ) , .A5 ( result[1] ) , .A6 ( n149 ) , .Y ( n58 ) ) ;
NBUFFX2_RVT HFSBUF_678_822 ( .A ( n117 ) , .Y ( HFSNET_2 ) ) ;
DELLN1X2_RVT ropt_h_inst_1383 ( .A ( n162 ) , .Y ( ropt_net_0 ) ) ;
endmodule


