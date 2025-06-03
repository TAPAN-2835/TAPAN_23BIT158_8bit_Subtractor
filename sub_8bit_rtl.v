module subtractor_8bit (
    input clk,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] result
);

    reg [7:0] a_reg, b_reg;
    reg [3:0] count = 0;

    always @(posedge clk) begin
        if (count == 0) begin
            a_reg <= a;
            b_reg <= b;
        end

        if (count == 7) begin
            result <= $signed(a_reg) - $signed(b_reg);
            count <= 0;  // Reset for next operation
        end else begin
            count <= count + 1;
        end
    end

endmodule

