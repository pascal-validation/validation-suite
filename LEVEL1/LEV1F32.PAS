{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-2, FILE=LEV1F32, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks that variable conformant array parameters are     }
{:handled correctly.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Was test 6.6.3.7-1.                                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F32(output);
var
   p,p1,p2 : array[1..2] of integer;
   q       : array[0..3] of integer;
function sum(var a : array[low..high : integer] of integer) : integer;
   var
      i,s : integer;
   begin
   s := 0;
   for i := low to high do
      s := s + a[i];
   sum := s
   end;
procedure addvectors(var a,b,c:array[low..high : integer] of integer);
   var
      i : integer;
   begin
   for i := low to high do
      a[i] := b[i] + c[i]
   end;
begin
   p1[1] := -2;
   p1[2] := 1;
   p2[1] := 4;
   p2[2] := 3;
   addvectors(p,p1,p2);
   q[0] := 6;
   q[1] := 12;
   q[2] := 11;
   q[3] := 9;
   if (sum(p) = 6) and (sum(q) = 38) then
      writeln(' PASS...6.6.3.7.3-2 (LEV1F32)')
   else
      writeln(' FAIL...6.6.3.7.3-2 (LEV1F32)')
end.
