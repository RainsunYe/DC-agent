// =========================================================
// Submodule: u_block_27
// =========================================================
module u_block_27 (
input wire  Ti1,
input wire  Ti52,
input wire  clk,
input wire  count_of_copy,
output reg  Ti5_mul_input
);

    always @(posedge clk)
    begin
    	case (count_of_copy)
    	3'b000:		Ti5_mul_input <= Ti1;
    	3'b001:		Ti5_mul_input <= Ti1;
    	3'b010:		Ti5_mul_input <= Ti52;
    	3'b011:		Ti5_mul_input <= Ti52;
    	3'b100:		Ti5_mul_input <= Ti1;
    	3'b101:		Ti5_mul_input <= Ti1;
    	3'b110:		Ti5_mul_input <= Ti52;
    	3'b111:		Ti5_mul_input <= Ti52;
    	endcase
    end

endmodule
