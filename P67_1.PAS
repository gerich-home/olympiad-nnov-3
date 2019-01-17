{$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}

{Gerasimov Sergey
 school 50
 klass 11
 zadacha 1
}
program pools;
type
 bas=
 record
  na:byte;
  a:array[1..100] of comp;
 end;
 path=
 record
  na:byte;
  a:array[1..100] of byte;
 end;
 line=
 record
  b:byte;
  e:byte;
 end;
 pipes=array[1..100,1..100] of byte;
 pipes2=
 record
  na:word;
  a:array[1..4950] of line;
 end;
var
 buf:text;
 b:bas;
 i,j:byte;
 s:comp;
 p:pipes;
 p2:pipes2;
 pn,pb,pe:byte;
label
 theexit;
begin
 assign(buf,'pools.in');
 reset(buf);
 readln(buf,b.na);
 for i:=1 to b.na do
 begin
  readln(buf,b.a[i])
 end;
 for i:=1 to b.na do s:=s+b.a[i];
 if s<>0 then
 begin
  close(buf);
  assign(buf,'pools.out');
  rewrite(buf);
  writeln(buf,'Impossible');
  close(buf);
  goto theexit;
 end;
 readln(buf,pn);
 for i:=1 to pn do
 begin
  readln(buf,pb,pe);
  inc(p2.na);
  with p2.a[p2.na] do
  begin
   b:=pb;
   e:=pe;
  end;
  p2.a[p2.na].e:=pe;
  if pb<pe then
   p[pb,pe]:=1
  else
   p[pe,pb]:=1;
 end;
 close(buf);
 theexit:
end.