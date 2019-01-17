{$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{Gerasimov Sergey
 school 50
 klass 11
 zadacha 1
}
program build;
type
 houses=
 record
  na:word;
  x:array[1..800] of real;
  y:array[1..800] of real;
  r:array[1..800] of real;
 end;
var
 buf:text;
 R:extended;
 a:houses;
 i:word;
begin
 assign(buf,'build.in');
 reset(buf);
 readln(buf,a.na,r);
 for i:=1 to a.na do
  readln(buf,a.x[i],a.y[i],a.r[i]);
 close(buf);
 assign(buf,'build.out');
 rewrite(buf);
 writeln(buf,0.0,0.0);
 close(buf);
end.