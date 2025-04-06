function use(net, x, C, A, S)
    p=C*exp(-((x-A).^2/S));
    Y=sim(net,p');
    fprintf('истинные значения:\t\t\tС=%f\tA=%f\tS=%f\n', C, A, S);
    fprintf('значения полученный сетью:\tС=%f\tA=%f\tS=%f\n', Y(1), Y(2), Y(3));
end