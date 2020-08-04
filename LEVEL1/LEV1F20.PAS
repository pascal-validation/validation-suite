{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-11, FILE=LEV1F20, CLASS=DEVIANCE, LEVEL=1           }
{                                                                    }
{:This test checks that the component type of a conformant array     }
{:must be the same as the actual type.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F20(output);
type
   t = 1..2;
   nott = 1..2;
var
   x: array [3..4] of t;

procedure p(a: array [l..u: integer] of nott);
   begin
   end;
begin
if false then
   begin
   x[3] := 1; x[4] := 2;
   p(x)
   end;
writeln(' DEVIATES...6.6.3.7.1-11 (LEV1F20)')
end.
