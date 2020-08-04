{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.8-3, FILE=DEV027, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program deviates because a comment acts as a separator within }
{:a lexical token.                                                   }
{                                                                    }
{ The comment incorrectly separates the exponent character as though }
{ it was an operator.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV027(output);
const
   x = 1.0{exponent}E6;
begin
   writeln(' DEVIATES...6.1.8-3 (DEV027)')
end.
