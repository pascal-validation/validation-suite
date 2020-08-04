{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.4-1, FILE=CONF206, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks the implementation of procedure writeln.       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF206(output);
var
   f:text;
   a,b:packed array[1..10] of char;
   i:integer;
begin
   rewrite(f);
   writeln(f,1:5,'ABCDE');
   write(f,1:5,'ABCDE');
   writeln(f);
   reset(f);
   for i:=1 to 10 do
      read(f,a[i]);
   readln(f);
   for i:=1 to 10 do
      read(f,b[i]);
   if (a=b) then
      writeln(' PASS...6.9.4-1 (CONF206)')
   else
      writeln(' FAIL...6.9.4-1 (CONF206)')
end.
