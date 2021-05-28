module fact(output [31:0]f,input [3:0]n);
reg [31:0]out;
reg [3:0]inp;
always @*
begin
out = n;
inp = n-1;
while(inp!=1)
begin
out = out*inp;
inp = inp-1;
end
end
assign f = out;
endmodule