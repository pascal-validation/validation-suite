{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.3-2, FILE=DEV247, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program attempts to output an integer number using a real     }
{:format.                                                            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Renumbered from 6.9.3.2-1.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV247(output);
var
   f:text;
   i:integer;
begin
   rewrite(f);
   i:=123;
   write(f,i:6:1);
   writeln(' DEVIATES...6.9.3.3-2 (DEV247)')
end.
