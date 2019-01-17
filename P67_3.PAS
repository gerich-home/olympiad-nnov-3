{$A+,B-,D+,E+,F-,G-,I+,L+,N+,O-,P-,Q-,R-,S+,T-,V+,X+,Y+}
{$M 16384,0,655360}
{Gerasimov Sergey
 school 50
 klass 11
 zadacha 3
}
program obfuscat ;
var
 bufi,bufo:text;
 s:string;
begin
 assign(bufi,'obfuscat.in');
 reset(bufi);
 assign(bufo,'obfuscat.out');
 rewrite(bufo);
 while not eof(bufi) do
 begin
  readln(bufi,s);
  write(bufo,s);
 end;
 close(bufi);
 close(bufo)    ;
end.