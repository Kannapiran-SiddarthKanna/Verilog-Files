module yMux1(z, a, b, c);
output z;
input a, b, c;
wire notC, upper, lower;

not (notC, c);
and (upper, a, notC);
and (lower, c, b);
or  (z, upper, lower);

endmodule