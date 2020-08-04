{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-12, FILE=ERR66T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=47                                                          }
{                                                                    }
{:This program attempts to output a value which overflows.           }
{                                                                    }
{ It is possible for a conforming processor to output a value        }
{ greater than maxint correctly. This must be checked by examination }
{ of the output if the error is undetected.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR66T(output);
var
   i: integer;
begin
   writeln(' ERROR...6.7.2.2-12 (ERR66T)');
   i := 100;
   writeln(' MAXINT + 100 = ',maxint+i);
   writeln(' ERROR NOT DETECTED...6.7.2.2-12 (D.47)')
end.
