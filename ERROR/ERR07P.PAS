{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.6-9, FILE=ERR07P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=49                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR07P(output);
type
   subrange = 0..5;
var
   i : subrange;
begin
   i:=5;
   i:=i*1;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' PRETEST...6.4.6-9 (ERR07P)')
end.
