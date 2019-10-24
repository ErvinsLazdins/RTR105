#include<stdio.h>

void main()
{
long long int  i,N=20,fact=1;

for(i=1;i<=N;i++)
{
fact=fact*i;
printf("Skaitļa %lld faktoriāls ir: %lld\n", i,fact);
}

}
