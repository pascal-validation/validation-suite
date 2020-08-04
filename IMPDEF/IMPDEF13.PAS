{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.5-1, FILE=IMPDEF13, CLASS=IMPLEMENTATIONDEFINED,        }
{ LEVEL=0, NUMBER=15                                                 }
{                                                                    }
{:This test checks that boolean variables are correctly written to   }
{:textfiles, and determines the case of the characters used.         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: revised to indicate case of characters, also renumbered    }
{         from 6.9.3.6-1.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.4: Corrected error on line 76 which was causing               }
{          processor to report lower case values as upper case       }
{          80 now reads                                              }
{          else writeln(' in lower case')                            }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF13(output);
var
   f:text;
   pass:boolean;
   c   :char;
   upper,lower,caseb:packed array[1..11] of char;
   i:integer;
begin
   rewrite(f);
   upper:='TRUE, FALSE';
   lower:='true, false';
   caseb := upper;
   pass:=true;
   write(f,pass,not pass);
   writeln(f);
   reset(f);
   while f^=' ' do
      read(f,c);
   for i:=1 to 4 do
      begin
      read(f,c);
      if c = upper[i] then
         caseb[i] := 'U'
      else if c = lower[i] then
         caseb[i] := 'L'
      else
         pass:=false
      end;
   while f^=' ' do
      read(f,c);
   for i:=7 to 11 do
      begin
      read(f,c);
      if c = upper[i] then
         caseb[i] := 'U'
      else if c = lower[i] then
         caseb[i] := 'L'
      else
         pass:=false
      end;
   if pass then
      begin
      writeln(' OUTPUT FROM TEST...6.9.3.5-1');
      write(' Boolean values are written');
      if lower = upper then
        begin
         write(' in the default case, since only one case');
         writeln(' of characters are implemented');
        end
      else
         begin
          if caseb[2]='U' then writeln(' in upper case') else
           if (caseb[1]='U') and (caseb[2]='L') then
             begin
               write(' with the first character in upper case,');
               writeln(' the rest in lower case');
             end
           else writeln(' in lower case');
         end;
      writeln(' IMPLEMENTATION DEFINED...6.9.3.5-1 (IMPDEF13)')
      end
   else
      writeln(' FAIL...6.9.3.5-1 (IMPDEF13)')
end.
