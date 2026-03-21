module testbench;
  reg [3:0]a,b;
  reg cin;
  wire cout;
  wire [3:0]sum;
  
  CLA4 uut(
    .a(a),
    .b(b),
    .cin(cin),
    .cout(cout),
    .sum(sum)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,testbench);
    $monitor("a=%b b=%b cin=%b | cout=%b sum=%b",
             a, b, cin, cout, sum);
    a=4'b0000; b=4'b0000; cin=0; #10;
    a=4'b0001; b=4'b0010; cin=0; #10;
    a=4'b1111; b=4'b0001; cin=0; #10;
    a=4'b0101; b=4'b0011; cin=1; #10;
    a=4'b1010; b=4'b1001; cin=0; #10;
    $finish;
  end
endmodule