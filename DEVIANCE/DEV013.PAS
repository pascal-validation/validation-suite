{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-13, FILE=DEV013, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This program deviates since spaces in numbers are forbidden.       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: This test drawn from 6.1.5-5.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV013(output);
const
   five  = 1234E 2;
   six   = 1234E- 2;
   seven = 1234E+ 2;
   eight = 1234E +2;
begin
   writeln(' DEVIATES...6.1.5-13 (DEV013)')
end.
