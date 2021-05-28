module bcd(output wire [3:0]so,output wire cout,input wire [3:0]si,input wire cin);
wire [3:0]a;
wire [3:0]b;
wire [3:0]a1;
wire [3:0]b1;

assign si[3] = a[3]^b[3]^cin;
assign si[2] = a[2]^b[2]^cin;
assign si[1] = a[1]^b[1]^cin;
assign si[0] = a[0]^b[0]^cin;

assign a1[3] = si[3]; 
assign a1[2] = si[2]; 
assign a1[1] = si[1]; 
assign a1[0] = si[0]; 
assign cout = si[3]&si[2]|si[3]&si[1]|cin;
assign b1[3] = 0;
assign b1[0] = 0;
assign b1[2] = cout;
assign b1[1] = cout;


assign so[3] = a1[3]^b1[3]^cin;
assign so[2] = a1[2]^b1[2]^cin;
assign so[1] = a1[1]^b1[1]^cin;
assign so[0] = a1[0]^b1[0]^cin;



endmodule