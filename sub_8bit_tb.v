`timescale 1ns / 1ps
`include "sub_8bit_rtl.v"

module testbench;

    reg clk;
    reg [7:0] a, b;
    wire [7:0] result;

    // Instantiate the subtractor
    subtractor_8bit uut (
        .clk(clk),
        .a(a),
        .b(b),
        .result(result)
    );

    // Generate clock: 10ns period
    always #5 clk = ~clk;

    initial begin
	$fsdbDumpvars();
        clk = 0;

        // Test 1: 100 - 25 = 75
        a = 8'd100; b = 8'd25;
        #90;  // 8+1 cycles
        $display("Test 1: %d - %d = %d", $signed(a), $signed(b), $signed(result));

        // Test 2: 50 - 100 = -50
        a = 8'd50; b = 8'd100;
        #90;
        $display("Test 2: %d - %d = %d", $signed(a), $signed(b), $signed(result));

        // Test 3: -30 - 20 = -50
        a = -8'sd30; b = 8'd20;
        #90;
        $display("Test 3: %d - %d = %d", $signed(a), $signed(b), $signed(result));

        $finish;
    end

endmodule

