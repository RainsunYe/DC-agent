// =========================================================
// Submodule: u_block_2
// =========================================================
module u_block_2 (
input wire  clk,
output reg  Ti1,
output reg  Ti21,
output reg  Ti22,
output reg  Ti23,
output reg  Ti24,
output reg  Ti25,
output reg  Ti26,
output reg  Ti27,
output reg  Ti28,
output reg  Ti31,
output reg  Ti32,
output reg  Ti33,
output reg  Ti34,
output reg  Ti52
);

    always @(posedge clk)		
    begin // The inverse DCT matrix entries
    	Ti1 = 5793; // .3536
    	Ti21 = 8035; // .4904
    	Ti22 = 6811; // .4157
    	Ti23 = 4551; // .2778
    	Ti24 = 1598; // .0975
    	Ti25 = -1598; // -.0975
    	Ti26 = -4551; // -.2778
    	Ti27 = -6811; // -.4157
    	Ti28 = -8035; // -.4904
    	Ti31 = 7568; // .4619
    	Ti32 = 3135; // .1913
    	Ti33 = -3135; // -.1913
    	Ti34 = -7568; // -.4619
    	Ti52 = -5793; // -.3536
    end

endmodule
