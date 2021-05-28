module rcaadd(output sout,cout,input [3:0]a,b,input cin );

wire c1,c2,c3,s1,s2,s3;

fulladd u1(s1,c1,a[0],b[0],cin);
fulladd u2(s2,c2,a[1],b[1],c1);
fulladd u3(s3,c3,a[2],b[2],c2);
fulladd u4(sout,cout,a[3],b[3],c3);

endmodule

module fulladd(output sout,cout,input a,b,input cin);

 assign sout = a^b^cin;
 assign cout = a&b|b&cin|cin&a;

endmodule