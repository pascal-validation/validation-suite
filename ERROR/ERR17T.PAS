{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-7, FILE=ERR17T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=48 }
{                                                                    }
{:This program contains a function with an assignment to its         }
{:identifier, however the assignment is never executed.              }
{                                                                    }
{ The Pascal Standard states that the result of a function will be   }
{ the last value assigned to its identifier. If no assignment occurs }
{ then the result is undefined.                                      }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Renumbered from 6.6.2-9.                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR17T(output);
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
   writeln(' ERROR...6.6.2-7 (ERR17T)');
   radius:=2;
   circlearea:=area(radius);
   writeln(' ERROR NOT DETECTED...6.6.2-7 (D.48)')
end.
