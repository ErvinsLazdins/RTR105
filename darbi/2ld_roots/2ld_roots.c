#include<stdio.h>
#include<math.h>

int main() {
float a,b,c,delta_x,x,fA,fB,fX;
int i=0;

//parametru iegūšana no lietotāja
printf("Tiks aprēķināta x vērtība funkcijai y=sin(x)*sin(x)\n");
printf("Jums būs jāievada y vērtību, un divi punkti (a un b), starp kuriem meklēsim x vērtību\n");
printf("Ievadiet y vērtību:\n");
scanf("%f",&c);
printf("Ievadiet punktu a:\n");
scanf("%f",&a);
printf("Ievadiet punktu b:\n");
scanf("%f",&b);
printf("Izvēlieties, ar kādu precizitāti tiks aprēķināta x vērtība:\n");
scanf("%e",&delta_x);

//aprēķins
fA=(sin(a)*sin(a))-c;
fB=(sin(b)*sin(b))-c;
fX=(sin(x)*sin(x))-c;
printf("\n");
printf("f(a)  = %7.3f = sin^2(%7.3f)-%5.3f\n",fA,a,c);
printf("f(b)  = %7.3f = sin^2(%7.3f)-%5.3f\n",fB,b,c);

printf("\n");
printf("\t\tIterācijas:\n");

while ((b-a)>delta_x){
x = (a+b)/2.;
if(fA*(sin(x)*sin(x)-c)>0)
a = x;
else
b = x;
printf("f(x)  = %7.3f = sin^2(%7.3f)-%5.3f\n",fX,x,c);
i++;
}

printf("\n");
printf("\t  y=sin(x)*sin(x)\n");
printf("\t  x=%.3f  y=%.3f\n",x,sin(x)*sin(x));
printf("Lai aprēķinātu x vērtību pēc dotās precizitātes, bija jāveic %d iterācijas\n",i);

return 0;
}
