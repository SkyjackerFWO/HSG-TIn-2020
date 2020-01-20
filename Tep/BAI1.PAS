var fi,fo:text;
    a,n,i,j,tam:longint;
    M: array[1..1000] of longint;
begin
     assign(fi,'INPUT.TXT');
     assign(fo,'OUTPUT.TXT');
     reset(fi);
     rewrite(fo);
     {Bat Dau}
     readln(fi,a);
     n:=a; {N la so phan tu trong mang}
     for i:= 1 to n do
     begin
          read(fi,a);
          M[i]:= a;
     end;
     {Sap xep}
     for i:= 1 to N -1 do
      for j:= i+1 to N do
           if M[i]>M[j] then
           begin
           tam:=M[j];M[j]:=M[i];M[i]:=tam;
           end;
     {In ra file output.txt}
     for i:=1 to N do write(fo,M[i],' ');
     {ạdkfhasdfk}

     close(fi);close(fo);
end.
