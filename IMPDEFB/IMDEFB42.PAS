{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9-3, FILE=IMDEFB42, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR,   }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks that a line of length 255 can be written to a     }
{:textfile.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V4.2: Short-form message changed and included in output.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB42(output);
var
   i  : integer;
   f : text;
   ch : char;
   ok : boolean;
begin
   ok := true;
   rewrite(f);
   ch := '0';
   for i := 1 to 255 do
      begin
      if ch = '9' then ch := '0' else ch := succ(ch);
      write(f,ch)
      end;
   writeln(f);
   reset(f);
   ch := '0';
   for i := 1 to 255 do
      begin
      if ch = '9' then ch := '0' else ch := succ(ch);
      ok := ok and (f^ = ch);
      get(f)
      end;
   if ok then
     begin
       writeln(' OUTPUT FROM TEST...6.9-3');
       writeln(' Lines of at least 255 characters can be written',
               ' to textfiles');
       writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.9-3 (IMDEFB42)');
     end
   else
      writeln(' FAIL...6.9-3 (IMDEFB42)')
end.
