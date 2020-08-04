{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-2, FILE=CONF023, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that repeated declarations are possible in the }
{:declaration-parts.                                                 }
{                                                                    }
{ Practically all occurrences will re-appear elsewhere in the        }
{ validation suite.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Output of FAIL added.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF023(output);
label
   1,2,3;
const
   one=1;
   two=2;
   three=3;
type
   small = 1..3;
   larger = 1..10;
   biggest = 1..100;
var
   tiny : small;
   soso : larger;
   big : biggest;
procedure p(var x : small);
begin
   x:=1
end;
procedure q(var y : larger);
begin
   y:=2
end;
procedure r(var z : biggest);
begin
   z:=3
end;
begin
   p(tiny); goto 2;
1: r(big); goto 3;
2: q(soso); goto 1;
3: if (tiny=one) and (soso=two) and (big=three) then
      writeln(' PASS...6.2.1-2 (CONF023)')
   else
      writeln(' FAIL...6.2.1-2 (CONF023)')
end.
