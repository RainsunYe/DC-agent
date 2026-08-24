// =========================================================
// Submodule: u_block_7
// =========================================================
module u_block_7 (
input  wire  clk,
input  wire [19:0] din,
input  wire  we,
input  wire [3:0] wp,
output reg [15:0] din_tmp1
);

    always @(posedge clk)
    	if(we & !wp[0])	din_tmp1 <= #1 din[19:4];

endmodule
