#include<stdio.h>
void user_function_3(int i_uf)
{
printf("Cienījamais lietotāj, sveicu Tevi no savas lietotāja funkcijas %d. reizi!\n",i_uf);
}

void user_function_4(int i_uf, double d_uf);

void main()
{
int i_main=0, N=5;
while(i_main<N)
{
i_main++;
user_function_3(i_main);
//user_function_4(i_main, (double) i_main / N  );
user_function_4(i_main, 1. *i_main / N  );
}
}

void user_function_4(int i_uf, double d_uf)//šie i_uf un d_uf ir saistīti atikai ar 4. funkciju
{
printf("Vienkārši skaitam: %d. reizi, tātad %.2f daļa(s)!\n",i_uf, d_uf);
}
