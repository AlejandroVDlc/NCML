

som = newsom(unknown_data, [10 10], 'hextop', 'linkdist', 400, 5);
som.trainParam.epochs = 100;

[trained_som, stats] = train(som, unknown_data);

 figure(1);
plotsomhits(trained_som, point1); % Winning nodes for F1.
% figure(2);
% 
% plotsomhits(trained_som, irisInputs(:,51:100)); % Winning nodes for F2.
% figure(3);
% plotsomhits(trained_som, irisInputs(:,101:150));