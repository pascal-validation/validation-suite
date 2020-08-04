{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.2-2, FILE=IMDEFB46, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that a list of 30 variable-accesses can appear in }
{:a readln-parameter-list.                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB46(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123';
var
    c00, c01, c02, c03, c04, c05, c06, c07, c08, c09,
    c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
    c20, c21, c22, c23, c24, c25, c26, c27, c28, c29,
    c30  : char;
   tempfile: text;
begin
   rewrite(tempfile);
   write(tempfile, str);
   writeln(tempfile, 'X');
   writeln(tempfile, '4');
   reset(tempfile);
   readln(tempfile,
       c00, c01, c02, c03, c04, c05, c06, c07, c08, c09,
       c10, c11, c12, c13, c14, c15, c16, c17, c18, c19,
       c20, c21, c22, c23, c24, c25, c26, c27, c28, c29);
   read(tempfile, c30);
   if (c00 <> 'A') or (c01 <> 'B') or (c02 <> 'C') or
      (c03 <> 'D') or (c04 <> 'E') or (c05 <> 'F') or
      (c06 <> 'G') or (c07 <> 'H') or (c08 <> 'I') or
      (c09 <> 'J') or (c10 <> 'K') or (c11 <> 'L') or
      (c12 <> 'M') or (c13 <> 'N') or (c14 <> 'O') or
      (c15 <> 'P') or (c16 <> 'Q') or (c17 <> 'R') or
      (c18 <> 'S') or (c19 <> 'T') or (c20 <> 'U') or
      (c21 <> 'V') or (c22 <> 'W') or (c23 <> 'X') or
      (c24 <> 'Y') or (c25 <> 'Z') or (c26 <> '0') or
      (c27 <> '1') or (c28 <> '2') or (c29 <> '3')
      or (c30 <> '4') then
      writeln(' FAIL...6.9.2-2 (IMDEFB46)')
 else
   begin
     writeln(' OUTPUT FROM TEST...6.9.2-2');
     writeln(' A list of at least 30 variable-accesses can appear',
             ' in a readln-parameter-list');
     writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9.2-2 (IMDEFB46)');
   end
end.
