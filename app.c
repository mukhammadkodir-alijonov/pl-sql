#include <stdio.h>

int main()
{
    char array[] = {"salom uka nima gap"};

    int len = sizeof(array) / sizeof(array[0]);

    for (int i = 0; i < len; i++)
    {
        if (array[i] == ' ')
        {
            printf("\n");
        }
        else
        {
            printf("%c", array[i]);
        }
    }

    return 0;
}
