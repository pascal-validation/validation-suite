{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-5, FILE=DEV010, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program deviates since spaces in numbers are forbidden.       }
{                                                                    }
{ This includes spaces around '.' and 'E'.                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: This test was split into two (6.1.5-5).                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV010(output);
const
   one   = 1 234;
   two   = 0 .1234;
   three = 0. 1234;
   four  = 1234 E2;
   nine  = 0.123 4;
begin
   writeln(' DEVIATES...6.1.5-5 (DEV010)')
end.
