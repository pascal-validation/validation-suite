{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-10, FILE=ERR24T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=13                                                          }
{                                                                    }
{:This test causes an error by applying 'reset' to an undefined      }
{:file.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.0: Line containing 'write(f,42);' added to pretest            }
{         between the rewrite and the reset.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the           }
{         'ERROR NOT DETECTED' line.                                }
{                                                                    }

program ERR24T(output);
var
   f : file of integer;
begin
   writeln(' ERROR...6.6.5.2-10 (ERR24T)');
   reset(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-10 (D.13)')
end.
