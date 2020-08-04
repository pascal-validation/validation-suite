{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-7, FILE=DEV224, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program checks that the threat to the control-variable of a   }
{:for-statement posed by the use of the variable in a procedure      }
{:contained in the block is detected.                                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Body of nestedthreat altered to outwit optimising          }
{         compilers.                                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV224(output);
var
   i,j:integer;
procedure nestedthreat;
begin
   if 1 = 0 then i:=i
end;
begin
   j:=0;
   for i:= 1 to 10 do
      j:=j+1;
   writeln(' DEVIATES...6.8.3.9-7 (DEV224)')
end.
