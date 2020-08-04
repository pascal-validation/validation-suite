{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-4, FILE=DEV009, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since the syntax for unsigned-real clearly      }
{:states that a decimal point must be followed by a digit-sequence.  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writing modified to conform to conventions and provide     }
{         more information.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV009(output);
var
   i : real;
begin
   i:=0123.;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' DEVIATES...6.1.5-4 (DEV009)')
end.
