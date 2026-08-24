// =========================================================
// Submodule: u_block_25
// =========================================================
module u_block_25 (
input wire  Cr12_et_zero,
input wire  clk,
input wire  enable,
input wire  enable_module,
input wire  rst,
output reg  zero_run_length
);

    always @(posedge clk)
    begin
    	if (rst) 
    		zero_run_length <= 0; 
    	else if (enable)
    		zero_run_length <= 0; 
    	else if (enable_module) 
    		zero_run_length <= Cr12_et_zero ? zero_run_length + 1: 0;
    end

endmodule
