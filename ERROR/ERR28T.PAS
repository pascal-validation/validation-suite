{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-14, FILE=ERR28T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=18                                                          }
{                                                                    }
{:This test causes an error by writing an expression which is not    }
{:assignment-compatible with the buffer-variable, as a result of a   }
{:call of write.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR28T(output);
type
   subrange = 1..10;
var
   f : file of subrange;
   int : integer;
begin
   writeln(' ERROR...6.6.5.2-14 (ERR28T)');
   int := 4;
   rewrite(f);
   write(f,int*int);      { error}
   writeln(' ERROR NOT DETECTED...6.6.5.2-14 (D.18)')
end.
