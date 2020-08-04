{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-21, FILE=ERR42T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=04                                                          }
{                                                                    }
{:This test causes an error by dereferencing a dangling pointer.     }
{                                                                    }
{ If q=p then DISPOSE(p) acts on q also. Note that error number D4   }
{ is a particular case of D43.                                       }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Reference number in header changed, comment extended.      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR42T(output);
var
   p,q:^integer;
begin
   writeln(' ERROR...6.6.5.3-21 (ERR42T)');
   new(p);
   p^:=5;
   q:=p;
   dispose(p);
   q^:=q^-1;
   writeln(' ERROR NOT DETECTED...6.6.5.3-21 (D.04)')
end.
