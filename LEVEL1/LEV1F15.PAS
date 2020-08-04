{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-6, FILE=LEV1F15, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks that the final array dimension of a schema can be }
{:packed and also checks the bound-identifier values.                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V4.2: Arrays 'x' and 'y' initialised.                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F15(output);

type
   pak = packed array[1..2] of char;
var
   fail : boolean;
   x: array [3..4] of pak;
   y: array [5..6] of packed array [7..8] of char;

procedure seta(a: array [l1..u1 : integer] of packed
                  array [l2..u2 : integer] of char;
                  b1, b2, b3, b4: integer);
   var
      i,j : integer;
   begin
   if (b1<>l1) or (b2<>u1) or (b3<>l2) or (b4<>u2) then
      fail := true;
   for i := l1 to u1 do
   for j := l2 to u2 do
      a[i,j] := 'a';
   end;
begin
fail := false;
x[3,1] := 'x'; x[3,2] := 'x';
x[4,1] := 'x'; x[4,2] := 'x';
y[5,7] := 'y'; y[5,8] := 'y';
y[6,7] := 'y'; y[6,8] := 'y';
seta(x, 3, 4, 1, 2);
seta(y, 5, 6, 7, 8);
if fail then
   writeln(' FAIL...6.6.3.7.1-6 (LEV1F15)')
else
   writeln(' PASS...6.6.3.7.1-6 (LEV1F15)')
end.
