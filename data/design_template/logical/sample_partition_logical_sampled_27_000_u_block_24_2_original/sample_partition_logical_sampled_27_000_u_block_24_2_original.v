// =========================================================
// Submodule: u_block_24
// =========================================================
module u_block_24 (
input  wire [11:0] dma_out_cnt,
input  wire  ep_out,
input  wire  wclk,
output reg  dma_req_out_hold
);

    always @(posedge wclk)
    	dma_req_out_hold <= |dma_out_cnt[11:2] & ep_out;

endmodule
