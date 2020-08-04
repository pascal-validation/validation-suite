{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-15, FILE=ERR06T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=49                                                          }
{                                                                    }
{:This program causes an error by assigning an out-of-range value to }
{:a variable.                                                        }
{                                                                    }
{ The test is of interest where the processor consists of a compiler }
{ plus execution system, in which case the error should certainly be }
{ detected somewhere, but preferably during compilation.             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR06T(output);
var i: 5 .. 10;
    j: 0 .. 4;
begin
   writeln(' ERROR...6.4.5-15 (ERR06T)');
   i := 5;
   j := i;
   writeln(' THE VALUE OF I IS ', i);
   writeln(' THE VALUE OF J IS ', j);
   writeln(' ERROR NOT DETECTED...6.4.5-15 (D.49)')
end.
