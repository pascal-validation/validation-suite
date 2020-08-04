{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-14, FILE=DEV229, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This program tests whether a formal parameter can be used as a     }
{:for-statement control-variable.                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.8.3.9-13.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV229(output);
procedure p;
var
   i:integer;
   procedure loop(var i:integer);
   var
      j:integer;
   begin
      j:=0;
      for i:=1 to 10 do
         j:=j+1
   end;
begin
   i:=10;
   loop(i)
end;
begin
   p;
   writeln(' DEVIATES...6.8.3.9-14 (DEV229)')
end.
