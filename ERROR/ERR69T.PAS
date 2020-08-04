{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-19, FILE=ERR69T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=47                                                          }
{                                                                    }
{:This test contains a simple-expression in which the value of a     }
{:term exceeds maxint.                                               }
{                                                                    }
{ Processors with an overlength accumulator can accomodate integers  }
{ whose values exceed maxint and arrive at a correct result.         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR69T(output);
var
   i,j : integer;
begin
   writeln(' ERROR...6.7.2.2-19 (ERR69T)');
   i := maxint;
   j := 3;
   if (i*j - maxint - maxint <> maxint) or
      (i*j div 3 <> maxint) then
      begin
      writeln(' ERROR NOT DETECTED...6.7.2.2-19 (D.47)')
      end
   else
      begin
      writeln(' TEST NOT RELEVANT')
      end
end.
