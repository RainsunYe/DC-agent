// =========================================================
// Submodule: u_block_5
// =========================================================
module u_block_5 (
input wire [24:0]  Z11,
input wire [24:0]  Z12,
input wire [24:0]  Z13,
input wire [24:0]  Z14,
input wire [24:0]  Z15,
input wire [24:0]  Z16,
input wire [24:0]  Z17,
input wire [24:0]  Z18,
input wire [24:0]  Z21,
input wire [24:0]  Z22,
input wire [24:0]  Z23,
input wire [24:0]  Z24,
input wire [24:0]  Z25,
input wire [24:0]  Z26,
input wire [24:0]  Z27,
input wire [24:0]  Z28,
input wire [24:0]  Z31,
input wire [24:0]  Z32,
input wire [24:0]  Z33,
input wire [24:0]  Z34,
input wire [24:0]  Z35,
input wire [24:0]  Z36,
input wire [24:0]  Z37,
input wire [24:0]  Z38,
input wire [24:0]  Z41,
input wire [24:0]  Z42,
input wire [24:0]  Z43,
input wire [24:0]  Z44,
input wire [24:0]  Z45,
input wire [24:0]  Z46,
input wire [24:0]  Z47,
input wire [24:0]  Z48,
input wire [24:0]  Z51,
input wire [24:0]  Z52,
input wire [24:0]  Z53,
input wire [24:0]  Z54,
input wire [24:0]  Z55,
input wire [24:0]  Z56,
input wire [24:0]  Z57,
input wire [24:0]  Z58,
input wire [24:0]  Z61,
input wire [24:0]  Z62,
input wire [24:0]  Z63,
input wire [24:0]  Z64,
input wire [24:0]  Z65,
input wire [24:0]  Z66,
input wire [24:0]  Z67,
input wire [24:0]  Z68,
input wire [24:0]  Z71,
input wire [24:0]  Z72,
input wire [24:0]  Z73,
input wire [24:0]  Z74,
input wire [24:0]  Z75,
input wire [24:0]  Z76,
input wire [24:0]  Z77,
input wire [24:0]  Z78,
input wire [24:0]  Z81,
input wire [24:0]  Z82,
input wire [24:0]  Z83,
input wire [24:0]  Z84,
input wire [24:0]  Z85,
input wire [24:0]  Z86,
input wire [24:0]  Z87,
input wire [24:0]  Z88,
input wire  clk,
input wire  count_10,
input wire  count_of,
input wire  rst,
output reg [10:0] Z11_final,
output reg  Z12_final,
output reg  Z13_final,
output reg  Z14_final,
output reg [10:0] Z15_final,
output reg  Z16_final,
output reg  Z17_final,
output reg  Z18_final,
output reg [10:0] Z21_final,
output reg  Z22_final,
output reg  Z23_final,
output reg  Z24_final,
output reg [10:0] Z25_final,
output reg  Z26_final,
output reg  Z27_final,
output reg  Z28_final,
output reg [10:0] Z31_final,
output reg  Z32_final,
output reg  Z33_final,
output reg  Z34_final,
output reg [10:0] Z35_final,
output reg  Z36_final,
output reg  Z37_final,
output reg  Z38_final,
output reg [10:0] Z41_final,
output reg  Z42_final,
output reg  Z43_final,
output reg  Z44_final,
output reg [10:0] Z45_final,
output reg  Z46_final,
output reg  Z47_final,
output reg  Z48_final,
output reg [10:0] Z51_final,
output reg  Z52_final,
output reg  Z53_final,
output reg  Z54_final,
output reg [10:0] Z55_final,
output reg  Z56_final,
output reg  Z57_final,
output reg  Z58_final,
output reg [10:0] Z61_final,
output reg  Z62_final,
output reg  Z63_final,
output reg  Z64_final,
output reg [10:0] Z65_final,
output reg  Z66_final,
output reg  Z67_final,
output reg  Z68_final,
output reg [10:0] Z71_final,
output reg  Z72_final,
output reg  Z73_final,
output reg  Z74_final,
output reg [10:0] Z75_final,
output reg  Z76_final,
output reg  Z77_final,
output reg  Z78_final,
output reg [10:0] Z81_final,
output reg  Z82_final,
output reg  Z83_final,
output reg  Z84_final,
output reg [10:0] Z85_final,
output reg  Z86_final,
output reg  Z87_final,
output reg  Z88_final
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		Z11_final <= 0; Z12_final <= 0; Z13_final <= 0; Z14_final <= 0;
    		Z15_final <= 0; Z16_final <= 0; Z17_final <= 0; Z18_final <= 0;
    		Z21_final <= 0; Z22_final <= 0; Z23_final <= 0; Z24_final <= 0;
    		Z25_final <= 0; Z26_final <= 0; Z27_final <= 0; Z28_final <= 0;
    		Z31_final <= 0; Z32_final <= 0; Z33_final <= 0; Z34_final <= 0;
    		Z35_final <= 0; Z36_final <= 0; Z37_final <= 0; Z38_final <= 0;
    		Z41_final <= 0; Z42_final <= 0; Z43_final <= 0; Z44_final <= 0;
    		Z45_final <= 0; Z46_final <= 0; Z47_final <= 0; Z48_final <= 0;
    		Z51_final <= 0; Z52_final <= 0; Z53_final <= 0; Z54_final <= 0;
    		Z55_final <= 0; Z56_final <= 0; Z57_final <= 0; Z58_final <= 0;
    		Z61_final <= 0; Z62_final <= 0; Z63_final <= 0; Z64_final <= 0;
    		Z65_final <= 0; Z66_final <= 0; Z67_final <= 0; Z68_final <= 0;
    		Z71_final <= 0; Z72_final <= 0; Z73_final <= 0; Z74_final <= 0;
    		Z75_final <= 0; Z76_final <= 0; Z77_final <= 0; Z78_final <= 0;
    		Z81_final <= 0; Z82_final <= 0; Z83_final <= 0; Z84_final <= 0;
    		Z85_final <= 0; Z86_final <= 0; Z87_final <= 0; Z88_final <= 0;
    		end
    	else if (count_10 & count_of == 0) begin
    		Z11_final <= Z11[13] ? Z11[24:14] + 1 : Z11[24:14];
    		Z12_final <= Z12[13] ? Z12[24:14] + 1 : Z12[24:14];
    		Z13_final <= Z13[13] ? Z13[24:14] + 1 : Z13[24:14];
    		Z14_final <= Z14[13] ? Z14[24:14] + 1 : Z14[24:14];
    		Z15_final <= Z15[13] ? Z15[24:14] + 1 : Z15[24:14];
    		Z16_final <= Z16[13] ? Z16[24:14] + 1 : Z16[24:14];
    		Z17_final <= Z17[13] ? Z17[24:14] + 1 : Z17[24:14];
    		Z18_final <= Z18[13] ? Z18[24:14] + 1 : Z18[24:14]; 
    		Z21_final <= Z21[13] ? Z21[24:14] + 1 : Z21[24:14];
    		Z22_final <= Z22[13] ? Z22[24:14] + 1 : Z22[24:14];
    		Z23_final <= Z23[13] ? Z23[24:14] + 1 : Z23[24:14];
    		Z24_final <= Z24[13] ? Z24[24:14] + 1 : Z24[24:14];
    		Z25_final <= Z25[13] ? Z25[24:14] + 1 : Z25[24:14];
    		Z26_final <= Z26[13] ? Z26[24:14] + 1 : Z26[24:14];
    		Z27_final <= Z27[13] ? Z27[24:14] + 1 : Z27[24:14];
    		Z28_final <= Z28[13] ? Z28[24:14] + 1 : Z28[24:14]; 
    		Z31_final <= Z31[13] ? Z31[24:14] + 1 : Z31[24:14];
    		Z32_final <= Z32[13] ? Z32[24:14] + 1 : Z32[24:14];
    		Z33_final <= Z33[13] ? Z33[24:14] + 1 : Z33[24:14];
    		Z34_final <= Z34[13] ? Z34[24:14] + 1 : Z34[24:14];
    		Z35_final <= Z35[13] ? Z35[24:14] + 1 : Z35[24:14];
    		Z36_final <= Z36[13] ? Z36[24:14] + 1 : Z36[24:14];
    		Z37_final <= Z37[13] ? Z37[24:14] + 1 : Z37[24:14];
    		Z38_final <= Z38[13] ? Z38[24:14] + 1 : Z38[24:14]; 
    		Z41_final <= Z41[13] ? Z41[24:14] + 1 : Z41[24:14];
    		Z42_final <= Z42[13] ? Z42[24:14] + 1 : Z42[24:14];
    		Z43_final <= Z43[13] ? Z43[24:14] + 1 : Z43[24:14];
    		Z44_final <= Z44[13] ? Z44[24:14] + 1 : Z44[24:14];
    		Z45_final <= Z45[13] ? Z45[24:14] + 1 : Z45[24:14];
    		Z46_final <= Z46[13] ? Z46[24:14] + 1 : Z46[24:14];
    		Z47_final <= Z47[13] ? Z47[24:14] + 1 : Z47[24:14];
    		Z48_final <= Z48[13] ? Z48[24:14] + 1 : Z48[24:14]; 
    		Z51_final <= Z51[13] ? Z51[24:14] + 1 : Z51[24:14];
    		Z52_final <= Z52[13] ? Z52[24:14] + 1 : Z52[24:14];
    		Z53_final <= Z53[13] ? Z53[24:14] + 1 : Z53[24:14];
    		Z54_final <= Z54[13] ? Z54[24:14] + 1 : Z54[24:14];
    		Z55_final <= Z55[13] ? Z55[24:14] + 1 : Z55[24:14];
    		Z56_final <= Z56[13] ? Z56[24:14] + 1 : Z56[24:14];
    		Z57_final <= Z57[13] ? Z57[24:14] + 1 : Z57[24:14];
    		Z58_final <= Z58[13] ? Z58[24:14] + 1 : Z58[24:14]; 
    		Z61_final <= Z61[13] ? Z61[24:14] + 1 : Z61[24:14];
    		Z62_final <= Z62[13] ? Z62[24:14] + 1 : Z62[24:14];
    		Z63_final <= Z63[13] ? Z63[24:14] + 1 : Z63[24:14];
    		Z64_final <= Z64[13] ? Z64[24:14] + 1 : Z64[24:14];
    		Z65_final <= Z65[13] ? Z65[24:14] + 1 : Z65[24:14];
    		Z66_final <= Z66[13] ? Z66[24:14] + 1 : Z66[24:14];
    		Z67_final <= Z67[13] ? Z67[24:14] + 1 : Z67[24:14];
    		Z68_final <= Z68[13] ? Z68[24:14] + 1 : Z68[24:14]; 
    		Z71_final <= Z71[13] ? Z71[24:14] + 1 : Z71[24:14];
    		Z72_final <= Z72[13] ? Z72[24:14] + 1 : Z72[24:14];
    		Z73_final <= Z73[13] ? Z73[24:14] + 1 : Z73[24:14];
    		Z74_final <= Z74[13] ? Z74[24:14] + 1 : Z74[24:14];
    		Z75_final <= Z75[13] ? Z75[24:14] + 1 : Z75[24:14];
    		Z76_final <= Z76[13] ? Z76[24:14] + 1 : Z76[24:14];
    		Z77_final <= Z77[13] ? Z77[24:14] + 1 : Z77[24:14];
    		Z78_final <= Z78[13] ? Z78[24:14] + 1 : Z78[24:14]; 
    		Z81_final <= Z81[13] ? Z81[24:14] + 1 : Z81[24:14];
    		Z82_final <= Z82[13] ? Z82[24:14] + 1 : Z82[24:14];
    		Z83_final <= Z83[13] ? Z83[24:14] + 1 : Z83[24:14];
    		Z84_final <= Z84[13] ? Z84[24:14] + 1 : Z84[24:14];
    		Z85_final <= Z85[13] ? Z85[24:14] + 1 : Z85[24:14];
    		Z86_final <= Z86[13] ? Z86[24:14] + 1 : Z86[24:14];
    		Z87_final <= Z87[13] ? Z87[24:14] + 1 : Z87[24:14];
    		Z88_final <= Z88[13] ? Z88[24:14] + 1 : Z88[24:14]; 
    		end
    end

endmodule
