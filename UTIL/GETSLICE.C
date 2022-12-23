#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    unsigned count, num;
    int ch;
    FILE *inf, *outf;
    if (argc < 5)
        return 1;
    inf = fopen(argv[1], "rb");
    outf = fopen(argv[4], "wb");
    num = strtol(argv[2], NULL, 10);
    for (count=0; count<num; count++)
        getc(inf);
    num = strtol(argv[3], NULL, 10);
    for (count=0; count<num; count++) {
        ch = getc(inf);
        putc(ch, outf);
    }
    fclose(inf);
    fclose(outf);
    return 0;
}
