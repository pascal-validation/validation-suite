{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.8.3.9-27, FILE=ERR78P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR78P(output);
label
   10, 20;
var
   i, j, k, m: integer;
begin
i := 100;
j := 1;
k := 10; { so that the goto is executed}
m := 0;
for i := j to k do
   begin
   m := m + 1;
   if m > 3 then
      goto 10
   end;
writeln('i= ',i);
writeln(' ERROR NOT DETECTED');
goto 20;
10: writeln('i= ',i);
    writeln(' PRETEST...6.8.3.9-27 (ERR78P)');
20:
end.
