% Chapter 6: The Stability of Linear Feedback Systems
% CP6.8
%
clear
K1=0:0.1:30; dc=[1 0];
ng=5; dg=[1 10 0];
sysg=tf(ng,dg);
for i=1:length(K1)
    nc=[2 K1(i)]; sysc=tf(nc,dc);
    sys=feedback(sysg,sysc);p(:,i)=pole(sys);
end
plot(p,'.'), grid
