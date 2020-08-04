{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-7, FILE=ERR85T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=58                                                          }
{                                                                    }
{:This program contains the error of FracDigits being less than one. }
{                                                                    }
{ This test is similar to 6.9.3.2-4, except that FracDigits is a     }
{ variable. The error should therefore be detected at run time.      }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.2-3.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR85T(output);
var
   f:text;
   r,s,t:real;
   fd:integer;
begin
   writeln(' ERROR...6.9.3.1-7 (ERR85T)');
   rewrite(f);
   r:=0.9;
   s:=0.0;
   t:=1.1;
   fd:=pred(1);
   write(f,r,s:10:fd,t);
   writeln(' ERROR NOT DETECTED...6.9.3.1-7 (D.58)')
end.
