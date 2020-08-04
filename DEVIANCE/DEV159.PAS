{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-4, FILE=DEV159, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that succ and pred cannot be applied to real      }
{:values.                                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.6.6.4-6.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV159(output);
var
   x:real;
begin
   x:=0.3;
   if (succ(x)>x) and (pred(x)<x) then
      writeln(' DEVIATES...6.6.6.4-4 (DEV159), REAL SUCC/PRED')
   else
      writeln(' DEVIATES...6.6.6.4-4 (DEV150), MESS - SUCC/PRED')
end.
