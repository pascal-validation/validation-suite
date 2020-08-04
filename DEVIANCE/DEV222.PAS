{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-5, FILE=DEV222, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program checks that an assignment cannot be made to a         }
{:for-statement control-variable.                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised. Was previously 6.8.3.9-2.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV222(output);
var
  i,j:integer;
begin
   j:=0;
   for i:=1 to 10 do
   begin
      j:=j+1;
      i:=i+1
   end;
   writeln(' DEVIATES...6.8.3.9-5 (DEV222)')
end.
