// =========================================================
// Submodule: u_block_20
// =========================================================
module u_block_20 (
input wire [71:0]  JPEG_pf,
input wire [15:0]  JPEG_ro,
input wire  clk,
input wire  ffc_postfifo,
input wire  rdv_1,
input wire  rpf_1,
input wire  rst,
output reg [15:0]  JPEG_bitstream
);

    always @(posedge clk)
    begin
    	if (rst) 
    		JPEG_bitstream[15:8] <= 0; 
    	else if (rdv_1 && ffc_postfifo < 3 && !rpf_1) 
    		JPEG_bitstream[15:8] <= JPEG_pf[71:64];
    	else if (rpf_1 || (rdv_1 && ffc_postfifo == 3))
    		JPEG_bitstream[15:8] <= JPEG_ro[15:8];
    end

endmodule
