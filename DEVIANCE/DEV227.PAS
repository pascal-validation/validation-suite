{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-12, FILE=DEV227, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks whether a for-statement control-variable can be a }
{:component variable.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.8.3.9-11.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV227(output);
var
   rec:record
         i,j:integer
       end;
begin
   for rec.i:=0 to 10 do
      rec.j := rec.i;
   with rec do
      for i := 0 to 10 do
         j:=i;
   writeln(' DEVIATES...6.8.3.9-12 (DEV227)')
end.
