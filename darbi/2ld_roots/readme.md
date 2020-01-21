# Nr.2. Laboratorijas darbs - Roots

## Teorija

Ar šo programmu iespējams aprēķināt funkcijas x vērtību pēc dotās y vērtībās, iespējams arī izvēlēties intervālu, kurā meklēt šīs saknes. Rezultātā var ar izvēlētu precizitāti veikt aprēķinus, un arī uzzināt, cik iterāciju bija nepieciešams veikt, lai nonāktu pie rezultāta.

## Programmas kods
```
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

```
## Rezultāts 
```
Tiks aprēķināta x vērtība funkcijai y=sin(x)*sin(x)
Jums būs jāievada y vērtību, un divi punkti (a un b), starp kuriem meklēsim x vērtību
Ievadiet y vērtību:
0.95
Ievadiet punktu a:
-15
Ievadiet punktu b:
5
Izvēlieties, ar kādu precizitāti tiks aprēķināta x vērtība:
1.e-3

f(a)  =  -0.527 = sin^2(-15.000)-0.950
f(b)  =  -0.030 = sin^2(  5.000)-0.950

		Iterācijas:
f(x)  =  -0.950 = sin^2( -5.000)-0.950
f(x)  =  -0.950 = sin^2(  0.000)-0.950
f(x)  =  -0.950 = sin^2(  2.500)-0.950
f(x)  =  -0.950 = sin^2(  3.750)-0.950
f(x)  =  -0.950 = sin^2(  4.375)-0.950
f(x)  =  -0.950 = sin^2(  4.688)-0.950
f(x)  =  -0.950 = sin^2(  4.531)-0.950
f(x)  =  -0.950 = sin^2(  4.453)-0.950
f(x)  =  -0.950 = sin^2(  4.492)-0.950
f(x)  =  -0.950 = sin^2(  4.473)-0.950
f(x)  =  -0.950 = sin^2(  4.482)-0.950
f(x)  =  -0.950 = sin^2(  4.487)-0.950
f(x)  =  -0.950 = sin^2(  4.485)-0.950
f(x)  =  -0.950 = sin^2(  4.486)-0.950
f(x)  =  -0.950 = sin^2(  4.487)-0.950

	  y=sin(x)*sin(x)
	  x=4.487  y=0.950
Lai aprēķinātu x vērtību pēc dotās precizitātes, bija jāveic 15 iterācijas

```
## Analīze
Programma precīzi aprēķina prasīto lielumu, tika pārbaudīts ar wolframalpha. 
## Attēli
![SaknesPunkts](https://github.com/ErvinsLazdins/RTR105/blob/master/darbi/2ld_roots/saknes_punkts.png)
