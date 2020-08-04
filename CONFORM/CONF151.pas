{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-1, FILE=CONF151, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the operation of the operators + - and *.      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for FAIL elaborated.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF151(output);
var
   i, x, y , counter : integer;
begin
   counter := 0;
   for x := -10 to 10 do
   begin
      if (succ(x)=x+1) then
         counter := counter+1;
      if (pred(x) = x-1) then
         counter := counter+1;
      if (x*x=sqr(x)) then
         counter:= counter+1
   end;
   if (counter=63) then
      writeln(' PASS...6.7.2.2-1 (CONF151)')
   else
      writeln(' FAIL...6.7.2.2-1 (CONF151)')
end.
