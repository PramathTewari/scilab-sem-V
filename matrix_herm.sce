clc;
clear;
funcprot(0);
A = [1, 2*%i; -2*%i, 3];
B = [2 1 1;1 3 2;3 3 4];
C = [1-%i, -%i, 3+4*%i; %i 2 4;3-4*%i 4  8];
D = [2, -%i, 2*%i; %i 4 3;-2*%i 3 5];
E = [-3 -7 -5;2 4 3; 1 2 2]
F = (1/3)*[1 2 2; 2 1 -2;2 -2 1]
G = (1/sqrt(3))*[1 1+%i;1-%i -1 ]
// Asking user for inputting which matrix to use
P = input("Enter the matrix you want to use: ");
I = eye(P);
ptrans = P.';
pherm = P';
porth1 = round(real(P*ptrans));
porth2 = round(real(ptrans*P));
punit1 = round(real(pherm*inv(P)));
punit2 = round(real(inv(P)*pherm));
[E,V] = spec(P);
ptrace = trace(P);
if P == ptrans then
    disp("The matrix you chose is symmetric");
end
if P == -ptrans then
    disp("The matrix you chose is skew symmteric");
end
if P == pherm then
    disp("The matrix you chose is hermitian ")
end
if P == -pherm then
    disp("The matrix you chose is skew hermitian")
end
if porth1 == I & porth2 == I then
    disp("The matrix you chose is orthogonal")
end
if  punit1 == I & punit2 == I then
    disp("The matrix you chose is unitary")
end
