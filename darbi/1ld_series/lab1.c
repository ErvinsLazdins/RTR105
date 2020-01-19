#include <stdio.h>
#include <math.h>

void main() {
 double x, y, a, S;
 int k=0;
printf("Pētāmā funkcija ir y=sin(x)*sin(x)\n");
printf("Lūdzu, ievadiet x vērtību:\n");
scanf("%lf",&x);
printf("Esiet ievadījis x vērtību: %f\n",x);

//aprēķināšana
 y = sin(x)*sin(x);
 printf("y vērtība ir %f\n",y);

 a = pow(-1,k+1)*pow(x,2*k)*pow(2,2*k-1);
 S = a;//S0=a0;

printf("x=%f\ta=%f\tS=%f\n",x,a,S);

while(k<501){
 k++;
 a = a *pow(x,2) /((2*k)*(2*k+1)*4);
 S= S+a;
 if (k==500||k==499){
 printf("\t|\t%d.   |    X=%f\t|\ta=%f\t|\tS= %f\t   |\n", k, x, a, S);
  }
 }

 printf("\n\n");


 printf("\n\n");
 printf("\n\t\t  500\n");
 printf("\t\t.......\n");
 printf("\t\t\\               k+1       2*k+1      2*k-1\n");
 printf("\t\t \\         (-1)^    *   x^      *  2^      \n");
 printf("\ty(x)=\t  }    __________________________________  = sin(x)*sin(x)\n");
 printf("\t\t /                    (2*k)!\n");
 printf("\t\t/    \n");
 printf("\t\t'''''''\n");
 printf("\t\t  k=1\n");



}


