{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-6, FILE=DEV019, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests that strings are not compatible with packed     }
{:arrays whose bounds are other than 1..n.                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV019(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[0..3] of char;
   string3 : packed array[2..5] of char;
begin
   string1:='STR1';
   string2:='STR2';
   string3:='STR3';
   writeln(' DEVIATES...6.1.7-6 (DEV019)')
end.
