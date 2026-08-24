// =========================================================
// Submodule: u_block_29
// =========================================================
module u_block_29 (
input  wire  USBF_T2_C_2_5_US,
input  wire  clk,
input  wire [7:0] me_ps,
output reg  me_ps_2_5_us
);

    // Parameters
    parameter	[14:0]	// synopsys enum state
	POR		= 15'b000_0000_0000_0001,
	NORMAL		= 15'b000_0000_0000_0010,
	RES_SUSP	= 15'b000_0000_0000_0100,
	SUSPEND		= 15'b000_0000_0000_1000,
	RESUME		= 15'b000_0000_0001_0000,
	RESUME_REQUEST	= 15'b000_0000_0010_0000,
	RESUME_WAIT	= 15'b000_0000_0100_0000,
	RESUME_SIG	= 15'b000_0000_1000_0000,
	ATTACH		= 15'b000_0001_0000_0000,
	RESET		= 15'b000_0010_0000_0000,
	SPEED_NEG	= 15'b000_0100_0000_0000,
	SPEED_NEG_K	= 15'b000_1000_0000_0000,
	SPEED_NEG_J	= 15'b001_0000_0000_0000,
	SPEED_NEG_HS	= 15'b010_0000_0000_0000,
	SPEED_NEG_FS	= 15'b100_0000_0000_0000;

    always @(posedge clk)	// Generate a pulse every 2.5 uS
    	me_ps_2_5_us <= (me_ps == USBF_T2_C_2_5_US);

endmodule
