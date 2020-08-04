{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-6, FILE=LEV1F37, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that an array which is a component of a packed    }
{:type cannot be passed as an actual parameter to a variable         }
{:conformant array.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F37(output);

var
   x: packed record
      i: integer;
      a: array [1..3] of boolean;
      end;
procedure p(var b: array [l..u: integer] of boolean);
   begin
   end;
begin
p(x.a);
writeln(' DEVIATES...6.6.3.7.3-6 (LEV1F37)')
end.
