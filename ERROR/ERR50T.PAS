{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-5, FILE=ERR50T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=34                                                          }
{                                                                    }
{:This program causes an error to occur as a negative argument is    }
{:used for the sqrt function.                                        }
{                                                                    }
{ The error should be detected at run-time.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR50T(output);
var
   m    : real;
   i, j : integer;
begin
   writeln(' ERROR...6.6.6.2-5 (ERR50T)');
   i:=256;
   j:=i*2;
   j:=j-257;
   m:=sqrt(j-i);
   writeln(' ERROR NOT DETECTED...6.6.6.2-5 (D.34)')
end.
