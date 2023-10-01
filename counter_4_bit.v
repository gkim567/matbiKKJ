module counter_4_bit(
    input clk,
    input reset_n,
    output [3:0] cnt
    );
    
    reg [3:0] cnt;
    wire cnt_value=1;
    always @ (posedge clk or negedge reset_n) begin
        if(!reset_n) begin 
            cnt <= 4'b0;
        end
        else begin
            cnt <= cnt + cnt_value;
        end
    end
endmodule   