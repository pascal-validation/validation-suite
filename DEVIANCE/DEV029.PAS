{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.8-4, FILE=DEV029, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Nested-comments are not permitted in Pascal.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV029(output);
begin
   { writeln(' RAN')
   { writeln(' RAN1')}
   writeln(' RAN2')}
   writeln(' DEVIATES...6.1.8-4 (DEV029)')
end.
