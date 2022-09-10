funcprot(0);
clc;
clear;
clf;
h = 1973;
m = 0.511e6;
x=linspace(0,2,500);
x =x';
n=500;
d = x(2)-x(1);
A = zeros(n,n);
A(1,[1:2]) = [-2,1];
A(n,[n-1:n]) = [1,-2];
for i = 2:n-1
    A(i,[i-1:i+1])=[1,-2,1]
end
V = zeros(n,n);
H =(((-h^2)/(2*m*d*d))*A + V);
[V,E]=spec(H);
disp("The energy of ground state is: ")
disp(E(1,1));
disp("The energy of first excited state is: ")
disp(E(2,2));
subplot(2,2,1);
plot(x,V(:,1));
xlabel("distance in angstrom");
ylabel("eigenfunctions");
title("plot of eigenfunctions");
xgrid()
subplot(2,2,2)
plot(x,(abs(V(:,1))).^2)
xlabel("distance in angstrom");
ylabel("probability density");
title("plot of probability density");
xgrid();
subplot(2,2,3);
plot(x,(abs(V(:,2))))
xlabel("distance in angstrom");
ylabel("eigenfunctions");
title("plot of eigenfunctions");
xgrid();
subplot(2,2,4);
plot(x,(abs(V(:,2))).^2)
xlabel("distance in angstrom");
ylabel("probability density");
title("plot of probability density");
xgrid();
