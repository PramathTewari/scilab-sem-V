clc();
disp("Enter elemments of matrix A: ")
A = zeros(2,2);
for i = 1:2
    for j = 1:2
        A(i,j) = input ("Enter element :");
    end
end
disp("Enter elemments of matrix B: ")
B = zeros(2,2);
for i = 1:2
    for j = 1:2
        B(i,j) = input ("Enter element :");
    end
end
disp("Enter elemments of matrix C: ")
C = zeros(2,2);
for i = 1:2
    for j = 1:2
        C(i,j) = input ("Enter element :");
    end
end
disp("Enter elemments of matrix D: ")
D = zeros(2,2);
for i = 1:2
    for j = 1:2
        D(i,j) = input ("Enter element :");
    end
end
I = eye(A)
disp("A*B", A*B)
disp("B*A", B*A)
disp("C*D", C*D)
disp("size of A", size(A))
disp("Inverse of A", inv(A))
disp("Transpose of C", C.')
disp("Hermitian of C", C')
disp("A/I", A/I)
disp("A\I", A\I)
disp("I/A", I/A)
disp("I\A", I\A)
disp("A\B", A\B)
disp("A/B", A/B)
disp("B\A", B\A)
disp("B/A", B/A)
disp("Trace of A", trace(A))
disp("zeros(3,3)", zeros(3,3))
disp("ones(3,3)", ones(3,3))
disp("eye(A)",I)
disp("eye(3,3)",eye(3,3))
disp("determinant of A", det(A))
//Commutatuve Operation
S1 = A + B
S2 = B + A
C1 = S1 - S2
AC1 = S1 + S2
if C1==0 then
    disp("Addition is commutative")
elseif AC1 == 0 then
    disp("Addition is anti commutative")
else
    disp("Addition is non commutative")
end
//Non-Commutative Operation
P1 = A*B
P2 = B*A
C2 = P1 - P2
AC2 = P1 + P2 
if C2==0 then
    disp("Multiplication is commutative")
elseif AC2 == 0 then
    disp("Multiplication is anti commutative")
else
    disp("Multiplication is non commutative")
end
//Anti-Commutative Operation
P1 = A-B
P2 = B-A
C3 = P1 - P2
AC3 = P1 + P2
if C3 == 0 then
    disp("Subtraction is commutative")
elseif AC3 == 0 then
    disp("Subtraction is anti commutative")
else
    disp("Subtraction is non commutative")
end
//To find A is singular or not
c = det(A);
if (c == 0) then
    disp("The matrix is singular");
else
    disp("The matrix is non-singular");
end


