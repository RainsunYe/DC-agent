// =========================================================
// Submodule: u_block_5
// =========================================================
module u_block_5 (
input wire  clk,
input wire  enable,
input wire  rst,
output reg  enable_1,
output reg  enable_2,
output reg  enable_3,
output reg  out_enable
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
    		enable_1 <= 0; enable_2 <= 0; enable_3 <= 0;
    		out_enable <= 0;
    		end
    	else begin
    		enable_1 <= enable; enable_2 <= enable_1;
    		enable_3 <= enable_2;
    		out_enable <= enable_3;
    		end
    end

endmodule
