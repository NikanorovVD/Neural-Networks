function test(net)
    [P, T, x] = generate_data(0);
    y=sim(net,P);
    
    figure();
    [mC,bC,rC]=postreg(y(1,:),T(1,:));
    title('параметр С')
    
    figure();    
    [mA,bA,rA]=postreg(y(2,:),T(2,:));
    title('параметр A')
    
    figure();
    [mS,bS,rS]=postreg(y(3,:),T(3,:));
     title('параметр S')
        
    fprintf('коэффициенты регрессии для сети\n');
    fprintf('для параметра С: %d\n', rC);
    fprintf('для параметра A: %d\n', rA);
    fprintf('для параметра S: %d\n', rS);
    fprintf('========================\n')
end