module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire w1;
    wire [15:0]w2,w3;
    add16  a1(.a(a[15:0]),.b(b[15:0]),.sum(sum[15:0]),.cout(w1));
    add16  a2(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(w2[15:0]));
    add16  a3(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(w3[15:0]));
    mux2x1 m1(.i0(w2),.i1(w3),.s(w1),.y(sum[31:16]));
endmodule

module mux2x1(input[15:0]i0,i1,s,output [15:0]y);
    assign y=s?i1:i0;
endmodule
