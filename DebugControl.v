
module DebugControl(
	input clk,
	input rst,
	input wire read_ready,
	input wire write_ready,
	input wire[7:0] com_data_in,
	
	output reg[7:0] com_data_out,
	output reg com_write_enable,
	output reg com_int_ack,
	
	input wire has_break,
	input wire[31:0] reg_data_in,
	output reg[4:0] reg_addr_out,
	output reg break_flag,
	output reg stop_flag,
	output reg[31:0] break_addr
);

	localparam READY = 4'b0000, REBACK = 4'b0001, WAIT = 4'b0010, OPERATE = 4'b0011;
	localparam PRINT1 = 4'b0100, PRINT2 = 4'b0101, PRINT3 = 4'b0110, PRINT4 = 4'b0111, RECOVERY = 4'b1000;	
	localparam PRINT5 = 4'b1001, PRINT6 = 4'b1010, PRINT7 = 4'b1011, PRINT8 = 4'b1100;
	
	localparam START = 3'b000, CONTINUE = 3'b001, BREAK = 3'b010, NEXT1 = 3'b011, PRINT = 3'b100, SET = 3'b101;
	localparam waittimes = 8'b00000101;

	reg[3:0] state;
	reg[2:0] operation;
	reg[7:0] times;
	reg[7:0] times_reg;
	reg[7:0] data_delay;
	reg[31:0] break_addr_delay;
	reg[4:0] reg_addr_out_delay;

	always @ (posedge clk or posedge rst) begin
		if (rst == 1'b1) begin
			stop_flag <= 0;
			break_flag <= 0;
			break_addr <= 0;
			state <= READY;
			com_int_ack <= 0;
			com_data_out <= 0;
			com_write_enable <= 0;
			data_delay <= 0;
			operation <= START;
			break_addr_delay <= 0;
			reg_addr_out <= 0;
			reg_addr_out_delay <= 0;
		end else begin 
				
			case (state)
					WAIT : begin
						if (has_break) begin
							stop_flag <= 1;
							state <= READY;
						end else begin
							stop_flag <= 0;
						end
					end
					
					READY: begin
						stop_flag <= 1;
						com_write_enable <= 0;
						if (read_ready && write_ready) begin
							state <= REBACK;
							com_int_ack <= 1;
							data_delay <= com_data_in;
						end
					end
					
					REBACK : begin
							com_int_ack <= 0;
							com_write_enable <= 0;
							state <= OPERATE;
					end
					
					OPERATE : begin
						state <= READY;
						if ((data_delay == 8'b01000011 || data_delay == 8'b01100011) && operation == START) begin
							operation <= CONTINUE;
						end else
						if ((data_delay == 8'b01001110 || data_delay == 8'b01101110) && operation == START) begin
							operation <= NEXT1;
						end else
						if ((data_delay == 8'b01000010 || data_delay == 8'b01100010) && operation == START) begin
							operation <= BREAK;
						end else
						if ((data_delay == 8'b01010000 || data_delay == 8'b01110000) && operation == START) begin
							operation <= PRINT;
						end else
						if ((data_delay == 8'b01010011 || data_delay == 8'b01110011) && operation == START) begin
							operation <= SET;
						end else						
						if (operation == CONTINUE) begin
							if (data_delay == 8'b00001101) begin
								state <= WAIT;
								stop_flag <= 0;
								operation <= START;
							end else begin
								operation <= START;
							end
						end else 
						if (operation == NEXT1) begin
							if (data_delay == 8'b00001101) begin
								state <= WAIT;
								stop_flag <= 0;
								break_addr <= break_addr + 4;
								break_flag <= 1;
								operation <= START;
							end else begin
								operation <= START;
							end
						end else 
						if (operation == SET) begin
							case (data_delay)
								8'b00110000: begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 0;
								end
								8'b00110001 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 1;
								end
								8'b00110010 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 2;
								end
								8'b00110011 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 3;
								end
								8'b00110100 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 4;
								end
								8'b00110101 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 5;
								end
								8'b00110110 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 6;
								end
								8'b00110111 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 7;
								end
								8'b00111000 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 8;
								end
								8'b00111001 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 9;
								end
								8'b01000001 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 10;
								end
								8'b01000010 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 11;
								end
								8'b01000011 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 12;
								end
								8'b01000100 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 13;
								end
								8'b01000101 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 14;
								end
								8'b01000110 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 15;
								end
								8'b01100001 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 10;
								end
								8'b01100010 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 11;
								end
								8'b01100011 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 12;
								end
								8'b01100100 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 13;
								end
								8'b01100101 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 14;
								end
								8'b01100110 :begin
									reg_addr_out_delay <= {reg_addr_out_delay[0],4'b0000} + 15;
								end
								8'b00001101 : begin
									reg_addr_out <= reg_addr_out_delay;  
									operation <= START;
								end
								default: begin
									operation <= START;
								end
							endcase
						end else
						if (operation == PRINT) begin
							if (data_delay == 8'b00001101) begin
								operation <= START;
								state <= PRINT1;
							end else
							begin
								operation <= START;
							end
						end else
						if (operation == BREAK) begin
							case (data_delay)
								8'b00110000: begin
									break_addr_delay <= {break_addr_delay[27:0],4'b0000} + 0;
								end
								8'b00110001 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 1;
								end
								8'b00110010 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 2;
								end
								8'b00110011 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 3;
								end
								8'b00110100 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 4;
								end
								8'b00110101 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 5;
								end
								8'b00110110 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 6;
								end
								8'b00110111 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 7;
								end
								8'b00111000 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 8;
								end
								8'b00111001 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 9;
								end
								8'b01000001 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 10;
								end
								8'b01000010 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 11;
								end
								8'b01000011 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 12;
								end
								8'b01000100 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 13;
								end
								8'b01000101 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 14;
								end
								8'b01000110 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 15;
								end
								8'b01100001 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 10;
								end
								8'b01100010 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 11;
								end
								8'b01100011 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 12;
								end
								8'b01100100 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 13;
								end
								8'b01100101 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 14;
								end
								8'b01100110 :begin
									break_addr_delay <= {break_addr_delay[27:0],4'b00} + 15;
								end
							   8'b00001101 :begin
									stop_flag <= 0;
									break_addr <= break_addr_delay;
									break_flag <= 1;
									operation <= START;
								end	
								default: begin
									operation <= START;
								end
							endcase 
						end else begin
							operation <= START;
						end
					end
					
					PRINT1 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 1;
								times_reg <= waittimes;
								if (reg_data_in[31:28] < 10)
									com_data_out <= reg_data_in[31:28] + 48;
								else
									com_data_out <= reg_data_in[31:28] + 55;										
								com_write_enable <= 1;
							end else state <= PRINT1;
					end

					PRINT2 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 2;
								times_reg <= waittimes;
								if (reg_data_in[27:24] < 10)
									com_data_out <= reg_data_in[27:24] + 48;
								else
									com_data_out <= reg_data_in[27:24] + 55;
								com_write_enable <= 1;
							end else state <= PRINT2;
					end					

					PRINT3 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 3;
								times_reg <= waittimes;;
								if (reg_data_in[23:20] < 10)
									com_data_out <= reg_data_in[23:20] + 48;
								else
									com_data_out <= reg_data_in[23:20] + 55;
								com_write_enable <= 1;
							end else state <= PRINT3;
					end
					
					PRINT4 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 4;
								times_reg <= waittimes;
								if (reg_data_in[19:16] < 10)
									com_data_out <= reg_data_in[19:16] + 48;
								else
									com_data_out <= reg_data_in[19:16] + 55;
								com_write_enable <= 1;
							end else state <= PRINT4;
					end
					
					PRINT5 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 5;
								times_reg <= waittimes;
								if (reg_data_in[15:12] < 10)
									com_data_out <= reg_data_in[15:12] + 48;
								else
									com_data_out <= reg_data_in[15:12] + 55;
								com_write_enable <= 1;
							end else state <= PRINT5;
					end

					PRINT6 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 6;
								times_reg <= waittimes;
								if (reg_data_in[11:8] < 10)
									com_data_out <= reg_data_in[11:8] + 48;
								else
									com_data_out <= reg_data_in[11:8] + 55;
								com_write_enable <= 1;
							end else state <= PRINT6;
					end					

					PRINT7 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 7;
								times_reg <= waittimes;
								if (reg_data_in[7:4] < 10)
									com_data_out <= reg_data_in[7:4] + 48;
								else
									com_data_out <= reg_data_in[7:4] + 55;
								com_write_enable <= 1;
							end else state <= PRINT7;
					end
					
					PRINT8 : begin
							if (write_ready) begin
								state <= RECOVERY;
								times <= 8;
								times_reg <= waittimes;
								if (reg_data_in[3:0] < 10)
									com_data_out <= reg_data_in[3:0] + 48;
								else
									com_data_out <= reg_data_in[3:0] + 55;
								com_write_enable <= 1;
							end else state <= PRINT8;
					end
					
					RECOVERY : begin
							if (times_reg <= 4) begin 
								com_write_enable <= 0;
							end
							if (times_reg != 0) begin
								state <= RECOVERY;
								times_reg <= times_reg -1;
							end else begin
								if (times == 8)
									state <= READY;
								else if (times == 0)
									state <= PRINT1;									
								else if (times == 1)
									state <= PRINT2;
								else if (times == 2)
									state <= PRINT3;
								else if (times == 3)
									state <= PRINT4;
								else if (times == 4)
									state <= PRINT5;
								else if (times == 5)
									state <= PRINT6;
								else if (times == 6)
									state <= PRINT7;
								else if (times == 7)
									state <= PRINT8;
							end
					end
					
					default : begin
					
					end
					
			endcase
			
		end
	end

endmodule
