{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.4-6, FILE=DEV083, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test contains declarations of sets, whose base-types are      }
{:sets.                                                              }
{                                                                    }
{ The Pascal Standard states that the base-type of the range of a    }
{ set must be an ordinal-type. This should eliminate sets with real  }
{ and structured ranges. Some processors may allow these and hence   }
{ will deviate if program is not flagged as an errors.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: This test split from 6.4.3.4-3.                            }
{   V4.3: Unintentional error ('urray' not declared), removed.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV083(output);
type
   legalset = set of 1..3;
   setfive  = set of legalset;
   setsix   = set of set of 1..4;
begin
   writeln(' DEVIATES...6.4.3.4-6 (DEV083)')
end.
