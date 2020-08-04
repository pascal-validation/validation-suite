{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.5-2, FILE=DEV252, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:The procedure page may only be applied to textfiles.               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV252(output);
type
   sneak = file of char;
var
   dirty : sneak;
begin
   rewrite(dirty);
   write(dirty,' ');
   page(dirty); { Not allowed}
   writeln(' DEVIATES...6.9.5-2 (DEV252)')
end.
