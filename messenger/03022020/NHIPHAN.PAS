var fi,fo:text;
    tam,stNp: string;
    s,a,i,valTam,dem : longint;
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
     dem:=1;
     for i:= 1 to length(stNp) do
     begin
          if stNp[i] = '1' then
          begin
              stNp[i] := '0';stNp[dem] := '1';
              dem:= dem +1;
          end;
     end;

     for i := 1 to length(stNp) do
     begin
          VAL(stNp[i],valTam,code);
          s := s*2+ valTam;
     end;
     write(fo,s);

     close(fi);close(fo);
end.