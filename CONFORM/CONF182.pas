{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-25, FILE=CONF182, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the final value before 'do' is fixed.        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF182(output);
const
   final=10;
var
   control, sum, limit: integer;
begin
limit := final;
sum := 0;
for control := 1 to limit do
   begin
   limit := final + 1;
   sum := sum + control
   end;
if sum = 55 then
   writeln(' PASS...6.8.3.9-25 (CONF182)')
else
   writeln(' FAIL...6.8.3.9-25 (CONF182)')
end.
