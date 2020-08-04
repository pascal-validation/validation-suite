{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-2, FILE=CONF152, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that div and mod are implemented by the rule   }
{:specified by the Pascal Standard.                                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF152(output);
var
   i, j, counter : integer;
begin
   counter:=0;
   for i:=0 to 6 do
      for j:=1 to 4 do
         if ((i-j)<((i div j)*j)) and (((i div j)*j)<=i) then
            counter:=counter+1;
   for i:=0 to 6 do
      for j:=1 to 4 do
         if (i mod j)=(i-(i div j)*j) then
            counter:=counter+1;
   if counter=56 then
      writeln(' PASS...6.7.2.2-2 (CONF152)')
   else
      writeln(' FAIL...6.7.2.2-2 (CONF152)')
end.
