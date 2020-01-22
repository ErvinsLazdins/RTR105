#include<stdio.h>
#include<math.h>

void main(){
float a,b,x,delta_x;
int prec;

//parametru iegūšana no lietotāja
printf("Pētāmā funkcija ir f(x)=sin(x)*sin(x)\n");
printf("Pēc jūsu ievadītajiem parametriem tiks noteikts funkcijas pirmās un otrās kārtas atvasinājums pēc x\n");
printf("Jums būs jāizvēlas noteikts intervāls, jāievada tā sākums un beigas, kā arī aprēķinu precizitāte\n");
printf("Intervāla sākums:\n");
scanf("%f",&a);
printf("Intervāla beigas:\n");
scanf("%f",&b);
printf("Aprēķinu precizitāte:\n");
scanf("%d",&prec);

//aprēķini, to izvadīšana uz ekrāna un ierakstīšana failā "derivative.dat"
delta_x=pow(10,-prec);
FILE *fp = fopen("./derivative.dat", "w");
fprintf(fp,"\tx\t  sin^2(x)  \tsin^2\'(x)\tsin^2\'(x)\tsin^2\'\'(x)\tsin^2\'\'(x)\n");
fprintf(fp,"%10.2f\t%10.2f\t%10.2f\t%10.2f\t%10.2f\t%10.2f\n",x,sin(x)*sin(x),(sin(x+delta_x)*sin(x+delta_x)-sin(x)*sin(x))/delta_x,sin(2*x),2*((sin(2*x+delta_x))-sin(2*x))/delta_x,2*cos(2*x));
fclose(fp);

printf("\tx\t  sin^2(x)  \tsin^2\'(x)\tsin^2\'(x)\tsin^2\'\'(x)\tsin^2\'\'(x)\n");
x=a;
while(x<b){
printf("%10.2f\t%10.2f\t%10.2f\t%10.2f\t%10.2f\t%10.2f\n",x,sin(x)*sin(x),(sin(x+delta_x)*sin(x+delta_x)-sin(x)*sin(x))/delta_x,sin(2*x),2*((sin(2*x+delta_x))-sin(2*x))/delta_x,2*cos(2*x));
x+=delta_x;
}
}
