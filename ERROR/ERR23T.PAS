{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-9, FILE=ERR23T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=12                                                          }
{                                                                    }
{:This test causes an error by applying 'put' to an undefined        }
{:buffer-variable.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR23T(output);
type
   fyle = file of char;
var
   f : fyle;
begin
   writeln(' ERROR...6.6.5.2-9 (ERR23T)');
   rewrite(f);
   f^ := 'Z';
   put(f);
   put(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-9 (D.12)')
end.
