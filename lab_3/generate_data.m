function [P, T, x] = generate_data(noise)
    P=zeros(100,21);
    T=zeros(3,100);
    x=0:5.e-2:1;
    for i=1:100
        c=0.9*rand+0.1;
        a=0.9*rand+0.1;
        s=0.9*rand+0.1; 
        T(1,i)=c;
        T(2,i)=a;
        T(3,i)=s;
        P(i,:)=c*exp(-((x-a).^2/s)) + rand() * noise;
    end
    
    P = P';
end