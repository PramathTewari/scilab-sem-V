funcprot(0)
clc
clear
format('e',8)
A = [1,2,4;0,4,7;0,0,6]
[a,b] = spec(A) // spec command used to find eigen values and eigen vectors
disp("eigen value matrix", b)
G = input("Enter the guess vector")//any random matrix will be multiply w/ matrix A
X = A*G
disp(X)
m = max (X)// finds biggest element of matrix
disp(m)
G = X/m // dividing max value of X to X
n = 0
while abs(m-n) >= 0.001
    C = A*G
    G = C/max(C)
    m = max(C)
    D = A*G
    G = D/ max(D)
    n = max(D)
end
disp("The dominant eigen value is", n)
disp("The corresponding eigen vector is ",G)
P = norm(G)
disp("The normalized eigen vector is: ", G/P) 
//part 2
F = input("Enter the guess vector ")//enter guess vector
I = inv(A)*F
disp(I)
M = max(I) // gives max value in I
F = I/M
N=0
while abs(M-N) >= 0.001
    U = inv(A)*F
    F = U/max(U)
    M = max(U)
    V = inv(A)*F
    F = V/max(V)
    N= max(V)
end
disp("The smallest eigen value is: ",1/N)//1/largest will give smallest value
disp("The corresponding eigen vector is: ",F)
O = norm(F)
disp("The normalized eigen vector is: ",F/O)
