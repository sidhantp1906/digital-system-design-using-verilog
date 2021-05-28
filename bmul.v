module bm(output signed [7:0]a,input signed [3:0]m,q);
 
reg signed [7:0]a;
assign count = 4;
reg [3:0]mn;
 
integer i;
reg qn1;
reg [1:0]t;
 
always @(m,q)
begin 
qn1 = 0;
a = 8'b0;
 for(i=0;i<count;i=i+1)
begin
t = {q[i],qn1};
mn = -m;
case(t)
2'b10 : a[7:4] = a[7:4] +  mn;
2'b01 : a[7:4] = a[7:4] +  m;
default : begin end
endcase 
a = a>>1;
a[7] = a[6];
qn1 = q[i];
end
if(q==4'b1000)
begin 
a = -a;
end
end
endmodule



