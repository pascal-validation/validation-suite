{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-7, FILE=ERR60T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=42                                                          }
{                                                                    }
{:This test causes an error by applying the eoln function to a file  }
{:f while eof(f) is true.                                            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Final read replaced by assignment to avoid additional      }
{         error.                                                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR60T(output);
var
   f       : text;
   a,b,c,d : char;
begin
   writeln(' ERROR...6.6.6.5-7 (ERR60T)');
   rewrite(f);
   writeln(f,'ABC');
   reset(f);
   read(f,a,b,c);
   readln(f);
   if not eoln(f) then     {illegal}
      d := 'D';
   writeln(' ERROR NOT DETECTED...6.6.6.5-7 (D.42)')
end.
