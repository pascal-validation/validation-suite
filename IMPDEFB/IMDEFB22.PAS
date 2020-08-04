{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-4, FILE=IMDEFB22,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that eight-dimensional arrays are permitted.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB22(output);
var
   v: array [0 .. 1] of array [0 .. 1] of array [0 .. 1] of
      array [0 .. 1] of array [0 .. 1] of array [0 .. 1] of
      array [0 .. 1] of array [0 .. 1] of integer;
begin
   v[0][0][0][0][0][0][0][0] := 0;
   v[1, 1, 1, 1, 1, 1, 1, 1] := 1;
   if (v[1][1][1][1][1][1][1][1] <> 1) or
      (v[0, 0, 0, 0, 0, 0, 0, 0] <> 0) then
      writeln(' FAIL...6.5.3.2-4 (IMDEFB22)')
   else
     begin
       writeln(' OUTPUT FROM TEST...6.5.3.2-4');
       writeln(' Arrays of at least 8 dimensions are permitted');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.5.3.2-4',
               ' (IMDEFB22)');
     end
end.
