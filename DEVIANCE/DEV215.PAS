{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-17, FILE=DEV215, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the case-constants of a case-statement    }
{:must be of the same ordinal-type as the case-index.                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV215(output);
var
   sub1, sub2 : 1..3;
begin
   sub1 := 1;   sub2 := 1;
   case sub1 of
      1,2: sub2 := sub2 + 1;
      '3': sub2 := sub2 - 1
    end;
   writeln(' DEVIATES...6.8.3.5-17 (DEV215)')
end.
