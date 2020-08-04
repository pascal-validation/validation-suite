{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-7, FILE=DEV059, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Integers are not allowed in an enumerated-type.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV059(output);
type
   status=(0,1,2);
var
   s:status;
begin
   s:=0;
   writeln(' DEVIATES...6.4.2.3-7 (DEV059)')
end.
