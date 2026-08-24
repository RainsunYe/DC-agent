// =========================================================
// Submodule: u_block_16
// =========================================================
module u_block_16 (
input  wire  clk,
input  wire  ld_r,
input  wire [7:0] sa01_next,
input  wire [127:0] text_in_r,
input  wire [31:0] w1,
output reg  [7:0]  sa01
);

    always @(posedge clk)	sa01 <= #1 ld_r ? text_in_r[95:88] ^ w1[31:24] : sa01_next;

endmodule
