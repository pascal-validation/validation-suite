{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-4, FILE=LEV1F35, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that the actual parameter corresponding to a      }
{:variable conformant array is not an expression.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F35(output);

var
   x: array[10..11] of integer;
procedure p(var a: array [l..u: integer] of integer);
   begin
   end;
begin
p((x));
writeln(' DEVIATES...6.6.3.7.3-4 (LEV1F35)')
end.
