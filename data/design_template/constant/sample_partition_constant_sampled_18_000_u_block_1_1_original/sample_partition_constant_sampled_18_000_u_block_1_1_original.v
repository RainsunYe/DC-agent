// =========================================================
// Submodule: u_block_1
// =========================================================
module u_block_1 (
input wire  clk,
output reg  T1,
output reg  T21,
output reg  T22,
output reg  T23,
output reg  T24,
output reg  T25,
output reg  T26,
output reg  T27,
output reg  T28,
output reg  T31,
output reg  T32,
output reg  T33,
output reg  T34,
output reg  T52
);

    always @(posedge clk)		
    begin // DCT matrix entries
    	T1 = 5793; // .3536
    	T21 = 8035; // .4904
    	T22 = 6811; // .4157
    	T23 = 4551; // .2778
    	T24 = 1598; // .0975
    	T25 = -1598; // -.0975
    	T26 = -4551; // -.2778
    	T27 = -6811; // -.4157
    	T28 = -8035; // -.4904
    	T31 = 7568; // .4619
    	T32 = 3135; // .1913
    	T33 = -3135; // -.1913
    	T34 = -7568; // -.4619
    	T52 = -5793; // -.3536
    end

endmodule
