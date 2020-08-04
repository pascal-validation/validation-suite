{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-6, FILE=DEV063, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:A subrange-type is not permitted in an enumerated-type definition. }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV063(output);
type
   bool=(false..true);
var
   v:bool;
begin
   v:=false;
   writeln(' DEVIATES...6.4.2.4-6 (DEV063)')
end.
