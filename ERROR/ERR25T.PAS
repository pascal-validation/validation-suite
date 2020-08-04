{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-11, FILE=ERR25T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=15                                                          }
{                                                                    }
{:This test causes an error by using 'get' on an undefined file.     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR25T(output);
var
   f : file of char;
begin
   writeln(' ERROR...6.6.5.2-11 (ERR25T)');
   get(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-11 (D.15)')
end.
