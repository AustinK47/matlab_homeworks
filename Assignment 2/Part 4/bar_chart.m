% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%this creates a bar chart for the data
function r = bar_chart(x, y)
    bar(x, y);
    title('Planet Distances from the Sun');
    xlabel('Planets');
    ylabel('Distance from sun (AU)');
    r = 1;
end