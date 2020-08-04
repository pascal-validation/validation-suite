{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-8, FILE=ERR61T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=41                                                          }
{                                                                    }
{:This test causes an error by applying eoln(f) while f is           }
{:undefined.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR61T(output);
var
   f : text;
   endline : boolean;
begin
   writeln(' ERROR...6.6.6.5-8 (ERR61T)');
   endline := eoln(f);
   writeln(' ERROR NOT DETECTED...6.6.6.5-8 (D.41)')
end.
