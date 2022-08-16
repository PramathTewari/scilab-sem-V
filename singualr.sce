clc;
m = input("Enter number of rows - ");
n = input("Enter number of columns - ");
A = zeros(m,n);
for i = 1:m
    for j = 1:n
        A(i,j) = input ("Enter element :");
    end
end
c = det(A);
l = round(c) - c
if (abs(l)< 0.01) then
    disp("The matrix is singular");
else
    disp("The matrix is non-singular");
end

