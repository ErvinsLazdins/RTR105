#include<stdio.h>
#include<math.h>

void main(){
float a,x,delta_x,b,y;
a=0;
b=2*M_PI;

x=a;
delta_x = 0.1;
printf("\tx\n");
while(x<b)
{
printf("%10.1f%10.1f\n",x,sin(x));
x=x+delta_x;
}
}
