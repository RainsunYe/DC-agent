// =========================================================
// Submodule: u_block_3
// =========================================================
module u_block_3 (
input wire  clk,
input wire  enable,
input wire  enable_module,
input wire  rst,
output reg [7:0] block_counter
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		block_counter <= 0;
    		end
    	else if (enable) begin
    		block_counter <= 0;
    		end	
    	else if (enable_module) begin
    		block_counter <= block_counter + 1;
    		end
    end

endmodule
