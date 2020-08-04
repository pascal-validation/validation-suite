{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-13, FILE=ERR27T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=17                                                          }
{                                                                    }
{:This program is in error since the value of the buffer-variable is }
{:not assignment-compatible with the variable-access, as a result of }
{:a use of get.                                                      }
{                                                                    }
{ Since read is equivalent to an assignment-statement followed by a  }
{ get, error number D17 is a particular case of D49.                 }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment extended.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR27T(output);
type
   digits = (one,two,three,four);
   subrange = one..two;
var
   f : file of digits;
   sub : subrange;
begin
   writeln(' ERROR...6.6.5.2-13 (ERR27T)');
   rewrite(f);
   f^ := three;
   put(f);
   reset(f);
   sub := f^;        { error}
   get(f);
   writeln(' ERROR NOT DETECTED...6.6.5.2-13 (D.17)')
end.
