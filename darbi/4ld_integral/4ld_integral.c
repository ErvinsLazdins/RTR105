#include <stdio.h>
#include <math.h>


void main(){
double a,b,k,x,delta_x;
double trapece=0,taisnsturis=0,simsons=0;
int prec,n=0;

//Parametru iegūšana no lietotāja
printf("Pētāmā funkcija ir f(x)=sin(x)*sin(x)\n");
printf("Integrāļa aprēķināšana notiks noteiktā intervālā, kura sākums un beigas Jums jāievada:\n");
printf("\n");
printf("Sākums:\n");
scanf("%lf",&a);
printf("Beigas:\n");
scanf("%lf",&b);
printf("Izvēlieties precizitāti:\n");
scanf("%d",&prec);

delta_x=pow(10,-prec);

//Trapeces aprēķins
x=a;
while(x<=b){
trapece=trapece+((sin(x)*sin(x)+sin(x+delta_x)*sin(x+delta_x))*delta_x/2);
x+=delta_x;
}

//Taisnstūra aprēķins
x=a;
while(x<=b){
taisnsturis=taisnsturis+(sin(x)*sin(x)*delta_x);
x+=delta_x;
}

//Simsona aprēķins
x=a;
while(x<=b){
n++;
if(n==1)k=sin(x)*sin(x);
else if((x+delta_x)>b)k=sin(x)*sin(x);
else if(n%2==0)k=4*sin(x)*sin(x);
else if(n%2==1)k=2*sin(x)*sin(x);
simsons=simsons+k;
x+=delta_x;
}
simsons=simsons*delta_x/3;

//Rezultātu apkopojums un izvadīšana tabulas veidā
printf("\n");
printf("Laukuma vērtība (starp f(x) un x asi) tika aprēķināta pēc 3 dažādiem likumiem\n");
printf("Rezultāti apkopoti tabulā\n");
printf("\t--------------------------------------------------------\n");
printf("\t| Trapeces likums | Taisnstūra likums | Simsona likums |\n");
printf("\t--------------------------------------------------------\n");
printf("\t|    %f\t  | \t%f      |     %f   |\n",trapece,taisnsturis,simsons);
printf("\t--------------------------------------------------------\n");
}

