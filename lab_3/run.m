function run(noise)
    [P, T, x] = generate_data(noise);
    net = train_net(P, T);
    test(net)
    use(net, x, 0.2, 0.8, 0.7)
end