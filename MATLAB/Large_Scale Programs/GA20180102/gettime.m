function [ time_cost ] = gettime( f,m )
%UNTITLED7 此处显示有关此函数的摘要
%   此处显示详细说明
time = [
    40.0,  40.0, 30.0,  0.0;
    40.0,  40.0, 30.0,  0.0;
    20.0,  20.0, 15.0,  0.0;
    12.0,  10.0, 10.0,  7.5;
    35.0,  35.0, 26.25, 0.0;
    15.0,  15.0, 11.25, 0.0;
    30.0,  30.0, 22.5,  0.0;
    21.6,  18.0, 18.0,  13.5
    10.0,  10.0, 7.5,   0.0;
    10.0,  10.0, 7.5,   12.0
    15.0,  15.0, 11.25, 0.0;
    48.0,  40.0, 40.0,  30.0
    25.0,  25.0, 18.75, 0.0;
    25.0,  25.0, 18.75, 30.0
    26.4,  22.0, 22.0,  16.5
    20.0,  20.0, 15.0,  0.0;
    16.0,  16.0, 12.0,  0.0;
    35.0,  35.0, 26.25, 0.0;
    12.0,  12.0, 9.0,   0.0;
    12.0,  12.0, 9.0,  14.4;
    ];
    time_cost = time(f,m);
end

