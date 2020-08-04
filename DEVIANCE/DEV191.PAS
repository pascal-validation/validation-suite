{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-2, FILE=DEV191, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks whether jumps between branches of a               }
{:case-statement are allowed.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test renumbered was 6.8.2.4-3.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV191(output);
label
   4;
var
   i:1..3;
begin
   for i:=1 to 2 do
      case i of
      1:  ;
      2: goto 4;
      3:4:
         writeln(' DEVIATES...6.8.1-2 (DEV191)')
      end
end.
