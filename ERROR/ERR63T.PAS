{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-9, FILE=ERR63T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=47                                                          }
{                                                                    }
{:This program causes an error to occur as the result of a dyadic    }
{:integer operation is greater than maxint.                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered and writes revised.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR63T(output);
var
   i : integer;
begin
   writeln(' ERROR...6.7.2.2-9 (ERR63T)');
   i:=(maxint-(maxint div 2))*2+2;
   if ((odd(maxint) and (i-maxint = 3)) or
      (not odd(maxint) and (i-maxint = 2))) and (i > 0) then
      writeln(' TEST NOT RELEVANT')
   else
      begin
      writeln(' ERROR NOT DETECTED...6.7.2.2-9 (D.47)')
      end
end.
