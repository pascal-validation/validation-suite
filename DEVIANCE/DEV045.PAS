{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-2, FILE=DEV045, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program checks that signed-chars are not permitted.           }
{                                                                    }
{ Note that minus may have a worse effect than plus.                 }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV045(output);
const
   dot = '.';
   plusdot = + dot;
begin
   writeln(' DEVIATES...6.3-2 (DEV045), SIGNED CHAR (', plusdot, ')')
end.
