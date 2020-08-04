{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-1, FILE=DEV190, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks whether jumps between branches of an if-statement }
{:are allowed.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test renumbered was 6.8.2.4-2.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV190(output);
label
   1,2;
var
   i:integer;
begin
   i:=5;
   if (i<10) then
      goto 1
   else
      1:write(' DEVIATES...6.8.1-1 (DEV190)');
   if (i>10) then
      2:writeln(', GOTO ALTERNATE BRANCH OF IF')
   else
     goto 2
end.
