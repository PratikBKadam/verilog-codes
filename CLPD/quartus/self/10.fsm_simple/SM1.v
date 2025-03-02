// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// Generated by Quartus Prime Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition
// Created on Thu Sep 07 23:49:26 2023

// synthesis message_off 10175

`timescale 1ns/1ns

module SM1 (
    reset,clock,x,
    y);

    input reset;
    input clock;
    input x;
    tri0 reset;
    tri0 x;
    output y;
    reg y;
    reg [1:0] fstate;
    reg [1:0] reg_fstate;
    parameter state1=0,state2=1;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or x)
    begin
        if (reset) begin
            reg_fstate <= state1;
            y <= 1'b0;
        end
        else begin
            y <= 1'b0;
            case (fstate)
                state1: begin
                    if ((x == 1'b1))
                        reg_fstate <= state2;
                    else if ((x == 1'b0))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    if ((x == 1'b0))
                        y <= 1'b0;
                    else if ((x == 1'b1))
                        y <= 1'b1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        y <= 1'b0;
                end
                state2: begin
                    if ((x == 1'b0))
                        reg_fstate <= state2;
                    else if ((x == 1'b1))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    if ((x == 1'b0))
                        y <= 1'b1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        y <= 1'b0;
                    y <= 1'b0;
                end
                default: begin
                    y <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // SM1
