{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-9, FILE=DEV072, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program tests if the processor will allow real array-bounds.  }
{                                                                    }
{ The Pascal Standard states that an index-type must be an           }
{ ordinal-type. This does not include REAL.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test derived from 6.4.3.2-4.                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV072(output);
type
   reeltest = array[real] of real;
begin
   writeln(' DEVIATES...6.4.3.2-9 (DEV072)')
end.
