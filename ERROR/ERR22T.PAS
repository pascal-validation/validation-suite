{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-8, FILE=ERR22T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=10                                                          }
{                                                                    }
{:This test causes an error by applying 'page' to a text file whose  }
{:value is undefined.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR22T(output);
var
   f : text;
begin
   writeln(' ERROR...6.6.5.2-8 (ERR22T)');
   page(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-8 (D.10)')
end.
