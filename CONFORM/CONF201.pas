{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.3-1, FILE=CONF201, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the implementation of integer output.             }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.4-1.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF201(output);
var
   f:text;
   b:packed array [1..26] of char;
   i:integer;
begin
   rewrite(f);
   write(f,0:3,1:3,-1:3,10:3,99:3,100:3,-100:3,1111:3);
   writeln(f);
   reset(f);
   for i:=1 to 26 do
      read(f,b[i]);
   if (b='  0  1 -1 10 99100-1001111') then
      writeln(' PASS...6.9.3.3-1 (CONF201)')
   else
      writeln(' FAIL...6.9.3.3-1 (CONF201)')
end.
