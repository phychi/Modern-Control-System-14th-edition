% Chapter 6: The Stability of Linear Feedback Systems
% CP6.9
%
clear
k=0:0.1:10;
b=[-1;0;1]; c=[1 2 0]; d=0;
for i=1:length(k)
    a=[0 1 0;2 0 1;-k(i) -3 -2]; sysc=ss(a,b,c,d);
    sys=tf(sysc); p(:,i)=pole(sys);
end
plot(p,'.'), grid