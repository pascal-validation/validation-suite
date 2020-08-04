{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-4, FILE=DEV047, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program checks that signed non-numerics are not permitted.    }
{                                                                    }
{ Note that minus may have a worse effect than plus.                 }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV047(output);
const
   truth = true;
   plustruth = + truth;
begin
   writeln(' DEVIATES...6.3-4 (DEV047)',
           ' SIGNED NON-NUMERIC ( PLUSTRUTH = ',plustruth, ')')
end.
