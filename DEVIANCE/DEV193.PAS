{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-4, FILE=DEV193, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program attempts to jump into the middle of a for-statement   }
{:by means of a goto-statement.                                      }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test renumbered was 6.8.2.4-5.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV193(output);
label 100;
var
   i, j: integer;
begin
   j := 0;
   for i := 1 to 0 do
      begin
100:
      j := 1;
      writeln(' DEVIATES...6.8.1-4 (DEV193)')
      end;
   i := 0;
   if j = 0 then
      goto 100
end.
