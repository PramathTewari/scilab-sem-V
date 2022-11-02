clc
clear
clf()
//Translation
auto_scale="off"
scf(0)
a=gca()
a.data_bounds=[-6,-5;6,5]
a.grid=[1,-1,1]
x=[0,2,2,0,0;0,0,2,2,0;1,1,1,1,1]//original matrix
tx=-5
ty=1
t=[1 0 tx;0,1,ty;0,0,1]//translating matrix
u=t*x
plot(x(1,:),x(2,:),'-o')
plot(u(1,:),u(2,:),'-*')
xgrid()
//ploting
xlabel("x axis")
ylabel("y axis")
legend("old coordinate","new coordinate","Annu Dalal ")
title("transformation")
xgrid
//Shearing
s1=[1,-1/2,0;0,1,0;0,0,1]// shear matrix for x axis
s2=[1,1/2,0;0,1,0;0,0,1]//shear matrix for y axis
k=s1*x
l=s2*x
scf(2)
a=gca()
a.data_bounds=[-6,-5;6,5]
subplot(2,1,1)
plot(x(1,:),x(2,:),'-o')
plot(k(1,:),k(2,:),'-*')
legend("previous graph","after shearing along x axis")
title("graph of shearing")
xgrid;
subplot(2,1,2)
a=gca()
a.data_bounds=[-6,-5;6,5]
plot(x(1,:),x(2,:),'-o')
plot(l(1,:),l(2,:),'-*')
legend("previous graph","after shearing along y axis")
title("graph of shearing")
xgrid
//Scaling
scf(3)
a=gca()
a.data_bounds=[-10,-10;10,10]
sx=3
sy=4
M=[sx,0,0;0,sy,0;0,0,1]//Scaling matrix
w=M*x
plot(x(1,:),x(2,:),'-o')
plot(w(1,:),w(2,:),'-*')
xlabel("x axis")
ylabel("y axis")
legend("previous graph","after scalling")
title("scalling")
xgrid
//Clockwise Rotation
scf(4)
a=gca()
a.data_bounds=[-6,-5;6,5]
n=[0,3,3,0,0;0,0,1,1,0;1,1,1,1,1]
theta=-35*%pi/180// changing to radian
D=[cos(theta),-sin(theta),0;sin(theta),cos(theta),0;0,0,1]
S=D*n
plot(n(1,:),n(2,:),'-o')
plot(S(1,:),S(2,:),'-*')
xlabel("x axis")
ylabel("y axis")
legend("previous graph","after rotation")
title("rotation")
xgrid
//Reflection
scf(5)
T=[2,4,3,2;1,1,2,1;1,1,1,1]//initial coordinate matrix
t1=[1,0,0;0,-1,0;0,0,1]// post reflection matrix 
t2=[-1,0,0;0,1,0;0,0,1]
t3=[-1,0,0;0,-1,0;0,0,1]
a=gca()
a.data_bounds=[-6,-5;6,5]
P=t1*T
plot(T(1,:),T(2,:),'-o')
plot(P(1,:),P(2,:),'-*')
W=t2*T
plot(W(1,:),W(2,:),'-.')
X=t3*T
plot(X(1,:),X(2,:),'-+')
xlabel("x axis")
ylabel("y axis")
legend("previous graph"," graph of reflection along x axis","graph of reflection along y axis","graph reflection with origin")
title("reflection graph")
xgrid
