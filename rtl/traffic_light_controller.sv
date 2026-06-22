module traffic_light_controller(

    input clk,
    input rst,

    output reg ns_red,
    output reg ns_yellow,
    output reg ns_green,

    output reg ew_red,
    output reg ew_yellow,
    output reg ew_green
);

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;

reg [1:0] state;
reg [3:0] timer;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        state <= S0;
        timer <= 0;
    end
    else
    begin
        timer <= timer + 1;

        case(state)

        S0:
        begin
            if(timer == 9)
            begin
                state <= S1;
                timer <= 0;
            end
        end

        S1:
        begin
            if(timer == 2)
            begin
                state <= S2;
                timer <= 0;
            end
        end

        S2:
        begin
            if(timer == 9)
            begin
                state <= S3;
                timer <= 0;
            end
        end

        S3:
        begin
            if(timer == 2)
            begin
                state <= S0;
                timer <= 0;
            end
        end

        endcase
    end
end

always @(*)
begin

    ns_red    = 0;
    ns_yellow = 0;
    ns_green  = 0;

    ew_red    = 0;
    ew_yellow = 0;
    ew_green  = 0;

    case(state)

    S0:
    begin
        ns_green = 1;
        ew_red   = 1;
    end

    S1:
    begin
        ns_yellow = 1;
        ew_red    = 1;
    end

    S2:
    begin
        ns_red  = 1;
        ew_green = 1;
    end

    S3:
    begin
        ns_red   = 1;
        ew_yellow = 1;
    end

    endcase
end

endmodule