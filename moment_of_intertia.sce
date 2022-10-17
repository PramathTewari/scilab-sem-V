clc;
clear;
funcprot(0);
m = [1 1.5 1 2 1.5 2 1.5];
X = [1 0 1;2 -1 2;-3 -1 -6;4 1 2;0 3 2; 1 2 3;-1 -2 -3];
for i =1:7
    r2(i) = X(i,:)*X(i,:).';
end
d = eye(3,3)
for alpha = 1:3
    for betaa = 1:3
        I(alpha,betaa) = 0
        for i = 1:7
            I(alpha,betaa) = I(alpha,betaa)+m(i)*((d(alpha,betaa)*r2(i)-(X(i,alpha)*X(i,betaa))))
        end
    end
end
disp("The interia tensor matrix is: ")
disp(I);
[PA,PI] = spec(I)
for i = 1:3
    mprintf(" \n The principal moment of intertia in gcm2 is: %6.2f kg/m^2 ",PI(i,i));
end
mprintf("\n\n")
for i = 1:3
    disp("Principal axis of inertia rad/sec is: ")
    disp(PA(:,i))
end
