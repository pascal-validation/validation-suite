{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-3, FILE=LEV1F26, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that a value array actual-parameter does not have }
{:a file-type as a component type.                                   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F26(output);

var
   a: array [1..2] of text;
procedure rst(x: array [l..u: integer] of text);
   begin
   reset (x[l])
   end;
begin
if false then
   rst(a);
writeln(' DEVIATES...6.6.3.7.2-3 (LEV1F26)')
end.
