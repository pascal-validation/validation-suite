{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-7, FILE=DEV020, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Character-strings should not be compatible with packed arrays of   }
{:subranges of char.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV020(output);
type
   alpha = 'A'..'Z';
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of alpha;
begin
   string1:='FOUR';
   string2:='FOUR';
   writeln(' DEVIATES...6.1.7-7 (DEV020)')
end.
