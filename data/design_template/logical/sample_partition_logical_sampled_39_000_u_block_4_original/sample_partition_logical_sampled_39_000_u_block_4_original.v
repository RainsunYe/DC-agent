// =========================================================
// Submodule: u_block_4
// =========================================================
module u_block_4 (
input  wire [13:0] buf1_adr,
input  wire  clk,
output reg  buf1_not_aloc
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
    	buf1_not_aloc <= &buf1_adr;

endmodule
