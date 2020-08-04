{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-2, FILE=LEV1F25, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks that a copy is made of a value array even if this }
{:does not seem to be necessary.                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F25(output);
var
   fail: boolean;
   x: array [1..2] of integer;
procedure p;
   begin
   x[1] := -1
   end;
procedure q (a: array [l..u: integer] of integer);
   begin
   p;
   fail := a[1] <> 0;
   end;
begin
x[1] := 0; x[2] := 1;
q(x);
if fail then
   writeln(' FAIL...6.6.3.7.2-2 (LEV1F25)')
else
   writeln(' PASS...6.6.3.7.2-2 (LEV1F25)')
end.
