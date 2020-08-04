{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-13, FILE=ERR52T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=32                                                          }
{                                                                    }
{:This program causes an error to occur by a call of the function    }
{:sqr such that the resulting value does not exist with an integer   }
{:parameter.                                                         }
{                                                                    }
{ Repeatedly squaring a number > 1 should either overflow or give an }
{ 'infinite' result. Note that if sqr is supplied with an integer    }
{ parameter, error number D32 is a particular case of D47.           }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered and writes revised.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR52T(output);
var
x, last: integer;
begin
   writeln(' ERROR...6.6.6.2-13 (ERR52T)');
   x := 2;  last := 1;
   while (x < maxint) and (last < x) do
      begin
      last := x;
      x := sqr(x);
      end;
   if (last*last <> x) or (x < last) then
      begin
      writeln(' ERROR NOT DETECTED...6.6.6.2-13 (D.32)')
      end
   else
      begin
      writeln(' TEST NOT RELEVANT, VALUE MORE THAN MAXINT')
      end;
end.
