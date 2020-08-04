{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-6, FILE=DEV071, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The notation '(.  .)(.  .)' is allowed for indexed-variables, but  }
{:not for index-type definitions.                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV071(output);
type
   ar=array[1..10][1..5] of integer;
begin
   writeln(' DEVIATES...6.4.3.2-6 (DEV071)')
end.
