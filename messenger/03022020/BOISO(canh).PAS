var fi,fo:text;
    i,j,k,m,tam,n,dem :longint;
    A: array[1..10000] of longint;
begin
     assign(fi,'input.txt');assign(fo,'output.txt');
     reset(fi);rewrite(fo);
     read(fi,k,m,n);
     
     dem:=0;
     for i:= 1 to n do
         if (i>=k) or (i>=m) then
            begin
                if (i mod k = 0) or (i mod m = 0) then dem:=dem + 1
            end;
    
     write(fo,dem);
     close(fi);close(fo);
end.
