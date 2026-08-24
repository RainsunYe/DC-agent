// =========================================================
// Submodule: u_tx_logic
// =========================================================
module u_tx_logic #(
    // Define Tp as a parameter with default value 1
    parameter Tp = 1 
)(
    input  wire       MTxClk,
    input  wire       Reset,
    input  wire       TooBig,
    // input  wire       Tp,   <-- removed: Tp cannot be both an input and a parameter
    input  wire       UnderRun,
    
    // Move the input into the port list and declare it as a wire
    input  wire [6:0] IPGR1,     // (from register) 
    input  wire [6:0] IPGR2,     // (from register) 
    input  wire [5:0] CollValid,
    
    output reg        MTxErr
);

    always @ (posedge MTxClk or posedge Reset)
    begin
      if(Reset)
        MTxErr <= #Tp 1'b0;
      else
        MTxErr <= #Tp (TooBig | UnderRun); // Parentheses improve readability
    end

endmodule