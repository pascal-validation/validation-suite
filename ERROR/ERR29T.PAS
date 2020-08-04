{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-15, FILE=ERR29T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=18                                                          }
{                                                                    }
{:This test causes an error by writing an expression which is not    }
{:assignment-compatible with the buffer-variable, as a result of the }
{:use of put.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR29T(output);
type
   subrange = 1..10;
var
   f : file of subrange;
   int : integer;
begin
   writeln(' ERROR...6.6.5.2-15 (ERR29T)');
   int := 4;
   rewrite(f);
   f^ := int*int;         { error}
   put(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-15 (D.18)')
end.
