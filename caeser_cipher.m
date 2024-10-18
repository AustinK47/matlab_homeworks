% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

function encryption = caeser_cipher(message,shift) 
%this is the message part of the input
a_m = double(message)
%this is the shift part of the input
a_m = a_m + shift
    for i = 1:length(a_m)
        fprintf('starting');
% next 2 statements say that the value cant be over 122 or below 97
        if a_m(i) > 122
            a_m(i) = a_m(i) - 25
            fprintf('%d', a_m(i))
        end
        if a_m(i) < 97
           a_m(i) = a_m(i) + 25
        end
    end
%prints the new encrypted message
    fprintf('The encrypted message is %s \n', a_m)