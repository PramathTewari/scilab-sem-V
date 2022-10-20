clc;
funcprot(0);
N = 100
k = 10
m = 0.01
L = linspace(1,N,N)
P = zeros(N,N)
P(1,[1:2]) = [2,-1]
P(N,[N-1:N])=[-1,2]
for i = 2:N-1
    P(i,[i-1:i+1])=[-1,2,-1]
end
A = (k/m)*P
[evec,eval] = spec(A)
for i = 1:N
    w(i)=sqrt(eval(i,i))
    p = i*w(1)
    q = w(i)
    if abs(q-p)<0.1 then
        printf("\n %6.5f ith harmonic mode is satisfied linear realtion wn~=nw1",i)
    end
end

//-----------ANGULAR FREQUENCY--------------
disp("The first angular frequency is: ",w(1),"rad/s")
disp("The second angular frequency is: ",w(2),"rad/s")
disp("The third angular frequency is: ",w(3),"rad/s")
disp("The third angular frequency is: ",w(4),"rad/s")
//--------FREQUENCY----------
disp("The first frequency is: ",w(1)/(2*%pi),"rad/s")
disp("The second frequency is: ",w(2)/(2*%pi),"rad/s")
disp("The third frequency is: ",w(3)/(2*%pi),"rad/s")
disp("The third frequency is: ",w(4)/(2*%pi),"rad/s")
subplot(2 ,2, 1)
title("First normal mode")
plot([0;L';N+1],[0;evec(:,1);0])
xlabel("distance")
ylabel("amplitude")
xgrid()
subplot(2, 2, 2)
title("Second normal mode")
plot([0;L';N+1],[0;evec(:,2);0])
xlabel("distance")
ylabel("amplitude")
xgrid()
subplot(2, 2, 3)
title("Third normal mode")
plot([0;L';N+1],[0;evec(:,3);0])
xlabel("distance")
ylabel("amplitude")
xgrid()
subplot(2, 2, 4)
title("Fourth Normal mode")
plot([0;L';N+1],[0;evec(:,4);0])
xlabel("distance")
ylabel("amplitude")
xgrid()
