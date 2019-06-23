#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int ch;
    FILE *inf, *outf;
    if (argc < 3)
        return 1;
    inf = fopen(argv[1], "rb");
    if (getc(inf) == EOF)
        return 1;
    outf = fopen(argv[2], "wb");
    while ((ch = getc(inf)) != EOF)
        putc(ch, outf);
    fclose(inf);
    fclose(outf);
    return 0;
}
