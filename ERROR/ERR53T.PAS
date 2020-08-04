{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-16, FILE=ERR53T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=33                                                          }
{                                                                    }
{:This program causes an error to occur as an expression with a zero }
{:value is used as an argument for the arithmetic function ln.       }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR53T(output);

var
   m:real;

begin
     writeln(' ERROR...6.6.6.2-16 (ERR53T)');
     m:=0.0;
     m:=ln(m*2);
     writeln(' ERROR NOT DETECTED...6.6.6.2-16 (D.33)')
end.
