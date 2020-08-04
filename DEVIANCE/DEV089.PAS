{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-7, FILE=DEV089, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program simply tests that the processor does not deviate from }
{:the Standard in the case of subranges of the same host being       }
{:treated as identical.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write revised. Was previously 6.4.5-2.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV089(output);
type
   colour = (red,pink,orange,yellow,green,blue);
   subone = red..yellow;
   subtwo = pink..blue;
var
   colour1 : subone;
   colour2 : subtwo;
procedure test(var col1 : subone);
begin
   writeln(' DEVIATES...6.4.5-7 (DEV089)')
end;
begin
   { Although colour1 and colour2 are compatible (i.e. subone and
     subtwo are compatible), they are not identical, and the call
     to 'test' should not be acceptable.}
   colour2:=pink;
   test(colour2)
end.
