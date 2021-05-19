module fsm (
    Clock,Reset,A,K2,K1,state
);
    input Clock,Reset,A;
    output K1,K2;
    reg K2,K1;
    reg [1:0] state,nextstate;
    parameter Idle = 2'b00,
              Start = 2'b01,
              Stop = 2'b10,
              Clear = 2'b11;
              //
    always @(posedge Clock ) begin
        if(!Reset)
            state<=Idle;
        else
            state<=nextstate;
    end