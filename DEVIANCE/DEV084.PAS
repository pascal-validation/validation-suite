{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.4-7, FILE=DEV084, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test contains declarations of a set, whose base-type is real. }
{                                                                    }
{ The Pascal Standard states that the base-type of the range of a    }
{ set must be an ordinal-type. This should eliminate sets with real  }
{ and structured ranges. Some processors may allow these and hence   }
{ will deviate if program is not flagged as an error.                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: This test split from 6.4.3.4-3.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV084(output);
type
   setone   = set of real;
begin
   writeln(' DEVIATES...6.4.3.4-7 (DEV084)')
end.
