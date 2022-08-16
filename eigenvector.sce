clc;
funcprot(0);
r = input("Enter order of matrix- ");
A = zeros(r,r);
for i = 1:r
    for j = 1:r
        A(i,j) = input ("Enter element :");
    end
end
[a,b] = spec (A);
disp("Eigen vector matrix: ",a);
disp("Eigen value matrix: ",b);
n = zeros(r);
for k =1:r
    disp("Eigen value : ",b(k,k));
    disp("Eigen vector : ", a(:,k));
    q = (a(:,k)'*a(:,k)) -1 ;
    if(abs(q) < 0.01) then
        disp("The eigenvector is normalized");
    else
        disp ("Eigen-vector is not normalized");
    end
end
G = poly(A,"c");
F = roots(G);
for z = 1:r
    disp("The eigen value is: ", F(z))
end
I = eye(r,r)
Q = zeros(r,1)
for o = 1:r
    P = A - F(o)*I;
    [z1,z2] = linsolve(P,Q);
    disp("The eigen-vector is: ",z2);
end



