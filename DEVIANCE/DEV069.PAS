{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-4, FILE=DEV069, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program tests if the processor will allow real array-bounds.  }
{                                                                    }
{ The Pascal Standard states that an index-type must be an           }
{ ordinal-type. This does not include REAL.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.3.2-2.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV069(output);
type
   reeltest = array[1.5..10.1] of real;
begin
   writeln(' DEVIATES...6.4.3.2-4 (DEV069)')
end.
