{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-16, FILE=ERR68T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=44                                                          }
{                                                                    }
{:This test causes an error since in the expression x/y y has the    }
{:value zero.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR68T(output);
var
   x,y : integer;
   z : real;
begin
   writeln(' ERROR...6.7.2.2-16 (ERR68T)');
   x := 4;
   y := x*x - (x+12);
   z := x/y;      { error  since y = 0}
   writeln(' ERROR NOT DETECTED...6.7.2.2-16 (D.44)')
end.
