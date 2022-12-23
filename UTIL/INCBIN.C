#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    int ch;
    unsigned count=0;
    FILE *inf, *outf;
    if (argc < 3)
        return 1;
    inf = fopen(argv[1], "rb");
    outf = fopen(argv[2], "wb");
    while ((ch = getc(inf)) != EOF) {
        fprintf(outf, "%s%d", count&0xf?",":"\n\tdb\t", ch);
        if (!count)
            count++;
        count++;
    }
    fprintf(outf, "\n");
    fclose(inf);
    fclose(outf);
    return 0;
}
