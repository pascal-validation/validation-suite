{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-14, FILE=LEV1F23, CLASS=CONFORMANCE, LEVEL=1        }
{                                                                    }
{:This test checks that the bound-identifiers can be accessed if the }
{:procedure is declared forward.                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F23(output);
var
   x: array [1..10] of integer;
   y: array [-1..0] of integer;
   fail: boolean;

procedure check(var u: array[low..high:integer] of integer;
                lowbound, highbound: integer);
   forward;

procedure perform;
   begin
   check(x,1,10);
   check(y,-1,0)
   end;

procedure check;
   begin
   if low <> lowbound then
      fail := true;
   if high <> highbound then
      fail := true
   end;
begin
fail := false;
perform;
if fail then
   writeln(' FAIL...6.6.3.7.1-14 (LEV1F23)')
else
   writeln(' PASS...6.6.3.7.1-14 (LEV1F23)')
end.
