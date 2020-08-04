{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.9-8, FILE=ERR73P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=52                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR73P(output);
type
   colour = (red,blue,green,yellow);
   subcolour = blue..yellow;
var
   col1 : colour;
   col2 : subcolour;
   i : integer;
begin
   i := 0;
   col1 := green;
   for col2 := pred(col1) to yellow do
      i := succ(i);
   writeln(' PRETEST...6.8.3.9-8 (ERR73P)')
end.
