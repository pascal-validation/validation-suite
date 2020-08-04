{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-8, FILE=DEV021, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Character-strings should not be compatible with packed arrays of   }
{:subranges of char.                                                 }
{                                                                    }
{ Similar to 6.1.7-7.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV021(output);
type
   digit = '0'..'9';
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of digit;
begin
   string1:='FOUR';
   string2:='FOUR';
   writeln(' DEVIATES...6.1.7-8 (DEV021)')
end.
