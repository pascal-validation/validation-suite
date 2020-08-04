{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-7, FILE=LEV1F38, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that a variable formal conformant array cannot be }
{:passed as an actual to a value conformant array.                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F38(output);

var
   x: array [boolean] of char;
procedure q(b: array [l..u: boolean] of char);
   begin
   end;

procedure p(var a: array [l..u: boolean] of char);
   begin
   q(a)
   end;
begin
if false then
   begin
   x[false] := 'a';
   x[true] := 'b';
   p(x)
   end;
writeln(' DEVIATES...6.6.3.7.3-7 (LEV1F38)')
end.
