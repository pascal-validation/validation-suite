{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-3, FILE=DEV046, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program checks that signed-strings are not permitted.         }
{                                                                    }
{ Note that minus may have a worse effect than plus.                 }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV046(output);
const
   stars = '****';
   plusstars = + stars;
begin
   writeln(' DEVIATES...6.3-3 (DEV046), SIGNED STRING ( PLUSSTARS = ',
      plusstars, ')')
end.
