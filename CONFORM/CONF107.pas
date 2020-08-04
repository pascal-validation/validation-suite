{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.2-3, FILE=CONF107, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that value parameters are a copy to which         }
{:assignment is permitted.                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }


program CONF107(output);
type
   uarray = array [ boolean ] of 0 .. 9;
   ptr = ^integer;
var
   ai: integer;
   ab: uarray;
   ap: ptr;
   fail: boolean;
procedure p( i: integer; b: uarray; p: ptr );
   begin
   if (i <> 1) or (b[false] <> 2) or (b[true] <> 3)
      or (p^ <> 4) then
      fail := true;

   ai := 5;
   ab[false] := 6; ab[true] := 7;
   ap^ := 8;
   if (i <> 1) or (b[false] <> 2) or (b[true] <> 3)
      or (p^ <> 8) then
      fail := true;
   i := 0;
   b[false] := 8; b[true] := 9;
   new(p);
   p^ := 10;
   end;
begin
fail := false;
ai := 1;
ab[false] := 2; ab[true] := 3;

new(ap);
ap^ := 4;
p(ai, ab, ap);
if (ai <> 5) or (ab[false] <> 6) or (ab[true] <> 7)
   or (ap^ <> 8) then
   fail := true;
if fail then
   writeln(' FAIL...6.6.3.2-3 (CONF107)')
else
   writeln(' PASS...6.6.3.2-3 (CONF107)')
end.
