// =========================================================
// Submodule: u_block_4
// =========================================================
module u_block_4 (
input wire  Z_temp_11,
input wire  Z_temp_12,
input wire  Z_temp_13,
input wire  Z_temp_14,
input wire  Z_temp_15,
input wire  Z_temp_16,
input wire  Z_temp_17,
input wire  Z_temp_18,
input wire  Z_temp_21,
input wire  Z_temp_22,
input wire  Z_temp_23,
input wire  Z_temp_24,
input wire  Z_temp_25,
input wire  Z_temp_26,
input wire  Z_temp_27,
input wire  Z_temp_28,
input wire  Z_temp_31,
input wire  Z_temp_32,
input wire  Z_temp_33,
input wire  Z_temp_34,
input wire  Z_temp_35,
input wire  Z_temp_36,
input wire  Z_temp_37,
input wire  Z_temp_38,
input wire  Z_temp_41,
input wire  Z_temp_42,
input wire  Z_temp_43,
input wire  Z_temp_44,
input wire  Z_temp_45,
input wire  Z_temp_46,
input wire  Z_temp_47,
input wire  Z_temp_48,
input wire  Z_temp_51,
input wire  Z_temp_52,
input wire  Z_temp_53,
input wire  Z_temp_54,
input wire  Z_temp_55,
input wire  Z_temp_56,
input wire  Z_temp_57,
input wire  Z_temp_58,
input wire  Z_temp_61,
input wire  Z_temp_62,
input wire  Z_temp_63,
input wire  Z_temp_64,
input wire  Z_temp_65,
input wire  Z_temp_66,
input wire  Z_temp_67,
input wire  Z_temp_68,
input wire  Z_temp_71,
input wire  Z_temp_72,
input wire  Z_temp_73,
input wire  Z_temp_74,
input wire  Z_temp_75,
input wire  Z_temp_76,
input wire  Z_temp_77,
input wire  Z_temp_78,
input wire  Z_temp_81,
input wire  Z_temp_82,
input wire  Z_temp_83,
input wire  Z_temp_84,
input wire  Z_temp_85,
input wire  Z_temp_86,
input wire  Z_temp_87,
input wire  Z_temp_88,
input wire  clk,
input wire  count_8,
input wire  count_9,
input wire  count_of,
input wire  enable,
input wire  rst,
output reg  Z11,
output reg  Z12,
output reg  Z13,
output reg  Z14,
output reg  Z15,
output reg  Z16,
output reg  Z17,
output reg  Z18,
output reg  Z21,
output reg  Z22,
output reg  Z23,
output reg  Z24,
output reg  Z25,
output reg  Z26,
output reg  Z27,
output reg  Z28,
output reg  Z31,
output reg  Z32,
output reg  Z33,
output reg  Z34,
output reg  Z35,
output reg  Z36,
output reg  Z37,
output reg  Z38,
output reg  Z41,
output reg  Z42,
output reg  Z43,
output reg  Z44,
output reg  Z45,
output reg  Z46,
output reg  Z47,
output reg  Z48,
output reg  Z51,
output reg  Z52,
output reg  Z53,
output reg  Z54,
output reg  Z55,
output reg  Z56,
output reg  Z57,
output reg  Z58,
output reg  Z61,
output reg  Z62,
output reg  Z63,
output reg  Z64,
output reg  Z65,
output reg  Z66,
output reg  Z67,
output reg  Z68,
output reg  Z71,
output reg  Z72,
output reg  Z73,
output reg  Z74,
output reg  Z75,
output reg  Z76,
output reg  Z77,
output reg  Z78,
output reg  Z81,
output reg  Z82,
output reg  Z83,
output reg  Z84,
output reg  Z85,
output reg  Z86,
output reg  Z87,
output reg  Z88
);

    always @(posedge clk)
    begin
    	if (rst) begin
    		Z11 <= 0; Z12 <= 0; Z13 <= 0; Z14 <= 0; Z15 <= 0; Z16 <= 0; Z17 <= 0; Z18 <= 0;
    		Z21 <= 0; Z22 <= 0; Z23 <= 0; Z24 <= 0; Z25 <= 0; Z26 <= 0; Z27 <= 0; Z28 <= 0;
    		Z31 <= 0; Z32 <= 0; Z33 <= 0; Z34 <= 0; Z35 <= 0; Z36 <= 0; Z37 <= 0; Z38 <= 0;
    		Z41 <= 0; Z42 <= 0; Z43 <= 0; Z44 <= 0; Z45 <= 0; Z46 <= 0; Z47 <= 0; Z48 <= 0;
    		Z51 <= 0; Z52 <= 0; Z53 <= 0; Z54 <= 0; Z55 <= 0; Z56 <= 0; Z57 <= 0; Z58 <= 0;
    		Z61 <= 0; Z62 <= 0; Z63 <= 0; Z64 <= 0; Z65 <= 0; Z66 <= 0; Z67 <= 0; Z68 <= 0;
    		Z71 <= 0; Z72 <= 0; Z73 <= 0; Z74 <= 0; Z75 <= 0; Z76 <= 0; Z77 <= 0; Z78 <= 0;
    		Z81 <= 0; Z82 <= 0; Z83 <= 0; Z84 <= 0; Z85 <= 0; Z86 <= 0; Z87 <= 0; Z88 <= 0;
    		end
    	else if (count_8 & count_of == 1) begin
    		Z11 <= 0; Z12 <= 0; Z13 <= 0; Z14 <= 0;
    		Z15 <= 0; Z16 <= 0; Z17 <= 0; Z18 <= 0;
    		Z21 <= 0; Z22 <= 0; Z23 <= 0; Z24 <= 0;
    		Z25 <= 0; Z26 <= 0; Z27 <= 0; Z28 <= 0;
    		Z31 <= 0; Z32 <= 0; Z33 <= 0; Z34 <= 0;
    		Z35 <= 0; Z36 <= 0; Z37 <= 0; Z38 <= 0;
    		Z41 <= 0; Z42 <= 0; Z43 <= 0; Z44 <= 0;
    		Z45 <= 0; Z46 <= 0; Z47 <= 0; Z48 <= 0;
    		Z51 <= 0; Z52 <= 0; Z53 <= 0; Z54 <= 0;
    		Z55 <= 0; Z56 <= 0; Z57 <= 0; Z58 <= 0;
    		Z61 <= 0; Z62 <= 0; Z63 <= 0; Z64 <= 0;
    		Z65 <= 0; Z66 <= 0; Z67 <= 0; Z68 <= 0;
    		Z71 <= 0; Z72 <= 0; Z73 <= 0; Z74 <= 0;
    		Z75 <= 0; Z76 <= 0; Z77 <= 0; Z78 <= 0;
    		Z81 <= 0; Z82 <= 0; Z83 <= 0; Z84 <= 0;
    		Z85 <= 0; Z86 <= 0; Z87 <= 0; Z88 <= 0;
    		end
    	else if (enable & count_9) begin
    		Z11 <= Z_temp_11 + Z11; Z12 <= Z_temp_12 + Z12; Z13 <= Z_temp_13 + Z13; Z14 <= Z_temp_14 + Z14;
    		Z15 <= Z_temp_15 + Z15; Z16 <= Z_temp_16 + Z16; Z17 <= Z_temp_17 + Z17; Z18 <= Z_temp_18 + Z18;
    		Z21 <= Z_temp_21 + Z21; Z22 <= Z_temp_22 + Z22; Z23 <= Z_temp_23 + Z23; Z24 <= Z_temp_24 + Z24;
    		Z25 <= Z_temp_25 + Z25; Z26 <= Z_temp_26 + Z26; Z27 <= Z_temp_27 + Z27; Z28 <= Z_temp_28 + Z28;
    		Z31 <= Z_temp_31 + Z31; Z32 <= Z_temp_32 + Z32; Z33 <= Z_temp_33 + Z33; Z34 <= Z_temp_34 + Z34;
    		Z35 <= Z_temp_35 + Z35; Z36 <= Z_temp_36 + Z36; Z37 <= Z_temp_37 + Z37; Z38 <= Z_temp_38 + Z38;
    		Z41 <= Z_temp_41 + Z41; Z42 <= Z_temp_42 + Z42; Z43 <= Z_temp_43 + Z43; Z44 <= Z_temp_44 + Z44;
    		Z45 <= Z_temp_45 + Z45; Z46 <= Z_temp_46 + Z46; Z47 <= Z_temp_47 + Z47; Z48 <= Z_temp_48 + Z48;
    		Z51 <= Z_temp_51 + Z51; Z52 <= Z_temp_52 + Z52; Z53 <= Z_temp_53 + Z53; Z54 <= Z_temp_54 + Z54;
    		Z55 <= Z_temp_55 + Z55; Z56 <= Z_temp_56 + Z56; Z57 <= Z_temp_57 + Z57; Z58 <= Z_temp_58 + Z58;
    		Z61 <= Z_temp_61 + Z61; Z62 <= Z_temp_62 + Z62; Z63 <= Z_temp_63 + Z63; Z64 <= Z_temp_64 + Z64;
    		Z65 <= Z_temp_65 + Z65; Z66 <= Z_temp_66 + Z66; Z67 <= Z_temp_67 + Z67; Z68 <= Z_temp_68 + Z68;
    		Z71 <= Z_temp_71 + Z71; Z72 <= Z_temp_72 + Z72; Z73 <= Z_temp_73 + Z73; Z74 <= Z_temp_74 + Z74;
    		Z75 <= Z_temp_75 + Z75; Z76 <= Z_temp_76 + Z76; Z77 <= Z_temp_77 + Z77; Z78 <= Z_temp_78 + Z78;
    		Z81 <= Z_temp_81 + Z81; Z82 <= Z_temp_82 + Z82; Z83 <= Z_temp_83 + Z83; Z84 <= Z_temp_84 + Z84;
    		Z85 <= Z_temp_85 + Z85; Z86 <= Z_temp_86 + Z86; Z87 <= Z_temp_87 + Z87; Z88 <= Z_temp_88 + Z88;
    		end	
    end

endmodule
