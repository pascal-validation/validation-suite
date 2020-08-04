{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-5, FILE=IMDEFB23,                                     }
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

program IMDEFB23(output);
type
   t1 = array [0 .. 1] of integer;
   t2 = array [0 .. 1] of t1;
   t3 = array [0 .. 1] of t2;
   t4 = array [0 .. 1] of t3;
   t5 = array [0 .. 1] of t4;
   t6 = array [0 .. 1] of t5;
   t7 = array [0 .. 1] of t6;
   t8 = array [0 .. 1] of t7;
var
   v: t8;
begin
   v[0][0][0][0][0][0][0][0] := 0;
   v[1, 1, 1, 1, 1, 1, 1, 1] := 1;
   if (v[1][1][1][1][1][1][1][1] <> 1) or
      (v[0, 0, 0, 0, 0, 0, 0, 0] <> 0) then
      writeln(' FAIL...6.5.3.2-5 (IMDEFB23)')
   else
     begin
       writeln(' OUTPUT FROM TEST...6.5.3.2-5');
       writeln(' Arrays of at least 8 dimensions are permitted');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.5.3.2-5',
               ' (IMDEFB23)');
     end
end.
