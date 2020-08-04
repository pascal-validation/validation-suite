{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.2-1, FILE=CONF197, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that readln is correctly implemented.             }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF197(output);
var
   f:text;
   a,b,c:char;
   counter:integer;
begin
   counter:=0;
   rewrite(f);
   writeln(f,'ABC');
   writeln(f,'DE');
   reset(f);
   readln(f,a,b,c);
   read(f,a);
   if (a='D') then counter:=counter+1;
   reset(f);
   read(f,a,b,c);
   readln(f);
   read(f,a);
   if(a='D') then counter:=counter+1;
   reset(f);
   read(f,a);
   while not eoln(f) do get(f);
   get(f);
   if (f^='D') then counter:=counter+1;
   if (counter=3) then
      writeln(' PASS...6.9.2-1 (CONF197)')
   else
      writeln(' FAIL...6.9.2-1 (CONF197)')
end.
