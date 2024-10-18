% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%this saves the function as a file
function r = save_to_file(file_name, data)
    fileID = fopen(file_name, 'w');
    fprintf(fileID, '%f %f %f\n', data);
    fclose(fileID);
    r = 1;
end