#include <stdio.h>

static void shipline(FILE *fout, char *line, int n)
{
    int c, n1 = n-1;
    fprintf(fout, "\tdb\t");
    for (c=0; c < n1; c++)
        fprintf(fout, "%d,", (unsigned char) line[c]);
    fprintf(fout, "%d\n", (unsigned char) line[c]);
}

int main(int argc, char *argv[])
{
    char namebuf[128];
    char line[16];
    int n, ch, linepos, seeneof=0;
    long count;
    FILE *fout, *fin;

    if (argc < 3)
        return 1;
    fin = fopen(argv[1], "rb");
    if (!fin)
        return 1;
    for (n=0; !seeneof; n++) {
        sprintf(namebuf, "%s%d", argv[2], n);
        fout = fopen(namebuf, "w");
        linepos = 0;
        for (count=0; count<0xffffL; count++)
        {
            ch = getc(fin);
            if (ch == EOF)
            {
                seeneof = 1;
                break;
            }
            line[linepos++] = ch;
            if (linepos == 16)
            {
                shipline(fout, line, 16);
                linepos = 0;
            }
        }
        if (linepos)
            shipline(fout, line, linepos);
        fclose(fout);
    }
    fclose(fin);
    return 0;
}
