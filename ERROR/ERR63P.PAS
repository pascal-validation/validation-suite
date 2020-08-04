{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-9, FILE=ERR63P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=47                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR63P(output);
var
   i : integer;
begin
   i:=(maxint-(maxint div 2)-20)*2-2;
   if ((odd(maxint) and (i-maxint = 3)) or
      (not odd(maxint) and (i-maxint = 2))) and (i > 0) then
      writeln(' UNEXPECTED RESULT')
   else
      writeln(' PRETEST...6.7.2.2-9 (ERR63P)')
end.
