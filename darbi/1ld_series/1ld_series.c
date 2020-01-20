#include <stdio.h>
#include <math.h>

void main() {
 double x, y, a, S;
 int k=0;
printf("Pētāmā funkcija ir y=sin(x)*sin(x)\n");
printf("Lūdzu, ievadiet x vērtību:\n");
scanf("%lf",&x);
printf("Esiet ievadījis x vērtību: %f\n",x);
printf("\n");

//aprēķināšana
y = sin(x)*sin(x);
printf("\ty = sin^2(%f) = %f\n",x,y);

a = pow(-1,k+1)*pow(x,2*k)*pow(2,2*k-1);
S = a;//S0=a0;

printf("\n");
printf("\tx=%f\ta=%f\tS=%f\n",x,a,S);
printf("\n");

while(k<501){
k++;
a = a*(-1)*pow(x,2)*2/((2*k)*(2*k-1));
S= S+a;
if (k==500||k==499){
printf("\t| Iterācija Nr. %d. | X=%f | a=%f | S=%f |\n",k,x,a,S);
	}
}

printf("\n");
printf("\n\t\t  500\n");
printf("\t\t.......\n");
printf("\t\t\\               k+1       2*k+1      2*k-1\n");
printf("\t\t \\         (-1)^    *   x^      *  2^      \n");
printf("\ty(x)=\t  }     -----------------------------------  = sin(x)*sin(x)\n");
printf("\t\t /                    (2*k)!\n");
printf("\t\t/    \n");
printf("\t\t'''''''\n");
printf("\t\t  k=1\n");

printf("\n");
printf("  \t\t\t\t\t2\n");
printf("  \t\t\t\t(-1) * x * 2\n");
printf("    Rekurences reizinātajs =   ---------------\n");
printf("  \t\t\t\t(2*k)*(2*k-1)");
printf("\n\n");

}


