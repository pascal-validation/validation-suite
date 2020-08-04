{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-19, FILE=ERR69P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=47                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR69P(output);
const
   maxint = 10000;
var
   i,j : integer;
begin
   i := maxint;
   j := 3;
   if (i*j - maxint - maxint <> maxint) or
      (i*j div 3 <> maxint) then
      begin
      writeln(' RUBBISH INTEGER ARITHMETIC')
      end
   else
      begin
      writeln(' PRETEST...6.7.2.2-19 (ERR69P)')
      end
end.
