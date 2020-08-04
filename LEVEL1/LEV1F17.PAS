{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-8, FILE=LEV1F17, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that arrays with different bounds cannot be       }
{:passed as conformant arrays in the same section.                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F17(output);
type
   bit = (one, two);
var
   x: array [1..2] of bit;
   y: array [3..4] of bit;

procedure p(a, b: array [l..u: integer] of bit);
   begin
   end;
begin
if false then
   p(x,y);
writeln(' DEVIATES...6.6.3.7.1-8 (LEV1F17)')
end.
