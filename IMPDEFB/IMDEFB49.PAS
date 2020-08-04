{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.4-2, FILE=IMDEFB49, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that a list of 30 write-parameters can appear in  }
{:a writeln-parameter-list.                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed.                                 }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB49(output);
const
   str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123';
var
   fail: boolean;
   c: char;
   v: packed array [ 1 .. 30] of char;
   i: 1 .. 30;
   tempfile: text;
begin
   fail := false;
   v := str;
   rewrite(tempfile);
   writeln(tempfile, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
                   'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R',
                   'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '0',
                   '1', '2', '3');
   reset(tempfile);
   for i := 1 to 30 do
      begin
      read(tempfile, c);
      if c <> v[i] then
         fail := true
      end;
   if not eoln(tempfile) then
      fail := true;
   if fail then
      writeln(' FAIL...6.9.4-2 (IMDEFB49)')
   else
    begin
      writeln(' OUTPUT FROM TEST...6.9.4-2');
      writeln(' A list of at least 30 write-parameters can',
              ' appear in a writeln-parameter-list');
      writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9.4-2 (IMDEFB49)');
    end
end.
