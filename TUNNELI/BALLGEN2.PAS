type  bc     = record
                 x : integer;
                 y : integer;
               end;
      rengas = record
                 x,y,r : shortint;
               end;


var   pallo  : array[0..100] of bc;
      putki  : array[0..400] of rengas;
      pcalc  : array[0..137,0..63] of bc;
      t      : word;

var   x,y,z : integer;
      x1,y1 : word;
      a   : word;

var  f : file;
     r : word;
begin
    r := 0;
    for Z := 10 to 147 do
     for a := 0 to 63 do
      with pcalc[z-10][a] do
       begin
         x := 160+round(sin(a*pi/32)*round(z*1.7));
         y := 100+round(cos(a*pi/32)*z);
       end;

    assign(f,'tunnel.dat');
    rewrite(f,1);
    blockwrite(f,pcalc,sizeof(pcalc));
    close(f);
end.
