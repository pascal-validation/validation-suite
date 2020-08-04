{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-7, FILE=DEV184, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that equality and non-equality is not permitted   }
{:between different pointer-types.                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV184(output);
type
   one = ^integer;
   two = ^integer;
var
   x: one;
   y: two;
begin
   new(x);
   x^ := 2;
   new(y);
   y^ := 3;
   if (x <> y) or not (x = y) then
      writeln(' DEVIATES...6.7.2.5-7 (DEV184), PERMITTED')
   else
      writeln(' DEVIATES...6.7.2.5-7 (DEV184)');
end.
