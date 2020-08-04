{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-10, FILE=LEV1F19, CLASS=DEVIANCE, LEVEL=1           }
{                                                                    }
{:This test checks that two similar arrays of distinct types cannot  }
{:be passed in the same section.                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F19(output);
var
   x: array [1..2] of boolean;
   y: array [1..2] of boolean;
procedure p(a, b: array [l..u: integer] of boolean);
   begin
   end;
begin
if false then
   begin
   x[1] := true; x[2] := false;
   y[1] := false; y[2] := true;
   p(x, y)
   end;
writeln(' DEVIATES...6.6.3.7.1-10 (LEV1F19)')
end.
