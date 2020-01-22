var fi,fo:text;
    a,n,tong,cSo,max,sohang:longint;
begin
     assign(fi,'INPUT.TXT');assign(fo,'OUTPUT.TXT');
     reset(fi);rewrite(fo);

     readln(fi,a);
     while not eof(fi) do
     begin
          read(fi,a);
          n:=a;
          while a<>0 do
          begin

               cSo:= a mod 10;
               a := a div 10;
               tong:= tong + cSo;
          end;
          if tong> max  then
          begin
          sohang := n;
          max:= tong;
          end;
          tong:= 0;
     end;

     write(fo,sohang);
     close(fi);close(fo);
end.
