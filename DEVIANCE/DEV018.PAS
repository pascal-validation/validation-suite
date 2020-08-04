{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-5, FILE=DEV018, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since a character-string is not compatible with }
{:an unpacked array of char.                                         }
{                                                                    }
{ The Pascal Standard specifically states that character-strings are }
{ constants of the type packed array(.1..n.) of char.                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised.                               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV018(output);
var
   string1 : packed array[1..4] of char;
   string2 : array[1..4] of char;
begin
   string1:='STR1';
   string2:='STR2';
   writeln(' DEVIATES...6.1.7-5 (DEV018)')
end.
