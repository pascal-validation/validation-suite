{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-6, FILE=DEV183, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Tests of equality on records or arrays should not be permitted.    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV183(output);
const pi = 3.141592653589;
var  a, b : array[1..10] of real ;
     c, d: record
             f1 : integer ;
             f2 : real
           end;
     i: integer ;
begin
   for i := 1 to 10 do
      a[i] := pi * 1.0;
   b := a;
   with c do
      begin
      f1 := 3;  f2 := pi
      end;
   d := c;
   if (a = b) and not(c <> d) then
      writeln(' DEVIATES...6.7.2.5-6 (DEV183),',
              ' EQUALITY ARRAYS/RECORDS')
   else
      writeln(' DEVIATES...6.7.2.5-6 (DEV183),',
              ' ARRAY/RECORD EQUALITY DEVIANCE')
end.
