% Author Name: Austin Kreyenhagen
% Email: kreyen94@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10/18/24

%reads the data from the stocks in another file
fileID = fopen('stock_data.txt', 'r');
stock_data = fscanf(fileID, '%f');
fclose(fileID);

%calculating statistics
ave_stock = mean(stock_data); %average stock
high_stock = max(stock_data); %highest stock
low_stock = min(stock_data); %lowest stock
price_increases = sum(diff(stock_data) > 0); %price increases day-to-day

%displays the results
fprintf("The average is %f\n", ave_stock)
fprintf("The high stock is %f\n", high_stock)
fprintf("The low stock is %f\n", low_stock)
fprintf("Number of days price increased is %f\n", price_increases)

%plotting the data
days = 1:length(stock_data);

figure;
plot(days, stock_data, '-o', 'Linewidth', 2); %daily closing prices

yline(ave_stock, '--r', 'LineWidth', 2, 'Label', 'Average Stock'); %horizontal line for average stock
yline(high_stock, '--g', 'LineWidth', 2, 'Label', 'Highest Stock'); %horizontal line for highest stock
yline(low_stock, '--b', 'LineWidth', 2, 'Label', 'Average Stock'); %horizontal line for lowest stock

%adding labels and titles to graph
xlabel('Day');
ylabel('Stock Price');
title('Stock Price analysis');
legend('Daily Stocks', 'Average Stock', 'Highest Stock', 'Lowest Stock', 'Location', 'best');

%saving plot as an image
saveas(gcf, 'stock_analysis.png');

%writing the summary to another file
fileID = fopen('stock_summary.txt', 'w');
fprintf(fileID, 'Stock Price Analysis Summary\n');
fprintf(fileID, '----------------\n');
fprintf(fileID, 'Average Stock Price: %.2f\n', ave_stock);
fprintf(fileID, 'Highest Stock Price: %.2f\n', high_stock);
fprintf(fileID, 'Lowest Stock Price: %.2f\n', low_stock);
fprintf(fileID, 'Number of days the stock increased: %d\n', price_increases);
fclose(fileID);