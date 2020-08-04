{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-13, FILE=ERR67P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=46                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR67P(output);
var
   i, j, l : integer;
begin
   for i := -10 to 10 do
      for j := 2 downto -2 do
         if j > 0 then
            l := i mod j;
   writeln(' PRETEST...6.7.2.2-13 (ERR67P)')
end.
