// synthesis verilog_input_version verilog_2001
module top_module (
    input [7:0] in,
    output reg [2:0] pos );
    always@(*)
        begin
            casex(in)
                8'bzzzz_zzz1:pos=3'b000;
                8'bzzzz_zz10:pos=3'b001;
                8'bzzzz_z100:pos=3'b010;
                8'bzzzz_1000:pos=3'b011;
                8'bzzz1_0000:pos=3'b100;
                8'bzz10_0000:pos=3'b101;
                8'bz100_0000:pos=3'b110;
                8'b1000_0000:pos=3'b111; 
               // 8'b1zzz_zzzz:pos=3'b111;
               // 8'b01zz_zzzz:pos=3'b110;
               // 8'b001z_zzzz:pos=3'b101;
               // 8'b0001_zzzz:pos=3'b100;
               // 8'b0000_1zzz:pos=3'b011;
               // 8'b0000_01zz:pos=3'b010;
               // 8'b0000_001z:pos=3'b001;
               // 8'b0000_0001:pos=3'b000;
                default:pos=3'b000;
            endcase
        end
endmodule
