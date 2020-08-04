{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.9-9, FILE=ERR74P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=53                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR74P(output);
type
   subrange = 1..4;
var
   sub : subrange;
   i,j : integer;
begin
   j := 0;
   i := 2;
   for sub := 1 to i*i do
      j := succ(j);
   writeln(' PRETEST...6.8.3.9-9 (ERR74P)')
end.
