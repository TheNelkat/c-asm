#include <stdio.h>


typedef int (*callback)(int);
extern int do_fact(int x, callback cb);

int result(int x)
{
    printf("Got results: %d!\n", x);
    return;
}

void fact(int x, callback cb)
{
    do_fact(x, cb);
    return
}

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

    fact(x, result);
    return 0;
}