{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.6-1, FILE=DEV249, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:An entire-variable which is an array-type can only be written to a }
{:textfile if the lower bound of the array is one.                   }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV249(output);
var
   i : integer;
   ch : char;
   arr : packed array[0..9] of char;
begin
   ch := '0';
   for i := 0 to 9 do
      begin
      arr[i] := ch;
      if ch <> '9' then ch := succ(ch)
      end;
   writeln('ARR = ', arr);
   writeln(' DEVIATES...6.9.3.6-1 (DEV249)')
end.
