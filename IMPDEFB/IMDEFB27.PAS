{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-12, FILE=IMDEFB27,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that the procedure dispose is implemented and is  }
{:not merely a dummy, or that the store is large enough not to need  }
{:dispose.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.4: Truncated line 44 to 72 characters which is max line       }
{         length that can be assumed                                 }
{                                                                    }

program IMDEFB27(output);
type rec = record
           a: array [0 .. 1023] of integer
           end;
     ptr = ^ rec;
var
   x: ptr;
   sum, i: integer;
begin
sum := 0;
for i:= 1 to 1023 do
   begin
   new(x);
   x^.a[0] := 1;
   sum := sum + x^.a[0];
   dispose(x)
   end;
if sum <> 1023 then
   writeln(' FAIL...6.6.5.3-12 (IMDEFB27)')
else
  begin
    writeln(' OUTPUT FROM TEST...6.6.5.3-12');
    writeln(' The procedure dispose is implemented, or the storage is',
            ' large enough not to need dispose');
   writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.6.5.3-12 (IMDEFB27)');
  end
end.
