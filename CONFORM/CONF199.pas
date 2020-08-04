{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3-4, FILE=CONF199, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a write procedure with many parameters is    }
{:equivalent to many write procedures with one parameter each.       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.1-1.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF199(output);
var
   f:text;
   a,b,c,d,e:char;
   a1,b1,c1,d1,e1:char;
   counter:integer;
begin
   counter:=0;
   rewrite(f);
   a:='A';
   b:='B';
   c:='C';
   d:='D';
   e:='E';
   write(f,a,b,c,d,e);
   writeln(f);
   reset(f);
   read(f,a1,b1,c1,d1,e1);
   if (a=a1) and (b=b1) and (c=c1) and (d=d1) and (e=e1) then
      counter:=counter+1;
   rewrite(f);
   write(f,a);
   write(f,b);
   write(f,c);
   write(f,d);
   write(f,e);
   writeln(f);
   reset(f);
   read(f,a1,b1,c1,d1,e1);
   if(a1=a) and (b1=b) and (c1=c) and (d1=d) and (e1=e) then
      counter:=counter+1;
   if (counter=2) then
      writeln(' PASS...6.9.3-4 (CONF199)')
   else
      writeln(' FAIL...6.9.3-4 (CONF199)')
end.
