{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-7, FILE=DEV064, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the constants defining a subrange-type    }
{:should be of the same ordinal-type.                                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV064(output);
const
   zero = '0';
   one  =  1;
type
   zerotoone = zero..one;
begin
   writeln(' DEVIATES...6.4.2.4-7 (DEV064)')
end.
