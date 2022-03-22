module top_module (
    input clk,
    input resetn,   // synchronous reset
    input in,
    output out);
    
    reg [3:0] t;
    
    assign out = t[0];
    
    always @(posedge clk) begin
        if(~resetn) t <= 0;
        else t <= {in,t[3:1]};
    end

endmodule
