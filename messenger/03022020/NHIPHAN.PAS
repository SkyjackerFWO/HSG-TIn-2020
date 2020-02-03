var fi,fo:text;
    tam,stNp,yMaxString: string;
    valNP,s,a,i,valTam,yMax : longint;
    code : integer;
begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);
     read(fi,a);

     while a <> 0 do
     begin
          STR(a mod 2,tam);
          INSERT(tam,stNP,1);

          a:= a div 2;
     end;
     writeln(fo,stNP);
{b}
     VAL(stNP,valNP,code);
     while valNP > yMax do yMax := valNP*10; yMax := yMax div 10;
     write(fo,yMax);
     STR(yMax,yMaxString);
     for i := 1 to length(yMaxString) do
     begin
          VAL(yMaxString[i],valTam,code);
          s := s*2+ valTam;
     end;


     close(fi);close(fo);
end.