#include<stdio.h>
#include<string.h>

int main(){
	char rinda1[63];
	char rinda2[63];
	printf("Ievadiet tekstu: ");
	scanf("%[^\n]%*c", rinda1);
	strcpy(rinda2, rinda1);
	printf("%s\n", rinda2);
}
