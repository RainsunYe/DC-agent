// =========================================================
// Submodule: u_block_6
// =========================================================
module u_block_6 (
input wire  clk,
input wire  count_10,
input wire  count_of,
input wire  enable_1,
input wire  rst,
output reg  output_enable
);

    always @(posedge clk)
    begin
    	if (rst) 
     		output_enable <= 0;
    	else if (!enable_1)
    		output_enable <= 0;
    	else if (count_10 == 0 | count_of)
    		output_enable <= 0;
    	else if (count_10 & count_of == 0)
    		output_enable <= 1;
    end

endmodule
