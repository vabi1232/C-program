#include <stdio.h>
#include <stdlib.h>

void main()
{
	char name[20];
	
	puts("Enter your name :");
	gets(name);
	puts("Hi there : ");
	puts(name);
	getch();
}
