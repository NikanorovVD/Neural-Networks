function use(net, x, C, A, S)
    p=C*exp(-((x-A).^2/S));
    Y=sim(net,p');
    fprintf('�������� ��������:\t\t\t�=%f\tA=%f\tS=%f\n', C, A, S);
    fprintf('�������� ���������� �����:\t�=%f\tA=%f\tS=%f\n', Y(1), Y(2), Y(3));
end