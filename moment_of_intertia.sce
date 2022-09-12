clc;
clear;
funcprot(0);
m = [1 1.5 1 2 1.5 2 1.5];
X = [1 0 1;2 -1 2;-3 -1 -6;4 1 2;0 3 2; 1 2 3;-1 -2 -3];
for i =1:7
    r2(i) = X(i,:)*X(i,:).';
end
for alpha = 1:3
    for betaa = 1:3
        sum1 = 0;
        for i = 1:7
            if alpha == betaa then
                suml =m(i)*(r2(i) - X(i,alpha)*X(i,betaa));
            else
                sum1 = -m(i)*(X(i,alpha)*X(i,betaa))
            end
        end
        I(alpha,betaa) = sum1;
    end
end
disp("The interia tensor matrix is: ")
disp(I);
[PA,PI] = spec(I)
for i = 1:3
    mprintf(" \n The principal moment of intertia is: %6.2f kg/m^2 ",PI(i,i));
end
mprintf("\n\n")
for i = 1:3
    disp("Principal axis of inertia is: ")
    disp(PA(:,i))
end
