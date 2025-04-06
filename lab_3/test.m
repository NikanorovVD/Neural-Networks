function test(net)
    [P, T, x] = generate_data(0);
    y=sim(net,P);
    
    figure();
    [mC,bC,rC]=postreg(y(1,:),T(1,:));
    title('�������� �')
    
    figure();    
    [mA,bA,rA]=postreg(y(2,:),T(2,:));
    title('�������� A')
    
    figure();
    [mS,bS,rS]=postreg(y(3,:),T(3,:));
     title('�������� S')
        
    fprintf('������������ ��������� ��� ����\n');
    fprintf('��� ��������� �: %d\n', rC);
    fprintf('��� ��������� A: %d\n', rA);
    fprintf('��� ��������� S: %d\n', rS);
    fprintf('========================\n')
end