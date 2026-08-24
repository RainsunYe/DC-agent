// =========================================================
// Submodule: u_block_27
// =========================================================
module u_block_27 (
input  wire  [7:0] cs,
input  wire  cs_en,
input  wire  [7:0] cs_need_rfr,
input  wire  lmr_sel,
input  wire  mc_clk,
input  wire  rfr_ack,
input  wire  rst,
input  wire  [7:0] spec_req_cs,
input  wire  susp_sel,
output reg [7:0] mc_cs_
);

    always @(posedge mc_clk or posedge rst)
    	if(rst)		mc_cs_[7] <= #1 1'b1;
    	else
    	   mc_cs_[7] <= #1 ~(cs_en & (
    				(rfr_ack | susp_sel) ? cs_need_rfr[7] :
    				lmr_sel ? spec_req_cs[7] :
    				cs[7]
    			));

endmodule
