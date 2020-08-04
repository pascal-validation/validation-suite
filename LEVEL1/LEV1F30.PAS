{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.2-7, FILE=LEV1F30,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=1                      }
{                                                                    }
{:This implementation defined behaviour test checks the storage      }
{:management of value conformant arrays.                             }
{                                                                    }
{ The program assumes that more than 1,000,000 integers cannot be    }
{ stored in memory.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V4.1: Test made more severe. Reclassified as a Quality test.     }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F30(output);
label
   1, 2;
var
   x: array [0..1023] of integer;
   i: integer;
   fail: boolean;
procedure p(a: array [l..u: integer] of integer);
   procedure q;
      begin
      if a[l] <> 0 then
         fail := true;
      goto 1
      end;
   begin
      q
   end;
begin
for i := 0 to 1023 do
   x[i] := i;
fail := false;
i := 1024;
2: p(x);
1: i := i-1;
   if i>0 then
      goto 2;
writeln(' OUTPUT FROM TEST...6.6.3.7.2-7 (LEV1F30)');
writeln(' Storage management of value conformant arrays correct');
if fail then
   writeln(' FAIL...6.6.3.7.2-7 (LEV1F30)')
else
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.6.3.7.2-7 (LEV1F30)')
end.
