{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-4, FILE=DEV017, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests that strings of different lengths are not       }
{:compatible (i.e. 1..m and 1..n).                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV017(output);
const
   string1 = 'STRING1';
var
   string2 : packed array[1..5] of char;
begin
   string2:=string1;
   writeln(' DEVIATES...6.1.7-4 (DEV017)')
end.
