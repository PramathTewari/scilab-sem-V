clc
clf
clear
N = input("no of point masses: ")
m=6
M = (m/N)*ones(1,N);
theta = linspace(0,2*%pi,N)
r = input("Enter the radius of the ring: ")
for i = 1:N
    X(i,1) = r*cos(theta(i))
    X(i,2) = r*sin(theta(i))
    X(i,3) = 0
end
for i = 1:N
    A(i,1) = X(i,1)
    B(i,1) = X(i,2)
end
for i = 1:N
    R(i) = 0
    for j = 1:3
        R(i) = R(i) + (X(i,j))^2
    end
end
//moment of inertia tensor
d = eye(3,3)
for a = 1:3
    for b = 1:3
        I(a,b) = 0
        for i = 1:N
            I(a,b) = I(a,b)+M(i)*((d(a,b)*R(i)-(X(i,a)*X(i,b))))
        end
    end
end
disp("The moment of inertia matrix is: ")
disp(I)
//for principal formula
[x,y] = spec(I)
for i =1:3
    printf(" %i) The principal moment of inertia is: %6.4f gcm^2 and corresponding principal axis of inertia is %6.4f i+%6.4f j +%6.4f k rad/sec \n",i,y(i,i),x(1,i),x(2,i),x(3,i))
end
//Verifying formula
Ix = y(1,1)
Iy = y(2,2)
Iz = y(3,3)
if abs((Ix+Iy)-Iz)<=0.01 then
    disp("as Ix + Iy = Iz, perpendicular axis theorem is verified")
else
    disp("Values do not match the theoretical value")
end
if ((abs(6*(r^2) - Iz) <= 0.1) && (abs(m*(r^2) - Iy) <= 0.1 ) && (abs(3*(r^2) - Iy) <= 0.1))
    disp("The values match theoretical value")
else
    disp("The values dont match theoretical value")
end
//Plotting Graphs
P1 = [-r*x(1,1),r*x(1,1)]
P2 = [-r*x(2,1),r*x(2,1)]
plot(P1,P2,"g")
plot(A,B,"b"),title("RING PLOT"),xlabel("x coordinates of points"),ylabel("y coordinates of points")
P3 = [-r*x(1,2),r*x(1,2)]
P4 = [-r*x(2,2),r*x(2,2)]
plot(P3,P4,"r")
legend("1st pa","Ring","2nd pa")
