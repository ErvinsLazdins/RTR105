#include<stdio.h>
#include<string.h>
int main(){
	FILE *f;
	char s1[63];
	char s2[63];
	printf("Ievadiet tekstu: \n");
	scanf("%[^\n]", s1);

	f = fopen("str_in_out_file.txt","w+");
	fprintf(f,"%s", s1);
	fclose (f);

	f = fopen("str_in_out_file.txt","r+");

       
	fscanf(f, "%[^\n]", s2);
	printf("%s", s2);
	fclose (f);
}
