uses crt;
var fi,fo:text;
    Ma: array ['a'..'z'] of byte;
    st,s: string;
    i,d1,d2 : longint ;

begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);

     read(fi,st);
     for i := 1 to length(st) do
     begin
          if st[i] in ['a'..'z'] then
          begin
               {yeu cau 1}
               if (st[i+1] = ' ') or  (i=length(st)) then d1 := d1 +1;

               {yeu cau 2}
               if Ma[st[i]] = 0 then
               begin
                    Ma[st[i]] := 1;
                    d2 := d2 + 1;
                    {write(fo,d1);writeln(fo,d2);}
               end
          end;
     end;

     writeln(fo,d1);writeln(fo,d2);
     close(fi);close(fo);
end.