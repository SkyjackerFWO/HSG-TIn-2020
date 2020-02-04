var fi,fo:text;
    i,j,k,m,tam,n,dem :longint;
    A: array[1..10000] of longint;
begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);

     read(fi,k,m,n);
     for i:= 1 to n do
     begin
          tam:= k * i;
          if tam <= n then
          begin
               dem := dem + 1;
               A[dem] := tam;
          end else break;
     end;
     tam:=0;
     for i:= 1 to n do
     begin
          tam:= m * i;
          if tam <= n then
          begin
               dem := dem + 1;
               A[dem] := tam;
          end else break;
     end;

     i:=2;
     While i <= dem Do
      Begin
         j:=1;
         While A[j] <> A[i] Do
            j:=j+1;
         If j < i Then
            Begin
               For tam:=i to dem-1 Do
                  A[tam]:= A[tam+1];
               dem:=dem-1;
            End
         Else
            i:=i+1;
      End;
     write(fo,dem);
     close(fi);close(fo);
end.
