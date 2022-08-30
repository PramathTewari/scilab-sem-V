
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
disp(P);
I = eye(P);
ptrans = P.';
pherm = P';
porth1 = round(real(P*ptrans));
porth2 = round(real(ptrans*P));
punit1 = round(real(pherm*P));
punit2 = round(real(P*pherm));
[evec,evals] = spec(P);
[n,m] = size(evec);
ptrace = trace(P);
det_p = det(P);
sum_ep = sum(evals);
sum_re = sum(real(evals));
prod_ep = prod(evals);
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
if abs(sum_ep-ptrace) then
    disp("The sum of eigen-values is equal to trace of chosen matrix")
end
if abs(prod_ep - det_p) < 0.01 then
    disp("The product of eigen-values is equal to determinant of chosen matrix")
end
if P == pherm then
    if (sum_re == sum_ep) then
        disp("All the eigen values are real for hermitian matrix")
    end
    /*for i = 1,m
        evec_o1 = round(evec(:,m)*evec(:,m).');
        evec_o2 = round(evec(:,m).'*evec(:,m));
        I_2 = eye(evec(:,m));
        disp(evec_o1)
        if evec_o1 == I_2 & eveco2 == I_2  then
            disp("The eigenvector is orthogonal")
        else
            disp("The eigenvector is not orthogonal")
        end
    end*/
    for i = 1:n
        for j = 1:n
            mprintf("\n evec(:,%d)''.evec(:,%d)=%6.2f",i,j,evec(:,i)'*evec(:,j))
        end
    end
end
