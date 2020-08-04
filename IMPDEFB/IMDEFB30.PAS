{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-5, FILE=IMDEFB30, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that at least 3 nested integer expressions        }
{:requiring temporary working store is permitted.                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB30(output);
var i, j, k : integer;
begin
i := 2;
j := 3;
k := 5;
i := (((i + j) - (k + 3)) * ((k - j) + (i - 10))) +
   (((i + j) mod(2 * k)) div((k + i) + (-3 * j)));
if i = 16 then
 begin
  writeln(' OUTPUT FROM TEST...6.7.1-5');
  writeln(' At least 4 nested integer expressions, requiring temporary',
          ' working store, are permitted');
  writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.7.1-5 (IMDEFB30)');
 end
else
 writeln(' FAIL...6.7.1-5 (IMDEFB30)')
end.
