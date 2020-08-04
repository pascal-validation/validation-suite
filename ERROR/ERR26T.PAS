{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-12, FILE=ERR26T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=17                                                          }
{                                                                    }
{:This program is in error since the value of the buffer-variable is }
{:not assignment-compatible with the variable-access, as a result of }
{:a call of read.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR26T(output);
type
   digits = (one,two,three,four);
   subrange = one..two;
var
   f : file of digits;
   sub : subrange;
begin
   writeln(' ERROR...6.6.5.2-12 (ERR26T)');
   rewrite(f);
   write(f,three);
   reset(f);
   read(f,sub);      { error}
   writeln(' ERROR NOT DETECTED...6.6.5.2-12 (D.17)')
end.
