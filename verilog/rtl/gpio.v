module gpio (
    input  wire        clk,
    input  wire        rst,
    input  wire [7:0]  gpio_in,
    output reg  [7:0]  gpio_out
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            gpio_out <= 8'b0;
        else
            gpio_out <= gpio_in; // mirror input to output
    end
endmodule

