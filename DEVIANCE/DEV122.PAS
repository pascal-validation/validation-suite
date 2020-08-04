{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-10, FILE=DEV122, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test deviates since a result-type must be included in the     }
{:function-heading of a function-declaration.                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV122(output);
var
   i : integer;
   positive : boolean;
function ff (x:integer);
begin
   ff:= (x>0)
end;
begin
   i:=10;
   if ff(i) then
      positive:=true
   else
      positive:=false;
   writeln(' DEVIATES...6.6.2-10 (DEV122)')
end.
