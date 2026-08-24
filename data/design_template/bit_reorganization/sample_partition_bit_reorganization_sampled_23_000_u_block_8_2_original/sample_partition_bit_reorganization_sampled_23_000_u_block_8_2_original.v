// =========================================================
// Submodule: u_block_8
// =========================================================
module u_block_8 (
input wire  JPEG_bs_3,
input wire  JPEG_ro_bs_3,
input wire  clk,
input wire  enable_module,
input wire  old_orc_6,
input wire  rst,
output reg  Cr12_edge_4,
output reg  JPEG_bs_4,
output reg  JPEG_ro_bs_4
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		JPEG_bs_4 <= 0; JPEG_ro_bs_4 <= 0;
    		end
    	else if (enable_module) begin 
    		JPEG_bs_4 <= (old_orc_6 == 1) ? JPEG_bs_3 >> 1 : JPEG_bs_3;
    		JPEG_ro_bs_4 <= (Cr12_edge_4 <= 1) ? JPEG_ro_bs_3 << 1 : JPEG_ro_bs_3;
    		end
    end

endmodule
