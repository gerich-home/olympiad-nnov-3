{$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{Gerasimov Sergey
 school 50
 klass 11
 zadacha 4
}
program horses;
type qq=array[1..1000] of longint;
var
 buf:text;
 a,b,c:qq;
 na,nb,nc,i,j,m,n,prod,pokup:word;
label
 theexit;
procedure Sort(var
 ar:qq;nar:word);
var
 i,j,min:word;
 minv,c:longint;
begin
 for i:=1 to nar-1 do
 begin
  minv:=ar[i];
  min:=i;
  for j:=i+1 to nar do
  begin
   if ar[j]<minv then
   begin
    min:=j;
    minv:=ar[j];
   end;
  end;
  ar[min]:=ar[i];
  ar[i]:=minv;
 end;
end;
procedure Slit(var ar1,ar2,ar3:qq;n1,n2:word;var n3:word);
var
 i,j,k:word;
begin
 i:=1;
 j:=1;
 n3:=0;
 while (i<=n1) and(j<=n2) do
 begin
  inc(n3);
  if ar1[i]< ar2[j] then
  begin
   ar3[n3]:=ar1[i];
   inc(i);
  end
  else
  begin
   ar3[n3]:=ar2[j];
   inc(j);
  end;
 end;
 if n1>n2 then
  for k:=i+1 to n1 do
  begin
   inc(n3);
   ar3[n3]:=ar1[k];
  end
 else
  for k:=j+1 to n2 do
  begin
   inc(n3);
   ar3[n3]:=ar2[k];
  end;
end;
begin
 assign(buf,'horses.in');
 reset(buf);
 readln(buf,na,nb);
 for i:=1 to na do read(buf,a[i]);
 for i:=1 to nb do read(buf,b[i]);
 close(buf);
 sort(a,na);
 sort(b,nb);
 slit(a,b,c,na,nb,nc);
 assign(buf,'horses.out');
 rewrite(buf);
 for i:=1 to nc-1 do
 begin
  prod:=0;
  pokup:=0;
  for m:=1 to na do
  begin
   if a[m]<=c[i] then
   begin
    inc(prod);
   end;
  end;
  for m:=1 to nb do
  begin
   if b[m]>=c[i+1] then
   begin
    inc(pokup);
   end;
  end;
  if (pokup>0) and (pokup=prod) then
  begin
   writeln(buf,c[i],' ',c[i+1]);
   goto theexit;
  end;
 end;
 writeln(buf, 'No solution');
 theexit:
 close(buf);
end.