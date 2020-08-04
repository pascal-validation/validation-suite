{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-1, FILE=LEV1F10, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks assignment of, and of the components of value and }
{:variable conformant arrays.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.3: Filename now included in the output line.                  }
{                                                                    }

program LEV1F10(output);
type
   index = 1 .. 2;
var
   i: index;
   a, b, c, d: array[index] of integer;
procedure p( x, y: array[l1..u1: index] of integer;
         var u, v: array[l2..u2: index] of integer);
   begin
   y[u1] := x[l1];
   x := y;
   v[u2] := u[l2];
   u := v
   end;
begin
   for i := 1 to 2 do
      begin
      a[i] := i;
      b[i] := i + 2;
      c[i] := i + 4;
      d[i] := i + 6
      end;
   p(a, b, c, d);
   if (a[1] <> 1) or (b[2] <> 4) or (c[2] <> 5)
                  or (d[1] <> 7) then
      writeln( ' FAIL...6.6.3.7.1-1 (LEV1F10)' )
   else
      writeln( ' PASS...6.6.3.7.1-1 (LEV1F10)' )
end.
