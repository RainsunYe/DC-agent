// =========================================================
// Submodule: u_block_2
// =========================================================
module u_block_2 (
input  wire  clk,
input  wire  en,
input  wire  re,
output reg [2:0] rp
);

    always @(posedge clk)
    	if(!en)		rp <= #1 3'h0;
    	else
    	if(re)		rp <= #1 rp + 3'h1;

endmodule
