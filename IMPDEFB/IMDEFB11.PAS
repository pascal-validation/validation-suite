{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-7, FILE=IMDEFB11,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that large arrays (at least 1024 elements) can be }
{:declared.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB11(output);
type
   ar = array[0 .. 1023] of integer;
var
   x: record
      ar1, ar2, ar3, ar4, ar5: ar
      end;
begin
x.ar1[0] := 1;  x.ar1[1023] := - 1;
x.ar2[0] := 2;  x.ar2[1023] := - 2;
x.ar3[0] := 3;  x.ar3[1023] := - 3;
x.ar4[0] := 4;  x.ar4[1023] := - 4;
x.ar5[0] := 5;  x.ar5[1023] := - 5;
if (x.ar1[0] + x.ar1[1023] <> 0) or
   (x.ar2[0] + x.ar2[1023] <> 0) or
   (x.ar3[0] + x.ar3[1023] <> 0) or
   (x.ar4[0] + x.ar4[1023] <> 0) or
   (x.ar5[0] + x.ar5[1023] <> 0) then
   writeln(' FAIL...6.4.3.2-7 (IMDEFB11)')
else
  begin
    writeln(' OUTPUT FROM TEST...6.4.3.2-7');
    writeln(' Arrays of at least 1024 elements can be declared');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.2-7 (IMDEFB11)');
  end
end.
