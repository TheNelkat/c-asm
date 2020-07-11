#include <stdio.h>


typedef int (*callback)(int, int);
extern int do_fact(int x, callback print_res);

int print_res(int x, int y);

void fact(int x, callback cb);


int main() 
{
    int x; // delimoe
    printf("Pls input int: \n");
    scanf("%d", &x);
    if(x<0)
        {
            printf("Данная операция недоступна для отрицательных чисел\n");
            return 0;
        }
    if(x==0)
        {
            printf("Your ans is: 1");
            return 0;
        }

    fact(x, print_res);
    return 0;
}

int print_res(int a, int y)
{
    if(y==a)
    {
        printf("Got results: %d!\n", a);
        return;
    }
    printf("%d x ", a);
    return 0;
}

void fact(int xx, callback cb)
{
    if((xx==0) || (xx==1) ||(xx== -1))
    {
        printf("%d", xx);
        return;
    }
    do_fact(xx, cb);
    return;
}