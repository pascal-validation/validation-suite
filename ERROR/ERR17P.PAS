{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.2-7, FILE=ERR17P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=48                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR17P(output);
var
   radius ,
   circlearea : real;
function area(a : real) : real;
var
   x : real;
begin
   if a > 0 then x:=3.1415926*a*a
            else area:=0
end;

begin
   radius:=-2;
   circlearea:=area(radius);
   writeln(' PRETEST...6.6.2-7 (ERR17P)')
end.
