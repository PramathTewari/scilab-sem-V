funcprot(0);
clc;
clear;
clf;
disp("------------Deepam Sharma 19007------------")
h = 197.3;
r0 = 0.13149;
rm = 10;
D = 0.755501;
k = 100;
m = 940;
n=500;
r=linspace(r0,rm,n);
d = r(2)-r(1);
A = zeros(n,n);
A(1,[1:2]) = [-2,1];
A(n,[n-1:n]) = [1,-2];
for i = 2:n-1
    A(i,[i-1:i+1])=[1,-2,1]
end
//disp(A)
a = 1.44
V = zeros(n,n);
for i = 1:n
    R(i) = ((r(i) - r0)/r(i))
end
for i = 1:n
    V(i,i) = D*(exp(-2*a*R(i))- 2*exp(-a*R(i)))
end
H =(-((h^2)/(2*m*d*d))*A) + V;
[y,E]= spec(H)
disp("Ground state energy for a1(in eV):",E(1,1))
disp("First excited state state energy for a2(in eV):",E(2,2))
disp("Second excited state state energy for a3(in eV):",E(3,3))
subplot(3,2,1);
plot(r,y(:,2));
xlabel("distance in angstrom");
ylabel("ground state eigenvector");
title("plot of eigenvector of ground state");
xgrid();
subplot(3,2,2)
plot(r,(abs(y(:,2))).^2)
xlabel("distance in angstrom");
ylabel("probability density in ground state");
title("plot of probability density for ground state");
xgrid();
subplot(3,2,3);
plot(r,y(:,3))
xlabel("distance in angstrom");
ylabel("eigenvector of first excited state");
title("plot of eigenvector of first excited state");
xgrid();
subplot(3,2,4);
plot(r,(abs(y(:,3)).^2))
xlabel("distance in angstrom");
ylabel("probability density of first excited state");
title("plot of probability density of first excited state");
xgrid();
subplot(3,2,5);
plot(r,y(:,4))
xlabel("distance in angstrom");
ylabel("eigenvector of second excited state");
title("plot of eigenvector of second excited state");
xgrid();
subplot(3,2,6);
plot(r,(abs(y(:,4))).^2)
xlabel("distance in angstrom");
ylabel("probability density of second excited state");
title("plot of probability density second excited state");
xgrid();
xname("Deepam Sharma 19007");
