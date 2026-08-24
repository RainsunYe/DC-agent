// =========================================================
// Submodule: u_block_35
// =========================================================
module u_block_35 (
input  wire  clk,
input  wire  lrg_ok,
input  wire [10:0] max_pl_sz,
input  wire  sizu_c,
output reg  to_large
);

    // Parameters
    parameter	SSRAM_HADR = 14;
    parameter	ACK   = 0,
		NACK  = 1,
		STALL = 2,
		NYET  = 3;
    parameter	[9:0]	// synopsys enum state
		IDLE	= 10'b000000_0001,
		TOKEN	= 10'b000000_0010,
		IN	= 10'b000000_0100,
		IN2	= 10'b000000_1000,
		OUT	= 10'b000001_0000,
		OUT2A	= 10'b000010_0000,
		OUT2B	= 10'b000100_0000,
		UPDATEW	= 10'b001000_0000,
		UPDATE	= 10'b010000_0000,
		UPDATE2	= 10'b100000_0000;

    always @(posedge clk)
    	to_large <= !lrg_ok & (sizu_c > max_pl_sz);

endmodule
