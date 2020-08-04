{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-7, FILE=ERR21T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=09                                                          }
{                                                                    }
{:This test causes an error by using put when the file mode is not   }
{:generation.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test altered so that error number D11 is not violated.     }
{   V5.0: Line containing 'rewrite(f)' deleted from pretest.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR21T(output);
type
   fyle = file of integer;
var
   f : fyle;
begin
   writeln(' ERROR...6.6.5.2-7 (ERR21T)');
   rewrite(f);
   reset(f);
   f^ := 1234;
   put(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-7 (D.09)')
end.
