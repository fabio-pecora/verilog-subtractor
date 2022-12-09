module subtractor (A, B, Bin, D, Bo);
  input Bin, A, B;
  output D, Bo;
  wire x, Ao, y, z, j;
  xor U0(x, A, B);
  xor U1(D, Bin, x);
  not(Ao, A);
  not(j, x);
  and(y, Ao, B);
  and(z, j, Bin);
  or(Bo, y, z);
endmodule
