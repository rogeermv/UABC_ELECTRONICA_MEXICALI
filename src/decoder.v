
/*
      -- 1 --
     |       |
     6       2
     |       |
      -- 7 --
     |       |
     5       3
     |       |
      -- 4 --
*/

module seg7 (
    input wire [3:0] counter,
    output reg [6:0] segments
);

    always @(*) begin
        case(counter)
            //                7654321
            0: segments = 7'b0000000;
            1: segments = 7'b0111110; //U
            2: segments = 7'b1110111; //A
            3: segments = 7'b1111100; //B
            4: segments = 7'b0111001; //C
            5: segments = 7'b1000000; //-
            6: segments = 7'b1111001; //E
            7: segments = 7'b0111000; //L 
            8: segments = 7'b1111001; //E
            9: segments = 7'b0111001; //C
            10: segments = 7'b0110001; //T
            11: segments = 7'b1010000; //R
            12: segments = 7'b0111111; //O
            13: segments = 7'b1010100; //N
            14: segments = 7'b0110000; //I
            15: segments = 7'b0111001; //C
            16: segments = 7'b1110111; //A
            default:    
                segments = 7'b0000000;
        endcase
    end

endmodule

