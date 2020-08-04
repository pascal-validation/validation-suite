{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-4, FILE=LEV1F27, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that a value array actual-parameter does not      }
{:indirectly have a file component.                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F27(output);

type
   ind=record
       i: integer;
       f: text;
       end;
var
   a: array [1..2] of ind;
procedure rst (x: array [l..u: integer] of ind);
   begin
   reset (x[l].f)
   end;
begin
if false then
   rst(a);
writeln(' DEVIATES...6.6.3.7.2-4 (LEV1F27)')
end.
