{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-6, FILE=DEV195, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test illustrates the dangers of permitting a jump into a      }
{:with-statement.                                                    }
{                                                                    }
{ A with-statement involves the setting-up of an implicit reference  }
{ to a record which will not happen if a jump is made into the       }
{ middle of the statement.                                           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V4.3: Reference to x(.i.) changed to x(.j.) to correct coding    }
{         error at line 28.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV195(output);
label
   1;
type
   index = 0 .. 2;
var
   i, j: index;
   x: array[index] of record
                      y: integer;
                      end;
begin
   for i := 0 to 2 do
      with x[i] do
         y := i;
   j := 0;
   if false then
      with x[j] do
         1:
         begin
         writeln(' DEVIATES...6.8.1-6 (DEV195)', i, y);
         y := y + 1;
         end;
   j := j + 1;
   i := 0;
   if j <= 1 then
      goto 1
   else
      writeln(' DEVIATES...6.8.1-6 (DEV195)')
end.
