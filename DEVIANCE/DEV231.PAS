{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-16, FILE=DEV231, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks the type of error produced when a for-statement   }
{:control-variable value is read during the execution of the         }
{:for-statement.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV231(output);
var
   f:text;
   i,j:integer;
begin
   j:=0;
   rewrite(f);
   writeln(f,5,5,5,5,5);
   reset(f);
   for i := 1 to 10 do
   begin
      if (i<5) then
         read(f,i);
      j:=j+1
   end;
   writeln(' DEVIATES...6.8.3.9-16 (DEV231)')
end.
