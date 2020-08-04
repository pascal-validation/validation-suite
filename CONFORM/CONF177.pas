{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-1, FILE=CONF177, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that assignment follows the evaluation of both }
{:expressions in a for-statement.                                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF177(output);
var
   i,j:integer;
begin
   i:=1;
   j:=0;
   for i:= (i+1) to (i+10) do
      j:=j+1;
   if j=10 then
      writeln(' PASS...6.8.3.9-1 (CONF177)')
   else
      writeln(' FAIL...6.8.3.9-1 (CONF177)')
end.
