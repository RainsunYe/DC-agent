module RefModule (
  input  [254:0] in,
  output reg [7:0] out
);

  integer i; // Declare variable i before the loop

  always @(*) begin // Replace always_comb with always @(*)
    out = 0;
    for (i = 0; i < 255; i = i + 1) begin // Remove int and replace i++ with standard i = i + 1
      out = out + in[i];
    end
  end

endmodule