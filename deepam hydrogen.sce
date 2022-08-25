funcprot(0);
clc;
clear;
clf;
h = 1973;
m = 0.511e6;
e=3.795
x=linspace(1e-15,10,500);
n=500;
d = x(2)-x(1);
A = zeros(n,n);
A(1,[1:2]) = [-2,1];
A(n,[n-1:n]) = [1,-2];
for i = 2:n-1
    A(i,[i-1:i+1])=[1,-2,1]
end
//disp(A)
V = zeros(n,n);
for i=1:n
    V(i,i)=(-(e*e)/(x(i)))
end
H =(-((h^2)/(2*m*d*d))*A) + V;
[x,E]= spec(H)
disp("The energy of electron in ground state of hydrogen atom in eV")
disp(E(2,2));
disp("The energy of electron in first excited state of hydrogen atom in eV")
disp(E(3,3));
disp("The energy of electron in second state of hydrogen atom in eV")
disp(E(4,4));


