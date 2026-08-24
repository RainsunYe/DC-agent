// =========================================================
// Submodule: u_block_12
// =========================================================
module u_block_12 (
input  wire  clk,
input  wire [6:0] wb_addr_i,
input  wire  we,
output reg  o7_we
);

    always @(posedge clk)
    	o7_we <= #1 we & (wb_addr_i[6:2] == 5'hb);

endmodule
