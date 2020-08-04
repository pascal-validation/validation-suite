{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-3, FILE=DEV060, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program deviates since real constants are not permitted in a  }
{:subrange declaration.                                              }
{                                                                    }
{ The Pascal Standard states that a subrange definition must be of a }
{ subrange of another ordinal-type. This rules out real constants in }
{ the definition.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writing revised. Was previously 6.4.2.4-2.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV060(output);
type
   wiregauge = 0.001..0.2;
begin
   writeln(' DEVIATES...6.4.2.4-3 (DEV060)')
end.
