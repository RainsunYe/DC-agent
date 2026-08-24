// =========================================================
// Submodule: u_block_4
// =========================================================
module u_block_4 (
input  wire  keysched_sbox_access_o,
input  wire [7:0] keysched_sbox_data_o,
input  wire  keysched_sbox_decrypt_o,
input  wire [7:0] subbytes_sbox_data_o,
input  wire  subbytes_sbox_decrypt_o
);

    // Internal variables with module prefix
reg [7:0] u_block_4_sbox_data_i;
reg  u_block_4_sbox_decrypt_i;

    always @(  keysched_sbox_access_o or   keysched_sbox_decrypt_o or   keysched_sbox_data_o or   subbytes_sbox_decrypt_o or   subbytes_sbox_data_o)

    begin

	
    	if(keysched_sbox_access_o)
    begin

    		u_block_4_sbox_decrypt_i = (keysched_sbox_decrypt_o);
    		u_block_4_sbox_data_i = (keysched_sbox_data_o);
	
    end
    else
    begin

    		u_block_4_sbox_decrypt_i = (subbytes_sbox_decrypt_o);
    u_block_4_sbox_data_i = (subbytes_sbox_data_o);
	
    end


    end

endmodule
