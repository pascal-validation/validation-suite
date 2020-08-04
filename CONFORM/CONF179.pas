{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-3, FILE=CONF179, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks that a control-variable of a for-statement is  }
{:not undefined if the for-statement is left via a goto-statement.   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.8.3.9-8.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF179(output);
label 100;
var
   i,j:integer;
begin
   j:=1;
   for i:=1 to 10 do
   begin
      if (j=5) then
         goto 100;
      j:=j+1
   end;
100:
   if i=j then
      writeln(' PASS...6.8.3.9-3 (CONF179)')
   else
      writeln(' FAIL...6.8.3.9-3 (CONF179)')
end.
