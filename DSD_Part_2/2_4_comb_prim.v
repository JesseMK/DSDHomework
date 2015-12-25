//File: 2_4_comb_prim.v

primitive comb_prim(Y, A, B, C, D);

  //
  output Y;
  input  A, B, C, D;

  table
    // A B C D : out;
       0 1 1 0 : 1;
       1 ? ? ? : 0;
       ? 0 ? ? : 0;
       ? ? 0 ? : 0;
       ? ? ? 1 : 0;
  endtable
endprimitive
