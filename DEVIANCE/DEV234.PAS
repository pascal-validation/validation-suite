{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-24, FILE=DEV234, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that an actual value parameter is not permitted   }
{:as a for-loop  control variable.                                   }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV234(output);
var
   i: integer;
   fail: boolean;
procedure p(i: integer);
   begin
   for i:= 1 to 10 do
      fail := true
   end;
begin
fail := false;
i := 20;
p(i);
writeln(' DEVIATES...6.8.3.9-24 (DEV234)', fail)
end.
