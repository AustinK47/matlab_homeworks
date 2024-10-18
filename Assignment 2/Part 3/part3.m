% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%Reads the weather data
data = readcell('weather_data.txt')

%puts the data into a table 
dates = data(2:end, 1);
temperature = cell2mat(data(2:end, 2))
humidity = cell2mat(data(2:end, 3))
precipitation = cell2mat(data(2:end, 4))

%calculates the average temp, average humidity, and total precipitation
avg_temperature = mean(temperature);
avg_humidity = mean(humidity);
total_precipitation = sum(precipitation);
data = [avg_temperature avg_humidity total_precipitation]

%saves the data
summary_data = {'Average Temperature', avg_temperature; 'Average Humidity', avg_humidity; 'Total Precipitation', total_precipitation}

%puts the data into another file
file_name = 'weather_summary.txt'
save_to_file(file_name, data)