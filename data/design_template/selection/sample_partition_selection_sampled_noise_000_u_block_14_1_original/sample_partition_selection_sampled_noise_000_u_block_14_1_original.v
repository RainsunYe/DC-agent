// =========================================================
// Submodule: u_block_14
// =========================================================
module u_block_14 (
input wire  bits_mux,
input wire  cb_out_enable,
input wire  clk,
input wire  cr_out_enable,
input wire  y_out_enable,
output reg  bits_ready
);

    always @(posedge clk)
    begin
    	case (bits_mux)
    	3'b001:		bits_ready <= y_out_enable;
    	3'b010:		bits_ready <= cb_out_enable;
    	3'b100:		bits_ready <= cr_out_enable;
    	default:	bits_ready <= y_out_enable;
    	endcase
    end

endmodule
