// =========================================================
// Submodule: u_block_5
// =========================================================
module u_block_5 (
input  wire [2:0] adr,
input  wire  clk,
input  wire  rf_din,
input  wire  rf_we,
input  wire  rst
);

    // Internal variables with module prefix
reg [31:0] u_block_5_occ0_r;

    always @(posedge clk or negedge rst)
    	if(!rst)			u_block_5_occ0_r <= #1 1'b0;
    	else
    	if(rf_we & (adr[2:0]==3'h1))	u_block_5_occ0_r <= #1 rf_din;

endmodule
