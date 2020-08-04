{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-5, FILE=LEV1F28, CLASS=CONFORMANCE, LEVEL=1         }
{                                                                    }
{:This test checks that the two permitted contexts of the use of a   }
{:value conformant array parameter as an actual parameter is         }
{:permitted.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F28(output);

var
   fail: boolean;
   x: array [boolean] of real;
function f( var a: array [l..u: boolean] of real): boolean;
   begin
   f := a[l] = 1.0
   end;

procedure q(b: boolean);
   begin
   fail := not b;
   end;

procedure r(y: real);
   begin
   end;

procedure p(c: array [l..u: boolean] of real);
   begin
   q(f(c));
   r(c[l])
   end;
begin
x[true] := 2.0;
x[false] := 1.0;
p(x);
if fail then
   writeln(' FAIL...6.6.3.7.2-5 (LEV1F28)')
else
   writeln(' PASS...6.6.3.7.2-5 (LEV1F28)')
end.
