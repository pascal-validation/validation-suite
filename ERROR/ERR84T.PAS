{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-3, FILE=ERR84T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=58                                                          }
{                                                                    }
{:This program contains the error of FracDigits being less than one. }
{                                                                    }
{ It should preferably be detected before run-time.                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Renumbered from 6.9.3.2-4.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR84T(output);
var
   f:text;
   r,s,t:real;
begin
   writeln(' ERROR...6.9.3.1-3 (ERR84T)');
   rewrite(f);
   r:=0.9;
   s:=1.0;
   t:=1.1;
   write(f,r,s:10:0,t);
   writeln(' ERROR NOT DETECTED...6.9.3.1-3 (D.58)')
end.
