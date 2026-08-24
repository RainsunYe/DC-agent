// =========================================================
// Submodule: u_block_29
// =========================================================
module u_block_29 (
input wire  Ti31,
input wire  Ti32,
input wire  Ti33,
input wire  Ti34,
input wire  clk,
input wire  count_of_copy,
output reg  Ti7_mul_input
);

    always @(posedge clk)
    begin
    	case (count_of_copy)
    	3'b000:		Ti7_mul_input <= Ti32;
    	3'b001:		Ti7_mul_input <= Ti32;
    	3'b010:		Ti7_mul_input <= Ti34;
    	3'b011:		Ti7_mul_input <= Ti31;
    	3'b100:		Ti7_mul_input <= Ti33;
    	3'b101:		Ti7_mul_input <= Ti33;
    	3'b110:		Ti7_mul_input <= Ti31;
    	3'b111:		Ti7_mul_input <= Ti34;
    	endcase
    end

endmodule
