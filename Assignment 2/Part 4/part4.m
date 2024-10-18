% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%planet distances and sizes in AU
planet_distances = [0.39, 0.72, 1.00, 1.52, 5.20, 9.58, 19.22, 30.06];
planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88];

%planet names
planet_names = ["Mercury" "Venus" "Earth" "Mars" "Jupiter" "Saturn" "Uranus" "Neptune"];
planet_names = 1:length(planet_sizes);

%scatter plot for distances vs sizes
x = planet_distances;
y = planet_sizes;
scatter_plot(x,y)

%bar chart for names and its distances
x = planet_names;
y = planet_distances;
bar_chart(x,y)

%this saves the chart and bar graph into a file
saveas(gcf, 'solar_system_visualization.png')
