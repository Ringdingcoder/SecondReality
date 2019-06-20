#include <stdio.h>

int main()
{
    char buf[256];
    int cnt=0;
    while (fgets(buf, 256, stdin)) {
        if (cnt++ < 50)
            continue;
        printf("%s", buf);
    }
    return ferror(stdin);
}
