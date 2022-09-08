funcprot(0);
clc;
clear;
clf;
h = 1973;
a1 = 3
a2 = 5
a3 = 7
m = 0.511e6;
e=3.795
x=linspace(1e-15,10,500);
x2 = linspace(1e-15,10,100)
n=500;
d = x(2)-x(1);
A = zeros(n,n);
A(1,[1:2]) = [-2,1];
A(n,[n-1:n]) = [1,-2];
for i = 2:n-1
    A(i,[i-1:i+1])=[1,-2,1]
end
//disp(A)
V1 = zeros(n,n);
V2 = zeros(n,n);
V3 = zeros(n,n);
for i = 2:100
    Vc(i) = -(e*e/x2(i))
end
for i = 2:100
    Vk(i)=-((e*e)/(x2(i)))*(exp(-x2(i)/a1))
end
for i = 1:n
    V1(i,i)=-((e*e)/(x(i)))*(exp(-x(i)/a1))
end
for i = 1:n
    V2(i,i) = -((e*e)/(x(i)))*(exp(-x(i)/a2))
end
for i = 1:n
    V3(i,i) = -((e*e)/(x(i)))*(exp(-x(i)/a3))
end
H1 =(-((h^2)/(2*m*d*d))*A) + V1;
H2 =(-((h^2)/(2*m*d*d))*A)+ V2;
H3 =(-((h^2)/(2*m*d*d))*A) + V3;
[y1,E1]= spec(H1)
[y2,E2]= spec(H2)
[y3,E3]= spec(H3)
disp(E1(2,2))
disp(E2(2,2))
disp(E3(2,2))
subplot(3,2,1);
plot(x,y1(:,2));
xlabel("distance in angstrom");
ylabel("ground state eigenvector");
title("plot of eigenvector of first screening variable");
xgrid();
subplot(3,2,2)
plot(x,(abs(y1(:,2))).^2)
xlabel("distance in angstrom");
ylabel("probability density in ground state");
title("plot of probability density for first screening length");
xgrid();
subplot(3,2,3);
plot(x,y2(:,2))
xlabel("distance in angstrom");
ylabel("eigenvector of second screening function");
title("plot of eigenvector of second screening length");
xgrid();
subplot(3,2,4);
plot(x,(abs(y2(:,2))).^2)
xlabel("distance in angstrom");
ylabel("probability density of second screening length");
title("plot of probability density");
xgrid();
subplot(3,2,5);
plot(x,y3(:,2))
xlabel("distance in angstrom");
ylabel("eigenvector of third screening function");
title("plot of eigenvector of third screening length");
xgrid();
subplot(3,2,6);
plot(x,(abs(y3(:,2))).^2)
xlabel("distance in angstrom");
ylabel("probability density of third screening length");
title("plot of probability density third screening length");
xgrid();
xname("Pramath Tewari 19017");
scf();
plot(x2,Vc , 'r+')
plot(x2, Vk, 'g*')
xgrid();


