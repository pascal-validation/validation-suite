{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-3, FILE=LEV1F12, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks for the equivalence of the long and abbreviated   }
{:form of conformant array schemas.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.3: Filename now included in the output line.                  }
{                                                                    }

program LEV1F12(output);
var
   a: array [ 1 .. 2, 3 .. 4 ] of real;
   i: 1 .. 2;
   j: 3 .. 4;
function sum1( x: array [l1..u1: integer;
                         l2..u2: integer] of real): real;
   var
      s: real;
      i, j: integer;
   begin
   s := 0.0;
   for i := l1 to u1 do
   for j := l2 to u2 do
      s := s + x[i,j];
   sum1 := s
   end;
function sum2( x: array [l1..u1: integer] of array [
                         l2..u2: integer] of real): real;
   var
      s: real;
      i, j: integer;
   begin
   s := 0.0;
   for i := l1 to u1 do
   for j := l2 to u2 do
      s := s + x[i,j];
   sum2 := s
   end;
begin
   for i := 1 to 2 do
   for j := 3 to 4 do
      a[i,j] := 10*i + j;
   if sum1(a) <> sum2(a) then
      writeln( ' FAIL...6.6.3.7.1-3 (LEV1F12)' )
   else
      writeln( ' PASS...6.6.3.7.1-3 (LEV1F12)' )
end.
