{$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{Gerasimov Sergey
 school 50
 klass 11
 zadacha 6
}
program coffee;
var
 bufi,bufo:text;
 n,i:byte;
 x,y,x1,y1,x2,y2,r,c:integer;
label
 nexti;
begin
 assign(bufi,'coffee.in');
 reset(bufi);
 assign(bufo,'coffee.out');
 rewrite(bufo);
 readln(bufi,n);
 for i:=1 to n do
 begin
  readln(bufi,x1,y1,x2,y2,r,x,y);
  if x1>x2 then
  begin
   c:=x1;
   x1:=x2;
   x2:=c;
  end;
  if y1>y2 then
  begin
   c:=y1;
   y1:=y2;
   y2:=c;
  end;
  if x1+r>x then
  begin
   writeln(bufo,'yes');
   goto nexti;
  end;
  if x+r>x2 then
  begin
   writeln(bufo,'yes');
   goto nexti;
  end;
  if y1+r>y then
  begin
   writeln(bufo,'yes');
   goto nexti;
  end;
  if y+r>y2 then
  begin
   writeln(bufo,'yes');
   goto nexti;
  end;
  writeln(bufo,'no');
  nexti:
 end;

 close(bufi);
 close(bufo);
end.