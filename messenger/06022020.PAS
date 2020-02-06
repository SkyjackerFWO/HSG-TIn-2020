var st,a:string;

begin
     readln(st);
     while length(st) <> 0 do
     begin
          if st[1] <> st[length(st)] then break
          else
          begin
          delete(st,length(st),1);
          delete(st,1,1);
          end;
     end;
     if length(st) = 0 then write('Chuoi doi xung')
        else write('Chuoi ko doi xung');
     readln;
end.
