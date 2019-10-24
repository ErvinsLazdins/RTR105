#include<stdio.h>
#include<math.h>//fabs()
void main()
{
int a,b,c,t;
printf("Cienījamais lietotāj, lūdzu ievadi trīs skaitļus: ");

scanf("%d",&a);
scanf("%d",&b);
scanf("%d",&c);

	if(a>b && a>c)
	if (b>c)
;//a,b,c
	else
	{t=c;c=b;b=t;}  //a,c,b

	if(b>a && b>c)
if(a>c)
{t=b;b=a;a=t;}//b,a,c
else
{t=b;b=c;}//b,c,a

if(c>a && c>b)
if(a>b)
{t=a;a=c;c=t;t=c;c=b;b=t;}//c,a,b
else
{t=a;a=c;c=t;}//c,b,a

printf("Augošā secība: %d %d %d\n",a,b,c);

}
