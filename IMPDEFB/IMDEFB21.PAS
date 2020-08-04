{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.2-3, FILE=IMDEFB21,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that array indices can be nested 10 deep.         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB21(output);
var
   ok: boolean;
   i : integer;
   c : array [1 .. 3] of integer;
begin
   for i := 1 to 3 do
      c[i] := i + 1;
   ok := true;
   for i := 1 to 3 do
if c[c[c[c[c[c[c[c[c[c[i]-1]-1]-1]-1]-1]-1]-1]-1]-1]
              <> i + 1 then
         ok := false;
   if ok then
     begin
       writeln(' OUTPUT FROM TEST...6.5.3.2-3');
       writeln(' Array indices can be at least nested 10 deep');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.5.3.2-3',
               ' (IMDEFB21)');
     end
   else
      writeln(' FAIL...6.5.3.2-3 (IMDEFB21)')
end.
