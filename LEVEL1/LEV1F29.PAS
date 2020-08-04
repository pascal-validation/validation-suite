{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-6, FILE=LEV1F29, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that a value conformant array cannot be passed on }
{:as an actual parameter to another value conformant array.          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F29(output);

var
   i: integer;
   x: array [boolean] of char;
function fact (c: array [l..u: boolean] of char; n: integer):integer;
   begin
   if n=1 then
      fact := 1
   else
      fact := n * fact (c, n-1)
   end;
begin
x[false] := 'a'; x[true] := 'b';
i := fact(x, 5);
writeln(' DEVIATES...6.6.3.7.2-6 (LEV1F29)')
end.
