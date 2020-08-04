{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.5-15, FILE=ERR06P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=49                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR06P(output);
var i: 5 .. 10;
    j: 0 .. 4;
begin
   i := 5;
   j := i-1;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' THE VALUE OF J IS ', j);
   writeln(' PRETEST...6.4.5-15 (ERR06P)');
end.
