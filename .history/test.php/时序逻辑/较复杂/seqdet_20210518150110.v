module seqdet (
    x,z,clk,rst
);
input x,clk,rst;
output z;
reg [2:0] state;
wire z;
parameter A =3'b001 ;
parameter B =3'b010 ;
parameter C = 3'b011;
endmodule