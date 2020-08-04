{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-8, FILE=IMDEFB12,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 8 index-types can appear in an array-type.   }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB12(output);
type
   t1 = 0 .. 1;
   t2 = 1 .. 2;
   t3 = 2 .. 3;
   t4 = 3 .. 4;
   t5 = 4 .. 5;
   t6 = 5 .. 6;
   t7 = 6 .. 7;
   t8 = 7 .. 8;
   ta = array[ t1, t2, t3, t4, t5, t6, t7, t8] of integer;
var
   a: ta;
begin
a[0, 1, 2, 3, 4, 5, 6, 7] := 1;
a[1, 2, 3, 4, 5, 6, 7, 8] := a[0, 1, 2, 3, 4, 5, 6, 7] + 1;
if a[1, 2, 3, 4, 5, 6, 7, 8] = 2 then
  begin
    writeln(' OUTPUT FROM TEST...6.4.3.2-8');
    writeln(' At least 8 index-types can appear in an array-type');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.2-8 (IMDEFB12)');
  end
else
   writeln(' FAIL...6.4.3.2-8 (IMDEFB12)')
end.
