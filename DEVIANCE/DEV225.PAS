{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-10, FILE=DEV225, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This program tests whether a non-local variable at an intermediate }
{:level can be used as a for-statement control-variable.             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.8.3.9-9.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV225(output);
procedure p;
var
   i:integer;
   procedure loop;
   var
      j:integer;
   begin
      j:=0;
      for i:=1 to 10 do
         j:=j+1
   end;
begin
   loop
end;
begin
   p;
   writeln(' DEVIATES...6.8.3.9-10 (DEV225)')
end.
