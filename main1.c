#include <stdio.h>
int main()
{
	printf("Welcome\n");
	int num1, num2;
	printf("Nhap ma khoa:", num1);
	
	scanf("%d", &num1);
	
	if(num1 == 1192)
	  printf("Hop le\n");
	else
	  printf("Khong hop le\n");
    
	
	printf("Nhap ma pin:", num2);
	scanf("%d", &num2);
	
	if(num2 == 2002)
	  printf("Hop le\n");
	else
	  printf("Khong hop le\n");
    
	printf("So du trong tai khoan:");
	int num, num4;
	scanf("%d", &num);
	if(num == 200000)
	  printf("Hop le\n");
	else
	  printf("Khong hop le\n");
	
	printf("So tien muon rut:");
	scanf("%d", &num4);
	
	printf("So du con lai: %d\n", num - num4);
	
		int stk;
		    printf ("Nhap so tai khoan nguoi nhan: ");
			scanf ("%d", &stk);
			if (stk == 4567)
			{
				int sodu = 200000;
				int tienchuyen;
				printf ("Nhap so tien muon chuyen: ");
				scanf ("%d", &tienchuyen);
				if (tienchuyen <=200000)
				{
				   printf ("So du con lai cua ban la: %d", num - tienchuyen);
				}
				else 
				   printf ("Ban can chuyen so tien nho hon 200000");
			}
			else 
			       printf ("So tai khoan khong hop le");
		

	
	
    return 0;
}
