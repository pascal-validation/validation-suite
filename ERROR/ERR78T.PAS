{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-27, FILE=ERR78T, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=43                                                          }
{                                                                    }
{:This test causes an error by access to the control-variable in     }
{:spite of a potential valid value if a goto statement were          }
{:executed.                                                          }
{                                                                    }
{ The control-variable in this test is defined after label for the   }
{ goto statement, but not before.                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR78T(output);
label
   10, 20;
var
   i, j, k, m: integer;
begin
writeln(' ERROR...6.8.3.9-27 (ERR78T)');
i := 100;
j := 1;
k := 2; { so that the goto is not executed}
m := 0;
for i := j to k do
   begin
   m := m + 1;
   if m > 3 then
      goto 10
   end;
writeln('i= ',i); { error D.43}
writeln(' ERROR NOT DETECTED...6.8.3.9-27 (D.43)');
goto 20;
10: writeln('i= ', i);
    writeln(' NOT EXECUTED');
20:
end.
