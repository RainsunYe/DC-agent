// =========================================================
// Submodule: u_block_11
// =========================================================
module u_block_11 (
input wire  JPEG_bs,
input wire  JPEG_ro_bs,
input wire  clk,
input wire  enable_module,
input wire  old_orc_3,
input wire  rst,
output reg  Cr12_edge_1,
output reg  Cr12_edge_2,
output reg  JPEG_bs_1,
output reg  JPEG_ro_bs_1,
output reg  old_orc_4
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		JPEG_bs_1 <= 0; old_orc_4 <= 0; JPEG_ro_bs_1 <= 0; 
    		Cr12_edge_2 <= 0; 
    		end
    	else if (enable_module) begin 
    		JPEG_bs_1 <= (old_orc_3 >= 8) ? JPEG_bs >> 8 : JPEG_bs;
    		old_orc_4 <= (old_orc_3 >= 8) ? old_orc_3 - 8 : old_orc_3;
    		JPEG_ro_bs_1 <= (Cr12_edge_1 <= 8) ? JPEG_ro_bs << 8 : JPEG_ro_bs;
    		Cr12_edge_2 <= (Cr12_edge_1 <= 8) ? Cr12_edge_1 : Cr12_edge_1 - 8;
    		end
    end

endmodule
