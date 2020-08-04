{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-5, FILE=LEV1F47, CLASS=DEVIANCE, LEVEL=1              }
{                                                                    }
{:This test checks that packing is preserved in the conformant array }
{:schema.                                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F47(output);

var
   x: packed array [1..3] of real;
procedure p(var a: array [l..u: integer] of real);
   begin
   end;
begin
p(x);
writeln(' DEVIATES...6.6.3.8-5 (LEV1F47)')
end.
