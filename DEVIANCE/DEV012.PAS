{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-7, FILE=DEV012, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program has been drafted to detect those processors that may  }
{:implement 'const' as a textual macro facility.                     }
{                                                                    }
{ It is not  possible to do this in Pascal without some syntactic    }
{ analysis, as is illustrated in this example.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV012(output);
const
   n = -3;
var
   x : real;
begin
   x := 2.5E-n;
   writeln(' THE VALUE OF X IS ', x);
   writeln(' DEVIATES...6.1.5-7 (DEV012)')
end.
