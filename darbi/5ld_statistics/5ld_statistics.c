#include<stdio.h>
#include<string.h>

int main(){

char in_st[200];
int i, j, k, tmp, garums, mazaka=200, lielaka=0, videja, medi, vertiba, kop_s=0;
int max=0;

printf("Lietotāj, lūdzu ievadiet simbolu rindu:\n");
scanf("%[^\n]", in_st);

//Rindas garums
garums=strlen(in_st);
printf("Ievadītās rindas garums ir %d simboli\n", garums);

//sakartosana
for (j=0;j<garums;j++){
for (i=0;i<garums-1;i++){
if (in_st[i]>in_st[i+1]){
tmp =in_st[i+1];
in_st[i+1] = in_st[i];
in_st[i]= tmp;
		}
	}
}

//videja
for(i=0;garums>i;i++){
vertiba = (int)in_st[i];
if (lielaka<vertiba) lielaka=vertiba;
if (mazaka>vertiba && vertiba>32) mazaka = vertiba;
kop_s=kop_s+vertiba;
}

printf("Pēc ASCII tabulas mazākā vērtība ir: %d\n", mazaka);
printf("Pēc ASCII tabulas lielākā vērtība ir: %d\n", lielaka);

videja=kop_s/garums;

printf("Pēc ASCII tabulas vidējā vērtība ir: %d\n",videja);
printf("Pēc ASCII tabulas mediāna ir: %d\n", in_st[garums/2]);

//moda
j=0;
for(i=0;garums>i;i++){
if(in_st[i]==in_st[i+1]){
j++;
}
else if (in_st[i] != in_st[i+1]){
if(j>max) max=j;
j=0;
	}
}
j=0;
for(i=0;garums>i;i++){
if(in_st[i]==in_st[i+1]){
j++;
}
else if(in_st[i] != in_st[i+1]){
if (max==j){
printf("Pēc ASCII tabulas moda ir %d\n", in_st[i]);
}
j=0;
	}
}

//sakartosana
for(i=0;garums>i;i++){
printf("Garums %d \t %c \t %d\n", i, in_st[i], in_st[i] );
}
return 0;
}



