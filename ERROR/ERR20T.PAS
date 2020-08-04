{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-6, FILE=ERR20T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=14                                                          }
{                                                                    }
{:This program checks for detection of the error of doing a get on a }
{:file immediately following a rewrite.                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR20T(output);
var
   fyle : text;
begin
   writeln(' ERROR...6.6.5.2-6 (ERR20T)');
   rewrite(fyle);
   writeln(fyle,'ABC');
   rewrite(fyle);
   get(fyle);          {causes an error}
   writeln(' ERROR NOT DETECTED...6.6.5.2-16 (D.14)')
end.
