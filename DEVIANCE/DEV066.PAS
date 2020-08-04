{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.1-3, FILE=DEV066, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The syntax for Pascal allows only structured-types to be packed    }
{:(array, set, file and record types).                               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Changed comment to emphasize that syntax is being          }
{         checked. Was previously 6.4.3.1-1.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV066(output);
type
   switch = packed(on,off);
   state  = packed(high,low,invalid);
   decade   = packed 0..10;
begin
   writeln(' DEVIATES...6.4.3.1-3 (DEV066)')
end.
