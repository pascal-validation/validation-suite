{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-26, FILE=CONF183, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that the final expression in the for-statement    }
{:can use the value of the control variable.                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF183(output);

var
   sum, control: integer;
begin
control := 10;
sum := 0;
for control := 1 to control do
   sum := sum + control;
if sum <> 55 then
   writeln(' FAIL...6.8.3.9-26 (CONF183)')
else
   writeln(' PASS...6.8.3.9-26 (CONF183)')
end.
