function  [] = script1(som, P)

figure
plotsom(som.iw{1,1}, som.layers{1}.distances)
hold on
% Plot the data points in P10.
plot3(P(1,:), P(2,:), P(3,:), '+k')
figure
plotsomhits(som, P(:,1:100)) % Winning nodes for F1.
figure
plotsomhits(som, P(:,101:200))
