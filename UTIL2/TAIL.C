#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    char buf[256];
    int cnt=0, lines;
    char *parse;
    if (argc > 1)
        lines = strtol(argv[1], &parse, 10);
    else
        lines = 50;
    while (fgets(buf, 256, stdin)) {
        if (cnt++ < lines)
            continue;
        printf("%s", buf);
    }
    return ferror(stdin);
}
