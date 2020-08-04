{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.1-10, FILE=ERR82T, CLASS=ERRORHANDLING, LEVEL=0,          }
{ NUMBER=55                                                          }
{                                                                    }
{:This test causes an error by reading an integer whose value is not }
{:assignment-compatible with the type possessed by the               }
{:variable-access.                                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR82T(output);
type
   subrange = 1..10;
var
   sub : subrange;
   f : text;
begin
   writeln(' ERROR...6.9.1-10 (ERR82T)');
   rewrite(f);
   writeln(f,'1234');
   reset(f);
   read(f,sub);
   writeln(' ERROR NOT DETECTED...6.9.1-10 (D.55)')
end.
