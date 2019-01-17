{Gerasimov Sergey
 school 50
 klass 11
}

{Gerasimov Sergey
 school 50
 klass 11
 zadacha 2
}
program baton;
var
 a:longint;
 buf:text;
begin
 assign(buf,'baton.in');
 reset(buf);
 read(buf,a);
 close(buf);
 assign(buf,'baton.out');
 rewrite(buf);
 write(buf,(a+1) div 2);
 close(buf);
end.