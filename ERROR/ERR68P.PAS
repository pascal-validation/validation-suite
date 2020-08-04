{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-16, FILE=ERR68P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=44                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR68P(output);
var
   x,y : integer;
   z : real;
begin
   x := 5;
   y := x*x - (x+12);
   z := x/y;
   writeln(' PRETEST...6.7.2.2-16 (ERR68P)')
end.
