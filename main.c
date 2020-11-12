#include <stdio.h>
#include <stdlib.h>


typedef int (*callback)(int, int);
extern int do_fact(int x, callback print_res);

int print_res(int fact, int num);
void fact(int num, callback cb);



int main() 
{
    int num; 
    printf("Pls input int: \n");
    scanf("%d", &num);

    fact(num, print_res);
    return 0;
}

int print_res(int fact, int num)
{
    if(num==1)
    {
        printf("%d!\n", fact);
        return 0;
    }
    printf("%d x ", fact);
    return 0;
}

void fact(int num, callback cb)
{
    if((num==0) || (num==1) || (num==-1))
    {
        printf("%d", num);
        return ;
    }

    if(num<0)
    {
        printf("-1 x ");
        num= abs(num);
    }

    do_fact(num, cb);
    return ;
}