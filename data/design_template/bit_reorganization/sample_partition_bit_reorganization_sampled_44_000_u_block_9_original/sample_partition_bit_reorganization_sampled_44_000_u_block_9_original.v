// =========================================================
// Submodule: u_block_9
// =========================================================
module u_block_9 (
input wire  JPEG_bs_2,
input wire  JPEG_ro_bs_2,
input wire  clk,
input wire  enable_module,
input wire  old_orc_5,
input wire  rst,
output reg  Cb12_edge_3,
output reg  Cb12_edge_4,
output reg  JPEG_bs_3,
output reg  JPEG_ro_bs_3,
output reg  old_orc_6
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		JPEG_bs_3 <= 0; old_orc_6 <= 0; JPEG_ro_bs_3 <= 0;
    		Cb12_edge_4 <= 0; 
    		end
    	else if (enable_module) begin 
    		JPEG_bs_3 <= (old_orc_5 >= 2) ? JPEG_bs_2 >> 2 : JPEG_bs_2;
    		old_orc_6 <= (old_orc_5 >= 2) ? old_orc_5 - 2 : old_orc_5;
    		JPEG_ro_bs_3 <= (Cb12_edge_3 <= 2) ? JPEG_ro_bs_2 << 2 : JPEG_ro_bs_2;
    		Cb12_edge_4 <= (Cb12_edge_3 <= 2) ? Cb12_edge_3 : Cb12_edge_3 - 2;
    		end
    end

endmodule
