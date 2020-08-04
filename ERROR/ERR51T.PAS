{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-12, FILE=ERR51T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=32                                                          }
{                                                                    }
{:This program causes an error to occur by a call of the function    }
{:sqr such that the resulting value does not exist with a real       }
{:parameter.                                                         }
{                                                                    }
{ Repeatedly squaring a number > 1.0 should either overflow or give  }
{ an 'infinite' result.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR51T(output);
var
   x: real;
begin
      writeln(' ERROR...6.6.6.2-12 (ERR51T)');
   x := 2.0;
   while x < sqr(x) do
      x := sqr(x);
   if x <> sqr(x) then
      begin
      writeln(' ERROR NOT DETECTED...6.6.6.2-12 (D.32)')
      end
   else
      begin
      writeln(' TEST NOT RELEVANT, INFINITY')
      end;
end.
