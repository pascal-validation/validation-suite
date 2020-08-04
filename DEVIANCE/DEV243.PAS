{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.2-3, FILE=DEV243, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:The procedure readln should only be allowed on textfiles.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV243(output);
type
   sneak = file of char;
var
   dirty : sneak; { Not a textfile}
begin
   rewrite(dirty);
   write(dirty,'2'); write(dirty,' ');
   reset(dirty);
   readln(dirty); { Not allowed}
   writeln(' DEVIATES...6.9.2-3 (DEV243)')
end.
