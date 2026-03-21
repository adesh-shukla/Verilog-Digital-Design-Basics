module CLA4(
  input [3:0]a,b,
  input cin,
  output cout,
  output[3:0]sum
);
  wire [3:0]G,P;
  assign G = a&b;
  assign P = a^b;
    
  wire [4:0]C;
  
  assign C[0] = cin;
  assign C[1] = G[0] | (P[0]&C[0]);
  assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&C[0]);
  assign C[3] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&C[0]);
  assign C[4] = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&C[0]);
  
  assign sum[0] = P[0] ^ C[0];
  assign sum[1] = P[1] ^ C[1];
  assign sum[2] = P[2] ^ C[2];
  assign sum[3] = P[3] ^ C[3];
  assign cout = C[4];
endmodule