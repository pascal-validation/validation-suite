{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-21, FILE=ERR76T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This test causes an error by examining the value of a              }
{:control-variable after execution of a for-statement.               }
{                                                                    }
{ The control-variable in this test is undefined after execution of  }
{ the for-statement. If the error is not detected it explores the    }
{ nature of the value of the control-variable which has been         }
{ preserved.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Reclassified from DEVIANCE and comment changed.            }
{         Renumbered from 6.8.3.9-8.                                 }
{   V4.3: Writeln('ERROR NOT DETECTED') and writeln('ERROR')         }
{         inverted to print in correct order.                        }
{   V5.0: Syntax error on line 34 fixed.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR76T(output);
var
   i,j,k,m:integer;
begin
   writeln(' ERROR...6.8.3.9-21 (ERR76T)');
   i:=100;
   j:=1;
   k:=10;
   m:=0;
   for i:=j to k do
      m:=m+1;
   if i=k+1 then
      writeln(' CONTROL VARIABLE VALUE = FINAL VALUE + 1')
   else
      if i=k then
         writeln(' CONTROL VARIABLE VALUE = FINAL VALUE')
      else
         if i=j then
            writeln(' CONTROL VARIABLE VALUE = INITIAL VALUE')
         else
            writeln(' CONTROL VARIABLE DEFINED BUT VALUE UNKNOWN');
   writeln(' ERROR NOT DETECTED...6.8.3.9-21 (D.43)');
end.
