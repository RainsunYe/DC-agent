// =========================================================
// Submodule: u_block_10
// =========================================================
module u_block_10 (
input wire  JPEG_bs_1,
input wire  JPEG_ro_bs_1,
input wire  clk,
input wire  enable_module,
input wire  old_orc_4,
input wire  rst,
output reg  Cb12_edge_2,
output reg  Cb12_edge_3,
output reg  JPEG_bs_2,
output reg  JPEG_ro_bs_2,
output reg  old_orc_5
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		JPEG_bs_2 <= 0; old_orc_5 <= 0; JPEG_ro_bs_2 <= 0;
    		Cb12_edge_3 <= 0; 
    		end
    	else if (enable_module) begin 
    		JPEG_bs_2 <= (old_orc_4 >= 4) ? JPEG_bs_1 >> 4 : JPEG_bs_1;
    		old_orc_5 <= (old_orc_4 >= 4) ? old_orc_4 - 4 : old_orc_4;
    		JPEG_ro_bs_2 <= (Cb12_edge_2 <= 4) ? JPEG_ro_bs_1 << 4 : JPEG_ro_bs_1;
    		Cb12_edge_3 <= (Cb12_edge_2 <= 4) ? Cb12_edge_2 : Cb12_edge_2 - 4;
    		end
    end

endmodule
