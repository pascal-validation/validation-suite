{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-1, FILE=LEV1F31, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This program checks that a conformant array schema can be nested   }
{:within itself.                                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Was test 6.6.3.7-2.                                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F31(output);
var
   fail: boolean;
   sum: integer;
   a: array[1..2] of array[-2..-1] of integer;
procedure access(var f: array[low1..high1: integer] of
                        array[low2..high2: integer] of integer);
   var
      i, j: integer;
   begin
   if (low1 <> 1) or (high1 <> 2) or
      (low2 <> -2 ) or (high2 <> -1) then
      fail := true;
   sum := 0;
   for i := low1 to high1 do
   for j := low2 to high2 do
     sum := sum + f[i,j]
   end;
begin
   fail := false;
   a[1,-2] := 1;
   a[1,-1] := 2;
   a[2,-2] := 3;
   a[2,-1] := 4;
   access(a);
   if (sum <> 10) or fail then
      writeln(' FAIL...6.6.3.7.3-1 (LEV1F31)')
   else
      writeln(' PASS...6.6.3.7.3-1 (LEV1F31)')
end.
