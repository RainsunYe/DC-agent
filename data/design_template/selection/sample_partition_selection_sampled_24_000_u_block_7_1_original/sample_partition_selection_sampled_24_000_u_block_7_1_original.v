// =========================================================
// Submodule: u_block_7
// =========================================================
module u_block_7 (
input wire [31:0]  JPEG_bs_4,
input wire [31:0]  JPEG_ro_bs_4,
input wire  clk,
input wire  enable_module,
input wire  orc_7,
input wire  rollover_6,
input wire  rst,
output reg [31:0]  JPEG_bs_5
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		JPEG_bs_5 <= 0; 
    		end
    	else if (enable_module) begin 
    		JPEG_bs_5[31] <= (rollover_6 & orc_7 > 0) ? JPEG_ro_bs_4[31] : JPEG_bs_4[31];
    		JPEG_bs_5[30] <= (rollover_6 & orc_7 > 1) ? JPEG_ro_bs_4[30] : JPEG_bs_4[30];
    		JPEG_bs_5[29] <= (rollover_6 & orc_7 > 2) ? JPEG_ro_bs_4[29] : JPEG_bs_4[29];
    		JPEG_bs_5[28] <= (rollover_6 & orc_7 > 3) ? JPEG_ro_bs_4[28] : JPEG_bs_4[28];
    		JPEG_bs_5[27] <= (rollover_6 & orc_7 > 4) ? JPEG_ro_bs_4[27] : JPEG_bs_4[27];
    		JPEG_bs_5[26] <= (rollover_6 & orc_7 > 5) ? JPEG_ro_bs_4[26] : JPEG_bs_4[26];
    		JPEG_bs_5[25] <= (rollover_6 & orc_7 > 6) ? JPEG_ro_bs_4[25] : JPEG_bs_4[25];
    		JPEG_bs_5[24] <= (rollover_6 & orc_7 > 7) ? JPEG_ro_bs_4[24] : JPEG_bs_4[24];
    		JPEG_bs_5[23] <= (rollover_6 & orc_7 > 8) ? JPEG_ro_bs_4[23] : JPEG_bs_4[23];
    		JPEG_bs_5[22] <= (rollover_6 & orc_7 > 9) ? JPEG_ro_bs_4[22] : JPEG_bs_4[22];
    		JPEG_bs_5[21] <= (rollover_6 & orc_7 > 10) ? JPEG_ro_bs_4[21] : JPEG_bs_4[21];
    		JPEG_bs_5[20] <= (rollover_6 & orc_7 > 11) ? JPEG_ro_bs_4[20] : JPEG_bs_4[20];
    		JPEG_bs_5[19] <= (rollover_6 & orc_7 > 12) ? JPEG_ro_bs_4[19] : JPEG_bs_4[19];
    		JPEG_bs_5[18] <= (rollover_6 & orc_7 > 13) ? JPEG_ro_bs_4[18] : JPEG_bs_4[18];
    		JPEG_bs_5[17] <= (rollover_6 & orc_7 > 14) ? JPEG_ro_bs_4[17] : JPEG_bs_4[17];
    		JPEG_bs_5[16] <= (rollover_6 & orc_7 > 15) ? JPEG_ro_bs_4[16] : JPEG_bs_4[16];
    		JPEG_bs_5[15] <= (rollover_6 & orc_7 > 16) ? JPEG_ro_bs_4[15] : JPEG_bs_4[15];
    		JPEG_bs_5[14] <= (rollover_6 & orc_7 > 17) ? JPEG_ro_bs_4[14] : JPEG_bs_4[14];
    		JPEG_bs_5[13] <= (rollover_6 & orc_7 > 18) ? JPEG_ro_bs_4[13] : JPEG_bs_4[13];
    		JPEG_bs_5[12] <= (rollover_6 & orc_7 > 19) ? JPEG_ro_bs_4[12] : JPEG_bs_4[12];
    		JPEG_bs_5[11] <= (rollover_6 & orc_7 > 20) ? JPEG_ro_bs_4[11] : JPEG_bs_4[11];
    		JPEG_bs_5[10] <= (rollover_6 & orc_7 > 21) ? JPEG_ro_bs_4[10] : JPEG_bs_4[10];
    		JPEG_bs_5[9] <= (rollover_6 & orc_7 > 22) ? JPEG_ro_bs_4[9] : JPEG_bs_4[9];
    		JPEG_bs_5[8] <= (rollover_6 & orc_7 > 23) ? JPEG_ro_bs_4[8] : JPEG_bs_4[8];
    		JPEG_bs_5[7] <= (rollover_6 & orc_7 > 24) ? JPEG_ro_bs_4[7] : JPEG_bs_4[7];
    		JPEG_bs_5[6] <= (rollover_6 & orc_7 > 25) ? JPEG_ro_bs_4[6] : JPEG_bs_4[6];
    		JPEG_bs_5[5] <= (rollover_6 & orc_7 > 26) ? JPEG_ro_bs_4[5] : JPEG_bs_4[5];
    		JPEG_bs_5[4] <= (rollover_6 & orc_7 > 27) ? JPEG_ro_bs_4[4] : JPEG_bs_4[4];
    		JPEG_bs_5[3] <= (rollover_6 & orc_7 > 28) ? JPEG_ro_bs_4[3] : JPEG_bs_4[3];
    		JPEG_bs_5[2] <= (rollover_6 & orc_7 > 29) ? JPEG_ro_bs_4[2] : JPEG_bs_4[2];
    		JPEG_bs_5[1] <= (rollover_6 & orc_7 > 30) ? JPEG_ro_bs_4[1] : JPEG_bs_4[1];
    		JPEG_bs_5[0] <= JPEG_bs_4[0];
    		end
    end

endmodule
