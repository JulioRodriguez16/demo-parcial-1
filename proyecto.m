clear; 
clc;
f=@(t) (9.947331*t.*t.*t)+(2.947331*t.*t)+(0.873278*t)-54;
df=@(t) (29.841993*t.*t)+(5.894662*t)+(0.873278);
xr_ant=70;
x_1=100;
e=0;
error=50;
while abs(error)>.0001
    e=e+1;
    xr=x_1-f(x_1)/df(x_1);
    error =(xr-xr_ant)/xr;
    xr_ant=xr
    x_1=xr 
end
xr 
e
error
