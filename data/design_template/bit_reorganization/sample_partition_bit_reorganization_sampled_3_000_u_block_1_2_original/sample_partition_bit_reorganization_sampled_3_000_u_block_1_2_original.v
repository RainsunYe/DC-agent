// =========================================================
// Submodule: u_block_1
// =========================================================
module u_block_1 (
input wire [10:0]  Z11,
input wire [10:0]  Z12,
input wire [10:0]  Z13,
input wire [10:0]  Z14,
input wire [10:0]  Z15,
input wire [10:0]  Z16,
input wire [10:0]  Z17,
input wire [10:0]  Z18,
input wire [10:0]  Z21,
input wire [10:0]  Z22,
input wire [10:0]  Z23,
input wire [10:0]  Z24,
input wire [10:0]  Z25,
input wire [10:0]  Z26,
input wire [10:0]  Z27,
input wire [10:0]  Z28,
input wire [10:0]  Z31,
input wire [10:0]  Z32,
input wire [10:0]  Z33,
input wire [10:0]  Z34,
input wire [10:0]  Z35,
input wire [10:0]  Z36,
input wire [10:0]  Z37,
input wire [10:0]  Z38,
input wire [10:0]  Z41,
input wire [10:0]  Z42,
input wire [10:0]  Z43,
input wire [10:0]  Z44,
input wire [10:0]  Z45,
input wire [10:0]  Z46,
input wire [10:0]  Z47,
input wire [10:0]  Z48,
input wire [10:0]  Z51,
input wire [10:0]  Z52,
input wire [10:0]  Z53,
input wire [10:0]  Z54,
input wire [10:0]  Z55,
input wire [10:0]  Z56,
input wire [10:0]  Z57,
input wire [10:0]  Z58,
input wire [10:0]  Z61,
input wire [10:0]  Z62,
input wire [10:0]  Z63,
input wire [10:0]  Z64,
input wire [10:0]  Z65,
input wire [10:0]  Z66,
input wire [10:0]  Z67,
input wire [10:0]  Z68,
input wire [10:0]  Z71,
input wire [10:0]  Z72,
input wire [10:0]  Z73,
input wire [10:0]  Z74,
input wire [10:0]  Z75,
input wire [10:0]  Z76,
input wire [10:0]  Z77,
input wire [10:0]  Z78,
input wire [10:0]  Z81,
input wire [10:0]  Z82,
input wire [10:0]  Z83,
input wire [10:0]  Z84,
input wire [10:0]  Z85,
input wire [10:0]  Z86,
input wire [10:0]  Z87,
input wire [10:0]  Z88,
input wire  b000000000000000000000,
input wire  b111111111111111111111,
input wire  clk,
input wire  enable,
input wire  rst,
output reg [31:0]  Z11_int,
output reg [31:0]  Z12_int,
output reg [31:0]  Z13_int,
output reg [31:0]  Z14_int,
output reg [31:0]  Z15_int,
output reg [31:0]  Z16_int,
output reg [31:0]  Z17_int,
output reg [31:0]  Z18_int,
output reg [31:0]  Z21_int,
output reg [31:0]  Z22_int,
output reg [31:0]  Z23_int,
output reg [31:0]  Z24_int,
output reg [31:0]  Z25_int,
output reg [31:0]  Z26_int,
output reg [31:0]  Z27_int,
output reg [31:0]  Z28_int,
output reg [31:0]  Z31_int,
output reg [31:0]  Z32_int,
output reg [31:0]  Z33_int,
output reg [31:0]  Z34_int,
output reg [31:0]  Z35_int,
output reg [31:0]  Z36_int,
output reg [31:0]  Z37_int,
output reg [31:0]  Z38_int,
output reg [31:0]  Z41_int,
output reg [31:0]  Z42_int,
output reg [31:0]  Z43_int,
output reg [31:0]  Z44_int,
output reg [31:0]  Z45_int,
output reg [31:0]  Z46_int,
output reg [31:0]  Z47_int,
output reg [31:0]  Z48_int,
output reg [31:0]  Z51_int,
output reg [31:0]  Z52_int,
output reg [31:0]  Z53_int,
output reg [31:0]  Z54_int,
output reg [31:0]  Z55_int,
output reg [31:0]  Z56_int,
output reg [31:0]  Z57_int,
output reg [31:0]  Z58_int,
output reg [31:0]  Z61_int,
output reg [31:0]  Z62_int,
output reg [31:0]  Z63_int,
output reg [31:0]  Z64_int,
output reg [31:0]  Z65_int,
output reg [31:0]  Z66_int,
output reg [31:0]  Z67_int,
output reg [31:0]  Z68_int,
output reg [31:0]  Z71_int,
output reg [31:0]  Z72_int,
output reg [31:0]  Z73_int,
output reg [31:0]  Z74_int,
output reg [31:0]  Z75_int,
output reg [31:0]  Z76_int,
output reg [31:0]  Z77_int,
output reg [31:0]  Z78_int,
output reg [31:0]  Z81_int,
output reg [31:0]  Z82_int,
output reg [31:0]  Z83_int,
output reg [31:0]  Z84_int,
output reg [31:0]  Z85_int,
output reg [31:0]  Z86_int,
output reg [31:0]  Z87_int,
output reg [31:0]  Z88_int
);

    // Parameters
    parameter Q1_1	= 1;
    parameter Q1_2	= 1;
    parameter Q1_3	= 1;
    parameter Q1_4	= 1;
    parameter Q1_5	= 1;
    parameter Q1_6	= 1;
    parameter Q1_7	= 1;
    parameter Q1_8	= 1;
    parameter Q2_1	= 1;
    parameter Q2_2	= 1;
    parameter Q2_3	= 1;
    parameter Q2_4	= 1;
    parameter Q2_5	= 1;
    parameter Q2_6	= 1;
    parameter Q2_7	= 1;
    parameter Q2_8	= 1;
    parameter Q3_1	= 1;
    parameter Q3_2	= 1;
    parameter Q3_3	= 1;
    parameter Q3_4	= 1;
    parameter Q3_5	= 1;
    parameter Q3_6	= 1;
    parameter Q3_7	= 1;
    parameter Q3_8	= 1;
    parameter Q4_1	= 1;
    parameter Q4_2	= 1;
    parameter Q4_3	= 1;
    parameter Q4_4	= 1;
    parameter Q4_5	= 1;
    parameter Q4_6	= 1;
    parameter Q4_7	= 1;
    parameter Q4_8	= 1;
    parameter Q5_1	= 1;
    parameter Q5_2	= 1;
    parameter Q5_3	= 1;
    parameter Q5_4	= 1;
    parameter Q5_5	= 1;
    parameter Q5_6	= 1;
    parameter Q5_7	= 1;
    parameter Q5_8	= 1;
    parameter Q6_1	= 1;
    parameter Q6_2	= 1;
    parameter Q6_3	= 1;
    parameter Q6_4	= 1;
    parameter Q6_5	= 1;
    parameter Q6_6	= 1;
    parameter Q6_7	= 1;
    parameter Q6_8	= 1;
    parameter Q7_1	= 1;
    parameter Q7_2	= 1;
    parameter Q7_3	= 1;
    parameter Q7_4	= 1;
    parameter Q7_5	= 1;
    parameter Q7_6	= 1;
    parameter Q7_7	= 1;
    parameter Q7_8	= 1;
    parameter Q8_1	= 1;
    parameter Q8_2	= 1;
    parameter Q8_3	= 1;
    parameter Q8_4	= 1;
    parameter Q8_5	= 1;
    parameter Q8_6	= 1;
    parameter Q8_7	= 1;
    parameter Q8_8	= 1;
    parameter QQ1_1	= 4096/Q1_1;
    parameter QQ1_2	= 4096/Q1_2;
    parameter QQ1_3	= 4096/Q1_3;
    parameter QQ1_4	= 4096/Q1_4;
    parameter QQ1_5	= 4096/Q1_5;
    parameter QQ1_6	= 4096/Q1_6;
    parameter QQ1_7	= 4096/Q1_7;
    parameter QQ1_8	= 4096/Q1_8;
    parameter QQ2_1	= 4096/Q2_1;
    parameter QQ2_2	= 4096/Q2_2;
    parameter QQ2_3	= 4096/Q2_3;
    parameter QQ2_4	= 4096/Q2_4;
    parameter QQ2_5	= 4096/Q2_5;
    parameter QQ2_6	= 4096/Q2_6;
    parameter QQ2_7	= 4096/Q2_7;
    parameter QQ2_8	= 4096/Q2_8;
    parameter QQ3_1	= 4096/Q3_1;
    parameter QQ3_2	= 4096/Q3_2;
    parameter QQ3_3	= 4096/Q3_3;
    parameter QQ3_4	= 4096/Q3_4;
    parameter QQ3_5	= 4096/Q3_5;
    parameter QQ3_6	= 4096/Q3_6;
    parameter QQ3_7	= 4096/Q3_7;
    parameter QQ3_8	= 4096/Q3_8;
    parameter QQ4_1	= 4096/Q4_1;
    parameter QQ4_2	= 4096/Q4_2;
    parameter QQ4_3	= 4096/Q4_3;
    parameter QQ4_4	= 4096/Q4_4;
    parameter QQ4_5	= 4096/Q4_5;
    parameter QQ4_6	= 4096/Q4_6;
    parameter QQ4_7	= 4096/Q4_7;
    parameter QQ4_8	= 4096/Q4_8;
    parameter QQ5_1	= 4096/Q5_1;
    parameter QQ5_2	= 4096/Q5_2;
    parameter QQ5_3	= 4096/Q5_3;
    parameter QQ5_4	= 4096/Q5_4;
    parameter QQ5_5	= 4096/Q5_5;
    parameter QQ5_6	= 4096/Q5_6;
    parameter QQ5_7	= 4096/Q5_7;
    parameter QQ5_8	= 4096/Q5_8;
    parameter QQ6_1	= 4096/Q6_1;
    parameter QQ6_2	= 4096/Q6_2;
    parameter QQ6_3	= 4096/Q6_3;
    parameter QQ6_4	= 4096/Q6_4;
    parameter QQ6_5	= 4096/Q6_5;
    parameter QQ6_6	= 4096/Q6_6;
    parameter QQ6_7	= 4096/Q6_7;
    parameter QQ6_8	= 4096/Q6_8;
    parameter QQ7_1	= 4096/Q7_1;
    parameter QQ7_2	= 4096/Q7_2;
    parameter QQ7_3	= 4096/Q7_3;
    parameter QQ7_4	= 4096/Q7_4;
    parameter QQ7_5	= 4096/Q7_5;
    parameter QQ7_6	= 4096/Q7_6;
    parameter QQ7_7	= 4096/Q7_7;
    parameter QQ7_8	= 4096/Q7_8;
    parameter QQ8_1	= 4096/Q8_1;
    parameter QQ8_2	= 4096/Q8_2;
    parameter QQ8_3	= 4096/Q8_3;
    parameter QQ8_4	= 4096/Q8_4;
    parameter QQ8_5	= 4096/Q8_5;
    parameter QQ8_6	= 4096/Q8_6;
    parameter QQ8_7	= 4096/Q8_7;
    parameter QQ8_8	= 4096/Q8_8;

    always @(posedge clk)
    begin
    	if (rst) begin
    		Z11_int <= 0; Z12_int <= 0; Z13_int <= 0; Z14_int <= 0;
    		Z15_int <= 0; Z16_int <= 0; Z17_int <= 0; Z18_int <= 0; 
    		Z21_int <= 0; Z22_int <= 0; Z23_int <= 0; Z24_int <= 0;
    		Z25_int <= 0; Z26_int <= 0; Z27_int <= 0; Z28_int <= 0;
    		Z31_int <= 0; Z32_int <= 0; Z33_int <= 0; Z34_int <= 0;
    		Z35_int <= 0; Z36_int <= 0; Z37_int <= 0; Z38_int <= 0;
    		Z41_int <= 0; Z42_int <= 0; Z43_int <= 0; Z44_int <= 0;
    		Z45_int <= 0; Z46_int <= 0; Z47_int <= 0; Z48_int <= 0;
    		Z51_int <= 0; Z52_int <= 0; Z53_int <= 0; Z54_int <= 0;
    		Z55_int <= 0; Z56_int <= 0; Z57_int <= 0; Z58_int <= 0;
    		Z61_int <= 0; Z62_int <= 0; Z63_int <= 0; Z64_int <= 0;
    		Z65_int <= 0; Z66_int <= 0; Z67_int <= 0; Z68_int <= 0;
    		Z71_int <= 0; Z72_int <= 0; Z73_int <= 0; Z74_int <= 0;
    		Z75_int <= 0; Z76_int <= 0; Z77_int <= 0; Z78_int <= 0;
    		Z81_int <= 0; Z82_int <= 0; Z83_int <= 0; Z84_int <= 0;
    		Z85_int <= 0; Z86_int <= 0; Z87_int <= 0; Z88_int <= 0;
    		end
    	else if (enable) begin
    		Z11_int[10:0] <= Z11; Z12_int[10:0] <= Z12; Z13_int[10:0] <= Z13; Z14_int[10:0] <= Z14;
    		Z15_int[10:0] <= Z15; Z16_int[10:0] <= Z16; Z17_int[10:0] <= Z17; Z18_int[10:0] <= Z18;
    		Z21_int[10:0] <= Z21; Z22_int[10:0] <= Z22; Z23_int[10:0] <= Z23; Z24_int[10:0] <= Z24;
    		Z25_int[10:0] <= Z25; Z26_int[10:0] <= Z26; Z27_int[10:0] <= Z27; Z28_int[10:0] <= Z28;
    		Z31_int[10:0] <= Z31; Z32_int[10:0] <= Z32; Z33_int[10:0] <= Z33; Z34_int[10:0] <= Z34;
    		Z35_int[10:0] <= Z35; Z36_int[10:0] <= Z36; Z37_int[10:0] <= Z37; Z38_int[10:0] <= Z38;
    		Z41_int[10:0] <= Z41; Z42_int[10:0] <= Z42; Z43_int[10:0] <= Z43; Z44_int[10:0] <= Z44;
    		Z45_int[10:0] <= Z45; Z46_int[10:0] <= Z46; Z47_int[10:0] <= Z47; Z48_int[10:0] <= Z48;
    		Z51_int[10:0] <= Z51; Z52_int[10:0] <= Z52; Z53_int[10:0] <= Z53; Z54_int[10:0] <= Z54;
    		Z55_int[10:0] <= Z55; Z56_int[10:0] <= Z56; Z57_int[10:0] <= Z57; Z58_int[10:0] <= Z58;
    		Z61_int[10:0] <= Z61; Z62_int[10:0] <= Z62; Z63_int[10:0] <= Z63; Z64_int[10:0] <= Z64;
    		Z65_int[10:0] <= Z65; Z66_int[10:0] <= Z66; Z67_int[10:0] <= Z67; Z68_int[10:0] <= Z68;
    		Z71_int[10:0] <= Z71; Z72_int[10:0] <= Z72; Z73_int[10:0] <= Z73; Z74_int[10:0] <= Z74;
    		Z75_int[10:0] <= Z75; Z76_int[10:0] <= Z76; Z77_int[10:0] <= Z77; Z78_int[10:0] <= Z78;
    		Z81_int[10:0] <= Z81; Z82_int[10:0] <= Z82; Z83_int[10:0] <= Z83; Z84_int[10:0] <= Z84;
    		Z85_int[10:0] <= Z85; Z86_int[10:0] <= Z86; Z87_int[10:0] <= Z87; Z88_int[10:0] <= Z88;
    		// sign extend to make Z11_int a twos complement representation of Z11
    		Z11_int[31:11] <= Z11[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z12_int[31:11] <= Z12[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z13_int[31:11] <= Z13[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z14_int[31:11] <= Z14[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z15_int[31:11] <= Z15[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z16_int[31:11] <= Z16[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z17_int[31:11] <= Z17[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z18_int[31:11] <= Z18[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z21_int[31:11] <= Z21[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z22_int[31:11] <= Z22[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z23_int[31:11] <= Z23[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z24_int[31:11] <= Z24[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z25_int[31:11] <= Z25[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z26_int[31:11] <= Z26[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z27_int[31:11] <= Z27[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z28_int[31:11] <= Z28[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z31_int[31:11] <= Z31[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z32_int[31:11] <= Z32[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z33_int[31:11] <= Z33[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z34_int[31:11] <= Z34[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z35_int[31:11] <= Z35[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z36_int[31:11] <= Z36[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z37_int[31:11] <= Z37[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z38_int[31:11] <= Z38[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z41_int[31:11] <= Z41[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z42_int[31:11] <= Z42[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z43_int[31:11] <= Z43[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z44_int[31:11] <= Z44[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z45_int[31:11] <= Z45[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z46_int[31:11] <= Z46[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z47_int[31:11] <= Z47[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z48_int[31:11] <= Z48[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z51_int[31:11] <= Z51[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z52_int[31:11] <= Z52[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z53_int[31:11] <= Z53[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z54_int[31:11] <= Z54[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z55_int[31:11] <= Z55[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z56_int[31:11] <= Z56[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z57_int[31:11] <= Z57[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z58_int[31:11] <= Z58[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z61_int[31:11] <= Z61[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z62_int[31:11] <= Z62[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z63_int[31:11] <= Z63[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z64_int[31:11] <= Z64[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z65_int[31:11] <= Z65[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z66_int[31:11] <= Z66[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z67_int[31:11] <= Z67[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z68_int[31:11] <= Z68[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z71_int[31:11] <= Z71[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z72_int[31:11] <= Z72[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z73_int[31:11] <= Z73[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z74_int[31:11] <= Z74[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z75_int[31:11] <= Z75[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z76_int[31:11] <= Z76[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z77_int[31:11] <= Z77[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z78_int[31:11] <= Z78[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z81_int[31:11] <= Z81[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z82_int[31:11] <= Z82[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z83_int[31:11] <= Z83[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z84_int[31:11] <= Z84[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z85_int[31:11] <= Z85[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z86_int[31:11] <= Z86[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z87_int[31:11] <= Z87[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;
    		Z88_int[31:11] <= Z88[10] ? 21'b111111111111111111111 : 21'b000000000000000000000;	 
    		end
    end

endmodule
