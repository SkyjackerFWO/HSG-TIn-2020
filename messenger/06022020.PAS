var st,a:string;

begin
     readln(st);
     while length(st) <> 0 do
     begin
          a:= st[1];
          delete(st,1,1);
          if pos(a,st) <> length(st) then break
          else delete(st,length(st),1);
     end;
     if length(st) = 0 then write('Chuoi doi xung')
        else write('Chuoi ko doi xung');
     readln;
end.