module ptosda(rst,sclk,ack,scl,sda,data);
input sclk,rst;
input [3:0] data;
output ack,scl,sda;
reg scl,link_sda,ack,sdabuf;
reg [3:0] databuf;
reg [7:0] state;
assign sda = link_sda?

parameter ready = 8'b0000_0000,
          start = 8'b0000_0001,
          bit1 = 8'b0000_0010,
          bit2 = 8'b0000_0100,
          bit3 = 8'b0000_1000,
          bit4 = 8'b0001_0000,
          bit5 = 8'b0010_0000,
          stop = 8'b0100_0000,
          IDLE = 8'b1000_0000;
always @(posedge sclk or negedge rst) begin
    if(!rst)
        scl=1;
    else
        scl=~scl;
end

endmodule