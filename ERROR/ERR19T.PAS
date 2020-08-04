{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-5, FILE=ERR19T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=16                                                          }
{                                                                    }
{:This program causes an error to occur as eof(fyle) does not yield  }
{:false prior to execution of a get on the file.                     }
{                                                                    }
{ Note that in general error numbers D16 and D57 are equivalent.     }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Comment extended.                                          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR19T(output);
var
   fyle : text;
begin
   writeln(' ERROR...6.6.5.2-5 (ERR19T)');
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);           { error since eof is true}
   writeln(' ERROR NOT DETECTED...6.6.5.2-5 (D.16)')
end.
