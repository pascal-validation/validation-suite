{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-9, FILE=ERR81T, CLASS=ERRORHANDLING, LEVEL=0, NUMBER=57 }
{                                                                    }
{:This test causes an error by reading from a textfile when the      }
{:buffer-variable is undefined, by a call of read.                   }
{                                                                    }
{ Note that in general error numbers D16 and D57 are equivalent.     }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment extended.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR81T(output);
var
   ch : char;
   f : text;
begin
   writeln(' ERROR...6.9.1-9 (ERR81T)');
   rewrite(f);
   writeln(f,'ONE LINE');
   reset (f);
   while not eof(f) do
      read(f,ch);
   read(f,ch);      { error since f^ is undefined}
   writeln(' ERROR NOT DETECTED...6.9.1-9 (D.57)')
end.
