clc
clear
clf 
funcprot()
disp("Pramath Tewari 20/19007")
//AIM: Enharmonic motion 
N=200
//Defining enharmonicity constant
a1=0
a2=10
a3=30
//Defining R
r=linspace(-5,5,N)
//Deifining Constants
K=100
h=197.3
m=940
d=r(2)-r(1)
C=-((h*h)/((2*m)*(d^2)))
//Making derivative matrix
D=zeros(N,N)
D(1,[1:2])=[-2,1]
D(N,[N-1:N])=[1,-2]
for i=2:N-1
    D(i,[i-1:i+1])=[1,-2,1]
end
//Making zero potential matrix
V1=zeros(N,N)
V2=zeros(N,N)
V3=zeros(N,N)
//Defining potentials
for i=1:N
V1(i,i)=(K*(r(i))^2)/(2) + (a1*(r(i)^3))/(3)
V2(i,i)=(K*(r(i))^2)/(2) + (a2*(r(i)^3))/(3)
V3(i,i)=(K*(r(i))^2)/(2) + (a3*(r(i)^3))/(3)
end 
for i=1:N
V4(i)=(K*(r(i))^2)/(2) + (a1*(r(i)^3))/(3)
V5(i)=(K*(r(i))^2)/(2) + (a2*(r(i)^3))/(3)
V6(i)=(K*(r(i))^2)/(2) + (a3*(r(i)^3))/(3)
end
//Making schrodinger equation 
H1=C*D+V1
H2=C*D+V2
H3=C*D+V3
[x1,y1]=spec(H1)
[x2,y2]=spec(H2)
[x3,y3]=spec(H3)
//Displaying energy values
disp("Energy eigen value for b=0 for n=0 and 1 are",y1(1,1),y1(2,2))
disp("Energy eigen value for b=10 for n=0 and 1 are",y2(1,1),y2(2,2))
disp("Energy eigen value for b=30 for n=0 and 1 are",y3(1,1),y3(2,2))
//Plotting wave function
//b=0
xname("b=0")
subplot(2,2,1)
xgrid(5,1,7)
plot(r,x1(:,1)),title("For n=0 Ground state"),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,2)
xgrid(5,1,7)
plot(r,x1(:,1)^2),title("For n=0 Ground state"),xlabel("Distance"),ylabel("Probablity density"),legend("20/19007 Deepam")
subplot(2,2,3)
xgrid(5,1,7)
plot(r,x1(:,2)),title("n=1 First excited state "),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,4)
xgrid(5,1,7)
plot(r,x1(:,2)^2),title("n=1 First excited state"),xlabel("Distance"),ylabel("Probablity density"),legend("20/19007 Deepam")
//b=10
scf()
xname("b=10")
subplot(2,2,1)
xgrid(5,1,7)
plot(r,x2(:,1)),title("For n=0 Ground state"),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,2)
xgrid(5,1,7)
plot(r,x2(:,1)^2),title("For n=0 Ground state "),xlabel("Distance"),ylabel("Probablity density"),legend("20/19007 Deepam")
subplot(2,2,3)
xgrid(5,1,7)
plot(r,x2(:,2)),title("n=1 First excited state "),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,4)
xgrid(5,1,7)
plot(r,x2(:,2)^2),title("n=1 First excited state "),xlabel("Distance"),ylabel("Probablity Density"),legend("20/19007 Deepam")
//b=30
scf()
xname("b=30 ")
subplot(2,2,1)
xgrid(5,1,7)
plot(r,x3(:,1)),title("For n=0 Ground state"),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,2)
xgrid(5,1,7)
plot(r,x3(:,1)^2),title("For n=0 Ground state"),xlabel("Distance"),ylabel("Probablity density"),legend("20/19007 Deepam")
subplot(2,2,3)
xgrid(5,1,7)
plot(r,x3(:,2)),title("n=1 First excited state"),xlabel("Distance"),ylabel("Wave function"),legend("20/19007 Deepam")
subplot(2,2,4)
xgrid(5,1,7)
plot(r,x3(:,2)^2),title("n=1 First excited state"),xlabel("Distance"),ylabel("Probablity density"),legend("20/19007 Deepam")
//Plotting potentials
scf()
xname("Plot of potentials")
xgrid(5,1,7)
plot(r,V4,"r+")
plot(r,V5,"b*")
plot(r,V6,"g.")
legend(['b=0','b=10','b=30'])






