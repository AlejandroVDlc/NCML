global psonet P T
P = [[0; 0] [0; 1] [1; 0] [1; 1]]
T = [0 1 1 0]
psonet = newff(P, T, [2], {'tansig' 'logsig'}, 'traingd','', 'mse', {}, {}, '')

options = psooptimset('PopInitRange',[-1;1],'InertiaWeight',0.25, 'SocialAttraction',0.5,'CognitiveAttraction',2,'PopulationSize',7,'DemoMode','pretty', 'PlotFcns',{@psoplotswarm,@psoplotbestf,@psoplotvelocity});
[x, fval] = pso(@nntrainfcn,9,[],[],[],[],[],[],[],options);
psonet = setx(psonet, x);
plot_xor(psonet);
