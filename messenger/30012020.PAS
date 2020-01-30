var fi,fo:text;
    N,i: longint;
    s,M:real;
begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);

     read(fi,M);

     i:=1; N:=1;
     while s <= M do
     begin
          S := S + i*N*(N+1);
          i := i*(-1);
          N:= N+1;
     end;

     write(fo,N-1,' ');
     close(fi); close(fo);
end.
