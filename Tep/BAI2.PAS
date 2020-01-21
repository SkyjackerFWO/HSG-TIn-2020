var fi,fo:text;
    x,y,t,i:longint;
    A: array[1..2] of longint;
begin
     assign(fi,'input.txt');
     assign(fo,'output.txt');
     reset(fi);
     rewrite(fo);

     for i:= 1 to 2 do read(fi,A[i]);
     x:=A[1];y:=A[2];
     {o doan nay minh su dung thuat toan Euclide de tim UCLN}
     t := y mod x;
     while t<>0 do
     begin
          t:= x mod y;
          x:= y;
          y:= t;
     end;

     {Gia tri cua x gio chinh la UCLN cua hai so nhap vao}
     A[1]:= A[1] div x; A[2]:= A[2] div x;

     write(fo,A[1] div A[2],' ',A[1] mod A[2],' ',A[2]);

     close(fi);close(fo);
end.