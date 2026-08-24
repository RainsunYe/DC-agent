// =========================================================
// Submodule: u_block_26
// =========================================================
module u_block_26 (
input wire  Ti21,
input wire  Ti22,
input wire  Ti23,
input wire  Ti24,
input wire  Ti25,
input wire  Ti26,
input wire  Ti27,
input wire  Ti28,
input wire  clk,
input wire  count_of_copy,
output reg  Ti4_mul_input
);

    always @(posedge clk)
    begin
    	case (count_of_copy)
    	3'b000:		Ti4_mul_input <= Ti27;
    	3'b001:		Ti4_mul_input <= Ti22;
    	3'b010:		Ti4_mul_input <= Ti25;
    	3'b011:		Ti4_mul_input <= Ti28;
    	3'b100:		Ti4_mul_input <= Ti26;
    	3'b101:		Ti4_mul_input <= Ti23;
    	3'b110:		Ti4_mul_input <= Ti21;
    	3'b111:		Ti4_mul_input <= Ti24;
    	endcase
    end

endmodule
