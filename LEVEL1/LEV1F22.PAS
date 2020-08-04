{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-13, FILE=LEV1F22, CLASS=DEVIANCE, LEVEL=1           }
{                                                                    }
{:This test contains a procedure with two conformant arrays of the   }
{:same type and attempts to supply two parameters (to the procedure) }
{:whose types are not identical.                                     }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F22(output);
var
   x: array [1..2] of boolean;
   y: array [1..2] of boolean;

procedure p(var a, b: array [l..u: integer] of boolean);
   begin
   a[l] := b[l]
   end;

begin
   y[1] := false;
   p(x, y);
   writeln(' DEVIATES...6.6.3.7.1-13 (LEV1F22)')
end.
