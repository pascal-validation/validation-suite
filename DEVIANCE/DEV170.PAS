{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-5, FILE=DEV170, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The monadic operator plus can only be applied to numeric operands. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write altered to terminology of Standard.      }
{         Was previously 6.7.2.2-9.                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV170(output);
const
   capa = 'A';
begin
   writeln(' ',+capa);
   writeln(' DEVIATES...6.7.2.2-5 (DEV170)')
end.
