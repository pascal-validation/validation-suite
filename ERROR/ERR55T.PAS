{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.3-4, FILE=ERR55T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=36                                                          }
{                                                                    }
{:This program causes an error to occur as the result returned by    }
{:the round function exceeds maxint.                                 }
{                                                                    }
{ If i is printed, its value should be checked.                      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test now prints the value of i.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR55T(output);
var
   reel : real;
   i    : integer;
begin
   writeln(' ERROR...6.6.6.3-4 (ERR55T)');
   reel := maxint;
   i := round(reel*1.5);
   writeln(' THE VALUE OF I IS ',i);
   writeln(' ERROR NOT DETECTED...6.6.6.3-4 (D.36)')
end.
