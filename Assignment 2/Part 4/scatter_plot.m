% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%this creates a scatter plot for the data
function r = scatter_plot(x, y)
    scatter(x, y, y*10);
    title('Planet Distances vs. Sizes');
    xlabel('Distance from Sun (AU)');
    ylabel('Planet Sizes');
    r = 1;
end