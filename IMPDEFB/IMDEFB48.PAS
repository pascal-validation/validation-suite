{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3-3, FILE=IMDEFB48, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that a list of 30 write-parameters can appear in  }
{:a write-parameter-list.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V4.2: Shortform message changed and included in output.          }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB48(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ01234';
var
   fail: boolean;
   c: char;
   v: packed array [ 1 .. 31 ] of char;
   i: 1 .. 31;
   tempfile: text;
begin
   fail := false;
   v := str;
   rewrite(tempfile);
   write(tempfile, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                   'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                   'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0',
                   '1', '2', '3');
   writeln(tempfile, '4');
   reset(tempfile);
   for i := 1 to 31 do
      begin
      read(tempfile, c);
      if c <> v[i] then
         fail := true
      end;
   if fail then
      writeln(' FAIL...6.9.3-3 (IMDEFB48)')
   else
     begin
      writeln(' OUTPUT FROM TEST...6.9.3-3');
      writeln(' A list of 30 write-parameters can appear in a',
              ' write-parameter-list');
      writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9.3-3 (IMDEFB48)');
    end
end.
