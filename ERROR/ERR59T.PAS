{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-6, FILE=ERR59T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=40                                                          }
{                                                                    }
{:This test checks for the error of the parameter to the eof         }
{:function being undefined.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed, rewrite deleted.                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR59T(output);
var
   fyle    : text;
   endfyle : boolean;
begin
   writeln(' ERROR...6.6.6.5-6 (ERR59T)');
   endfyle:=eof(fyle);     {error}
   writeln(' ERROR NOT DETECTED...6.6.6.5-6 (D.40)')
end.
