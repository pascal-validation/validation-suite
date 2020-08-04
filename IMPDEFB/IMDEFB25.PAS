{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-6, FILE=IMDEFB25,                                     }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 50 formal parameter sections can appear in   }
{:one parameter list.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Parameter section extended from 30 to 50.                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB25(output);
var
   sum: integer;

procedure p(  i1: integer;  i2: integer;
              i3: integer;  i4: integer;
              i5: integer;  i6: integer;
              i7: integer;  i8: integer;
              i9: integer; i10: integer;
             i11: integer; i12: integer;
             i13: integer; i14: integer;
             i15: integer; i16: integer;
             i17: integer; i18: integer;
             i19: integer; i20: integer;
             i21: integer; i22: integer;
             i23: integer; i24: integer;
             i25: integer; i26: integer;
             i27: integer; i28: integer;
             i29: integer; i30: integer;
             i31: integer; i32: integer;
             i33: integer; i34: integer;
             i35: integer; i36: integer;
             i37: integer; i38: integer;
             i39: integer; i40: integer;
             i41: integer; i42: integer;
             i43: integer; i44: integer;
             i45: integer; i46: integer;
             i47: integer; i48: integer;
             i49: integer; i50: integer);
   begin
   sum := i1 + i2 + i3 + i4 + i5 + i6 + i7 + i8 + i9 + i10;
   sum := sum
       + i11 + i12 + i13 + i14 + i15 + i16 + i17 + i18 + i19 + i20;
   sum := sum
       + i21 + i22 + i23 + i24 + i25 + i26 + i27 + i28 + i29 + i30;
   sum := sum
       + i31 + i32 + i33 + i34 + i35 + i36 + i37 + i38 + i39 + i40;
   sum := sum
       + i41 + i42 + i43 + i44 + i45 + i46 + i47 + i48 + i49 + i50;
   end;
begin
sum := 0;
p(1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
  11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
  21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
  31, 32, 33, 34, 35, 36, 37, 38, 39, 40,
  41, 42, 43, 44, 45, 46, 47, 48, 49, -1200);
if sum = 25 then
  begin
    writeln(' OUTPUT FROM TEST...6.6.3.1-6');
    writeln(' At least 50 formal parameter sections can appear in',
            ' one parameter line');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.6.3.1-6 (IMDEFB25)')
  end
else
   writeln(' FAIL...6.6.3.1-6 (IMDEFB25)')
end.
