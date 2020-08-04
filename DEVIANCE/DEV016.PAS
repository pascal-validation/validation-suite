{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.6-6, FILE=DEV016, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test contains a label which is not a digit-sequence.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV016(output);
label
   a;
begin
   goto a;
   a: writeln(' DEVIATES...6.1.6-6 (DEV016)')
end.
