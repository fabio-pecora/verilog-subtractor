module test;
  // registers
 reg A, B, Bin;
  wire D, Bo;
  
  // instantiating the Unit Under Test(UUT)
  subtractor uut(A, B, Bin, D, Bo);
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars(1, test);
      $monitor("A - B - Bin = %b - %b - %b = Bo D = %b %b", A, B, Bin, D, Bo);
      
      A = 0; B = 0; Bin = 0;
  #10 A = 0; B = 0; Bin = 1;
  #10 A = 0; B = 1; Bin = 0 ;
  #10 A = 0; B = 1; Bin = 1;
  #10 A = 1; B = 0; Bin = 0;
  #10 A = 1; B = 0; Bin = 1;
  #10 A = 1; B = 1; Bin = 0;
  #10 A = 1; B = 1; Bin = 1;
      
      
      #10 $finish;
      
    end
endmodule
      
      
