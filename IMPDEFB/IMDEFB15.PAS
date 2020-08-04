{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-16, FILE=IMDEFB15,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 30 distinct variants are permitted in a      }
{:record.                                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB15(output);
type
   t30 = 1 .. 30;
   manyvariants = record
                  case t: t30 of
                   1: ( i1: integer);  2: ( i2: integer);
                   3: ( i3: integer);  4: ( i4: integer);
                   5: ( i5: integer);  6: ( i6: integer);
                   7: ( i7: integer);  8: ( i8: integer);
                   9: ( i9: integer); 10: (i10: integer);
                  11: (i11: integer); 12: (i12: integer);
                  13: (i13: integer); 14: (i14: integer);
                  15: (i15: integer); 16: (i16: integer);
                  17: (i17: integer); 18: (i18: integer);
                  19: (i19: integer); 20: (i20: integer);
                  21: (i21: integer); 22: (i22: integer);
                  23: (i23: integer); 24: (i24: integer);
                  25: (i25: integer); 26: (i26: integer);
                  27: (i27: integer); 28: (i28: integer);
                  29: (i29: integer); 30: (i30: integer)
                  end;
var
   v: manyvariants;
begin
  v.t := 1;
  v.i1 := 1;
  v.t := v.t + 29;
  v.i30 := -6;
  if (v.t = 30) and (v.i30 = -6) then
   begin
    writeln(' OUTPUT FROM TEST...6.4.3.3-16');
    writeln(' At least 30 distinct variants are permitted in a record');
    writeln(
     ' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.3-16 (IMDEFB15)');
   end
  else
   writeln(' FAIL...6.4.3.3-16 (IMDEFB15)')
end.
