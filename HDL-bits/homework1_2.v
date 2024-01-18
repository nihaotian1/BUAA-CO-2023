module controller (
    input [3:0] x,
    output [6:0] y
);
    wire a = x[0];
    wire b = x[1];
    wire c = x[2];
    wire d = x[3];

    wire A, B, C, D, E, F, G;
    assign A = (a | b | c | !d) & (a | !b | c | d) & (!a | b | !c | !d) & (!a | !b | c | !d);
    assign B = (a | b | c | !d) & (a | b | !c | d) & (a | b | !c | !d) & (a | !b | !c | !d) &
        (!a | !b | c | !d);
    assign C = (a | b | c | !d) & (a | b | !c | !d) & (a | !b | c | d) & (a | !b | c | !d) &
        (a | !b | !c | !d) & (!a | b | c | !d);
    assign D = (a | b | c | !d) & (a | !b | c | d) & (a | !b | !c | !d) & (!a | b | !c | d) &
     (!a | !b | !c | !d);
    assign E = (a | b | !c | d) & (!a | !b | c | d) & (!a | !b | !c | d) & (!a | !b | !c | !d);
    assign F = (a | !b | c | !d) & (a | !b | !c | d) & (!a | b | !c | !d) & (!a | !b | c | d) &
     (!a | !b | !c | d) & (!a | !b | !c | !d);
    assign G = (a | b | c | d) & (a | b | c | !d) & (a | !b | !c | d) & (!a | b | !c | !d);
    assign y = {A, B, C, D, E, F, G};
endmodule