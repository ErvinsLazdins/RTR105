#include <stdio.h>
#include <string.h>

int stringwordcount(char *s)
{
int i,words=0;
for(i=0;s[i];i++)
	{
	if(s[i]==32)
words++;

	}
	if(i>0)
	words++;
	
	return words;
}
int main()
{
	char s[1000];
	int wordscount;

	printf("ievadi tekstu:");
	gets(s);
	wordscount=stringwordcount(s);
	printf("Vardu skaits teksta ir = %d\n",wordscount);

}
