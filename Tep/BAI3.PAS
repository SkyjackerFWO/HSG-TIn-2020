var fi,fo :text;
    ngay,thang,nam,i : longint;
    A : array [1..3] of longint;
begin
     assign(fi,'input.txt'); assign(fo,'output.txt');
     reset(fi); rewrite(fo);
     for i:=1 to 3 do read(fi,A[i]);
     ngay:= A[1];thang:= A[2];nam:= A[3];

     case thang of
          1,3,5,7,8,10:
          begin
               ngay:= ngay + 1;
               if ngay > 31 then
               begin
               ngay:= 1; thang:= thang + 1;
               end;
          end;
          4,6,9,11:
          begin
               ngay:= ngay + 1;
               if ngay > 30 then
               begin
               ngay:= 1; thang:= thang + 1;
               end;
          end;
          2:
          begin
               ngay:= ngay + 1;
               if ((ngay > 29) and((nam mod 4 <> 0) or (nam mod 400 <> 0))) then
               begin
               ngay:= 1;thang := 3;
               end
               else ngay:= 29;
          end;
          12:
          begin
               ngay:= ngay + 1;
               if ngay > 31 then
               begin
               ngay:= 1; thang:= 1;nam := nam +1;
               end;
          end;
     end;
     write(fo,ngay,' ',thang,' ',nam);
     close(fi); close(fo);
end.
