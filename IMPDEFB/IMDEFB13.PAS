{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-14, FILE=IMDEFB13,                                    }
{ CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, LEVEL=0                      }
{                                                                    }
{:This test checks that 128 case-constant values are permitted in a  }
{:variant record.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message included in output.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB13(output);
type
   t128 = 0 .. 127;
   vrec = record
          case t: t128 of
          0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
          10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
          20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
          30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
          40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
          50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
          60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
          70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
          80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
          90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
          100, 101, 102, 103, 104, 105, 106, 107, 108, 109,
          110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
          120, 121, 122, 123, 124, 125, 126, 127
             :(i: integer)
          end;
var
   v: vrec;
begin
   v.t := 0;
   v.i := 120;
   v.t := 127;
   v.i := -3;
   v.t := 0;
   writeln(' OUTPUT FROM TEST...6.4.3.3-14');
   write(' At least 128 case-constant values are permitted');
   writeln(' in a variant record');
   if v.i = -3 then
     begin
       writeln(' OUTPUT FROM TEST...6.4.3.3-14');
       writeln(' At least 128 case-constant values are permitted',
               ' in a variant record');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.4.3.3-14',
               ' (IMDEFB13)');
     end
   else
      writeln(' FAIL...6.4.3.3-14 (IMDEFB13)')
end.
