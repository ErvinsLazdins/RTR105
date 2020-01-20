# Nr.5. Laboratorijas darbs - Statistika

## Teorija

ASCII kods ir rakstzīmju kopa un kodējums, ko visplašāk izmanto programmēšanā - datoros un citās komunikāciju ierīces, lai attēlotu tekstu un kontrolētu ierīces, kas strādā ar tekstu. 

## Programmas Kods 
``` 
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

```

## Rezultāts
```
Lietotāj, lūdzu ievadiet simbolu rindu:
869yuhip[]';/l.kj,ghmfnb
Ievadītās rindas garums ir 24 simboli
Pēc ASCII tabulas mazākā vērtība ir: 39
Pēc ASCII tabulas lielākā vērtība ir: 121
Pēc ASCII tabulas vidējā vērtība ir: 87
Pēc ASCII tabulas mediāna ir: 103
Pēc ASCII tabulas moda ir 104
Garums 0 	 ' 	 39
Garums 1 	 , 	 44
Garums 2 	 . 	 46
Garums 3 	 / 	 47
Garums 4 	 6 	 54
Garums 5 	 8 	 56
Garums 6 	 9 	 57
Garums 7 	 ; 	 59
Garums 8 	 [ 	 91
Garums 9 	 ] 	 93
Garums 10 	 b 	 98
Garums 11 	 f 	 102
Garums 12 	 g 	 103
Garums 13 	 h 	 104
Garums 14 	 h 	 104
Garums 15 	 i 	 105
Garums 16 	 j 	 106
Garums 17 	 k 	 107
Garums 18 	 l 	 108
Garums 19 	 m 	 109
Garums 20 	 n 	 110
Garums 21 	 p 	 112
Garums 22 	 u 	 117
Garums 23 	 y 	 121
```
## Analīze
Programmas darbībā problēmas nav konstatētas, tomēr, vairāk piestrādājot, būtu iespējams saīsināt kodu.

## Attēli
