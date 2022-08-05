
net = newff(normHouseInputs, houseTargets, [20], {'tansig' 'purelin'}, 'trainrp', '', 'mse', {}, {}, 'dividerand');
net.trainParam.max_fail= 1000
net.trainParam.epochs = 5000
net.trainParam.min_grad = 0
net = init(net); [trained_net, stats] = train(net, normHouseInputs, houseTargets);