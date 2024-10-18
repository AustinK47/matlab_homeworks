% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

population = [5000, 5200, 5350, 5600, 5800];

%calculates the growth rate year over year
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1)*100;

%this puts the data into a table
pop_data = [population; [0 growth_rate]]

%this creates the table for population and growth rate
for i = 1:length(population)
     fprintf('%d\t%f\n', pop_data(1, i), pop_data(2, i))
end

