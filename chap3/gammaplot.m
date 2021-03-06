%plot of the equation s=cr^gamma
x=0:0.01:1;
y1=x.^1;
y2=x.^1.5;
y3=x.^2.5;
y4=x.^5;
y5=x.^10;
y6=x.^25;
y7=x.^.67;
y8=x.^.40;
y9=x.^.20;
y10=x.^.1;
y11=x.^1;
y12=x.^.04;
plot(x,y1,x,y2,x,y3,x,y4,x,y5,x,y6,x,y7,x,y8,x,y9,x,y10,x,y11,x,y12)
xlabel('input intensity level,r')
ylabel('Output intensity level,s')
title('plot the equations s=c*r^gamma')