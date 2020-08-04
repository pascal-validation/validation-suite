{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.3-3, FILE=ERR54T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=35                                                          }
{                                                                    }
{:This program causes an error to occur as the result returned by    }
{:the trunc function exceeds maxint.                                 }
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

program ERR54T(output);
var
   reel : real;
   i    : integer;
begin
   writeln(' ERROR...6.6.6.3-3 (ERR54T)');
   reel := maxint;
   i := trunc(reel*1.5);
   writeln(' THE VALUE OF I IS ',i);
   writeln(' ERROR NOT DETECTED...6.6.6.3-3 (D.35)')
end.
