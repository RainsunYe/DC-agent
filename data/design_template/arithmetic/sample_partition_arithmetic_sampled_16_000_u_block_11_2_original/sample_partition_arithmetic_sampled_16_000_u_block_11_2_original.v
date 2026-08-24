// =========================================================
// Submodule: u_block_11
// =========================================================
module u_block_11 (
input wire  clk,
input wire  count_1,
input wire  enable,
input wire  rst,
output reg [2:0] count,
output reg  count_10,
output reg  count_3,
output reg  count_4,
output reg  count_5,
output reg  count_6,
output reg  count_7,
output reg  count_8,
output reg  count_9
);

    always @(posedge clk)
    begin
    	if (rst) begin
     		count <= 0; count_3 <= 0; count_4 <= 0; count_5 <= 0;
     		count_6 <= 0; count_7 <= 0; count_8 <= 0; count_9 <= 0;
     		count_10 <= 0;
    		end
    	else if (!enable) begin
    		count <= 0; count_3 <= 0; count_4 <= 0; count_5 <= 0;
     		count_6 <= 0; count_7 <= 0; count_8 <= 0; count_9 <= 0;
     		count_10 <= 0;
    		end
    	else if (enable) begin
    		count <= count + 1; count_3 <= count_1; count_4 <= count_3;
    		count_5 <= count_4; count_6 <= count_5; count_7 <= count_6;
    		count_8 <= count_7; count_9 <= count_8; count_10 <= count_9;
    		end
    end

endmodule
