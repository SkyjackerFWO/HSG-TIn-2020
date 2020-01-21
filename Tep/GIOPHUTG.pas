var fi,fo :text;
    gio,phut,giay,i : word;
    A : array [1..3] of word;
begin
     assign(fi,'input.txt');
     assign(fo,'output.txt');
     reset(fi);
     rewrite(fo);

     for i:=1 to 3 do read(fi,A[i]);

     giay:= A[3] + 5;
     phut:= A[2];
     gio:= A[1];
     if giay>59 then
     begin
          giay:= giay - 60;
          phut:= phut + 1;
          if phut > 59 then
          begin
               phut:= 0;
               gio := gio +1;
               if gio > 23 then
               begin
                    gio:=0;
                    phut:= 0;
               end;
          end;
     end;
     write(fo,gio,' ',phut,' ',giay);
     close(fi);
     close(fo);
end.