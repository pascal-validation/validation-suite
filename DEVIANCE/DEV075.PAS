{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-18, FILE=DEV075, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since all values of a tag-type of a record must }
{:appear as case-constants.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV075(output);
type
   colour=(pink,red,green,blue,yellow);
   colored=record
              case c:colour of
                 pink:(p:array [1..2] of colour);
                 red:(r:array [1..3] of colour);
                 blue,yellow:(b:array [1..5] of colour);
           end;
begin
   writeln(' DEVIATES...6.4.3.3-18 (DEV075)')
end.
