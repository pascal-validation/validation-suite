{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-15, FILE=DEV230, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This program tests whether a global variable (at program level)    }
{:can be used as a for-statement control-variable inside an inner    }
{:block.                                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.8.3.9-14.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV230(output);
var
   i:integer;
procedure p;
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
   writeln(' DEVIATES...6.8.3.9-15 (DEV230)')
end.
