{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-5, FILE=DEV194, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program attempts to jump into the middle of a for-statement   }
{:by means of a non-local goto-statement.                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test renumbered, was 6.8.2.4-6.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV194(output);
label 100;
var
   i, j: integer;
procedure p( k: integer);
   begin
   if k = 0 then
      goto 100
   end;
begin
   j := 0;
   for i := 1 to 0 do
      begin
   100:
      j := 1;
      writeln(' DEVIATES...6.8.1-5 (DEV194)')
      end;
   i := 0;
   if j = 0 then
      p(j)
end.
