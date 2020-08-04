{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-12, FILE=ERR66P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=47                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR66P(output);
var
   i: integer;
begin
   i := 100;
   writeln(' MAXINT - 100 = ',maxint-i);
   writeln(' PRETEST...6.7.2.2-12 (ERR66P)')
end.
