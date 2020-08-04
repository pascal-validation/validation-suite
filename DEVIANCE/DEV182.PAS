{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-5, FILE=DEV182, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Relational operators should not be permitted to concatenate.       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write revised. Was previously 6.7.2.5-4.                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV182(output);
var
   x,y,z:integer;
  b:boolean;
begin
   x:=1;
   y:=2;
   z:=3;
   b:=(x<y<z);
   writeln(' DEVIATES...6.7.2.5-5 (DEV182)')
end.
