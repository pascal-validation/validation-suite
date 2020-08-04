{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.3-2, FILE=DEV174, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Logical operations should not be allowed on integers.              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Duplicated statement corrected. Write revised. Was         }
{         previously 6.7.2.3-4.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV174(output);
var
  i,j:integer;
begin
   i:=1; j:=2;
   i:=i and j;
   i:=i and 1;
   i:=i or j;
   i:=i or 1;
   i:= not j;
   writeln(' DEVIATES...6.7.2.3-2 (DEV174)')
end.
