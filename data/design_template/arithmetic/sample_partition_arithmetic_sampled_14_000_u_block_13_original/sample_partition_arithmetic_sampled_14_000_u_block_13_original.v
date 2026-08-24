// =========================================================
// Submodule: u_block_13
// =========================================================
module u_block_13 (
input wire  clk,
input wire  count_1,
input wire  enable,
input wire  rst,
output reg  count_of,
output reg  count_of_copy
);

    always @(posedge clk)
    begin
    	if (rst) begin
     		count_of <= 0;
     		count_of_copy <= 0;
     		end
    	else if (!enable) begin
    		count_of <= 0;
    		count_of_copy <= 0;
    		end
    	else if (count_1 == 1) begin
    		count_of <= count_of + 1;
    		count_of_copy <= count_of_copy + 1;
    		end
    end

endmodule
