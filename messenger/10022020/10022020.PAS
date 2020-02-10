var fi,fo : text;
    n,i,k,nhiPhan,demTrong,demNgoai,thuw : longint;
begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);

     read(fi,n);read(fi,k);
     for i:= 1 to n do
     begin
          thuw := i;
          demTrong := 0;
          while thuw <> 0 do
          begin
              nhiPhan := thuw mod 2;
              thuw := thuw div 2;
              if nhiPhan = 1 then demTrong := demTrong + 1;
              if demTrong > k then break;
          end;
          if demTrong = k then demNgoai := demNgoai +1;
     end;

     write(fo,demNgoai);
     close(fi);close(fo);

end.