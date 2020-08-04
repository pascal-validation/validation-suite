{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-18, FILE=DEV173, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the operands used in a divide operation   }
{:must be either of integer-type or real-type.                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV173(output);
var
   r, s : real;
   c    : char;
begin
   c:='1'; s:=1.5;
   r:=c/s;
   writeln(' DEVIATES...6.7.2.2-18 (DEV173)')
end.
