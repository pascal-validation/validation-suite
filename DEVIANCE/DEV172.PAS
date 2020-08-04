{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-7, FILE=DEV172, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Arithmetic operations should not be allowed with Boolean operands. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test. (Complements 6.7.2.3-2).                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV172(output);
var
   i,j : boolean;
begin
   i:=true; j:=false;
   i:=i*j;
   i:=i*1;
   i:=i+j;
   i:=i+1;
   i:=-j;
   writeln(' DEVIATES...6.7.2.2-7 (DEV172)')
end.
