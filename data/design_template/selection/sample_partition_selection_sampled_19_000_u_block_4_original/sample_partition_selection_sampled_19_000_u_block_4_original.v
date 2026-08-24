// =========================================================
// Submodule: u_block_4
// =========================================================
module u_block_4 #(parameter dw = 32
)(
input  wire  [dw-1:0] m0_data_i,
input  wire  [dw-1:0] m1_data_i,
input  wire  [dw-1:0] m2_data_i,
input  wire  [dw-1:0] m3_data_i,
input  wire  [dw-1:0] m4_data_i,
input  wire  [dw-1:0] m5_data_i,
input  wire  [dw-1:0] m6_data_i,
input  wire  [dw-1:0] m7_data_i,
input  wire [2:0] mast_sel,
output reg [dw-1:0] wb_data_o
);

    // Removed a duplicate parameter dw declaration

    always @(mast_sel or m0_data_i or m1_data_i or m2_data_i or m3_data_i
        or m4_data_i or m5_data_i or m6_data_i or m7_data_i)
        case(mast_sel)	// synopsys parallel_case
           3'd0: wb_data_o = m0_data_i;
           3'd1: wb_data_o = m1_data_i;
           3'd2: wb_data_o = m2_data_i;
           3'd3: wb_data_o = m3_data_i;
           3'd4: wb_data_o = m4_data_i;
           3'd5: wb_data_o = m5_data_i;
           3'd6: wb_data_o = m6_data_i;
           3'd7: wb_data_o = m7_data_i;
           default: wb_data_o = {dw{1'bx}};
        endcase // Added the missing endcase

endmodule