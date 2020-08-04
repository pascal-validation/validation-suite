{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-4, FILE=LEV1F46, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:This test checks that the component type of the actual and formal  }
{:arrays must be conformable.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F46(output);

type
   int = - maxint .. maxint;
var
   x: array [1..2, 3..4] of int;
procedure p (var a: array [l1..u1: integer;
                           l2..u2: integer] of integer);
   begin
   end;
begin
p(x);
writeln(' DEVIATES...6.6.3.8-4 (LEV1F46)')
end.
