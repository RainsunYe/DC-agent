// =========================================================
// Submodule: u_block_34
// =========================================================
module u_block_34 (
input  wire  dma_req_d,
input  wire  r2,
input  wire  r4,
input  wire  r5,
input  wire  wclk,
output reg  r1
);

    always @(posedge wclk)
    	r1 <= dma_req_d & !r2 & !r4 & !r5;

endmodule
