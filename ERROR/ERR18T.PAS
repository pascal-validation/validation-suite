{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-4, FILE=ERR18T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=11                                                          }
{                                                                    }
{:This program causes an error to occur, as eof(fyle) does not yield }
{:true prior to execution of a put on the file.                      }
{                                                                    }
{ Note that it is impossible to violate error number D11 without     }
{ simultaneously violating D9 (see 6.6.5.2-7).                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment extended.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR18T(output);
var
   fyle : text;
begin
   writeln(' ERROR...6.6.5.2-4 (ERR18T)');
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);      { eof is false and fyle^='A'}
   put(fyle);        { causes an error}
   writeln(' ERROR NOT DETECTED...6.6.5.2-4 (D.11)')
end.
