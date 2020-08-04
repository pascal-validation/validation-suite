{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-15, FILE=IMDEFB14,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 50 record-sections can appear in the fixed   }
{:part of a record.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB14(output);
type longrec = record
                i1: integer;  i2: integer;
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
               i49: integer; i50: integer
               end;
var
   v: longrec;
begin
   v.i1  := 1;         v.i2  := v.i1 + 1;
   v.i3  := v.i2 + 1;  v.i4  := v.i3 + 1;
   v.i5  := v.i4 + 1;  v.i6  := v.i5 + 1;
   v.i7  := v.i6 + 1;  v.i8  := v.i7 + 1;
   v.i9  := v.i8 + 1;  v.i10 := v.i9 + 1;
   v.i11 := v.i10 + 1; v.i12 := v.i11 + 1;
   v.i13 := v.i12 + 1; v.i14 := v.i13 + 1;
   v.i15 := v.i14 + 1; v.i16 := v.i15 + 1;
   v.i17 := v.i16 + 1; v.i18 := v.i17 + 1;
   v.i19 := v.i18 + 1; v.i20 := v.i19 + 1;
   v.i21 := v.i20 + 1; v.i22 := v.i21 + 1;
   v.i23 := v.i22 + 1; v.i24 := v.i23 + 1;
   v.i25 := v.i24 + 1; v.i26 := v.i25 + 1;
   v.i27 := v.i26 + 1; v.i28 := v.i27 + 1;
   v.i29 := v.i28 + 1; v.i30 := v.i29 + 1;
   v.i31 := v.i30 + 1; v.i32 := v.i31 + 1;
   v.i33 := v.i32 + 1; v.i34 := v.i33 + 1;
   v.i35 := v.i34 + 1; v.i36 := v.i35 + 1;
   v.i37 := v.i36 + 1; v.i38 := v.i37 + 1;
   v.i39 := v.i38 + 1; v.i40 := v.i39 + 1;
   v.i41 := v.i40 + 1; v.i42 := v.i41 + 1;
   v.i43 := v.i42 + 1; v.i44 := v.i43 + 1;
   v.i45 := v.i44 + 1; v.i46 := v.i45 + 1;
   v.i47 := v.i46 + 1; v.i48 := v.i47 + 1;
   v.i49 := v.i48 + 1; v.i50 := v.i49 + 1;
   if v.i50 = 50 then
     begin
       writeln(' OUTPUT FROM TEST...6.4.3.3-15');
       writeln(' At least 50 record-sections can appear in',
               ' the fixed part of a record');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.3-15',
               ' (IMDEFB14)');
     end
   else
      writeln(' FAIL...6.4.3.3-15 (IMDEFB14)')
end.
