{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-9, FILE=IMPDEF10, CLASS=IMPLEMENTATIONDEFINED,        }
{ LEVEL=0, NUMBER=10                                                 }
{                                                                    }
{:This program determines the implementation defined default         }
{:field-width for writing integers.                                  }
{                                                                    }
{ Checks all powers of 10 to maxint.                                 }
{                                                                    }
{ Modification History :                                             }
{   V4.1: Rewritten to avoid bug if TotalWidth was too small.        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.7: NUMBER changed to correspond with Annex E of 7185:1990.    }
{                                                                    }

program IMPDEF10(output);
var
   f:text;
   pass, sign: boolean;
   TotalWidth, IntDigits, Maxd, i: integer;
function charstoZ : integer;
   var
      i: integer;  ch: char;
   begin
   i := -1;
   repeat
      read(f, ch);
      i := i + 1;
   until ch = 'Z';
   charstoZ := i
   end;
procedure check (ch: char; number: integer);
   var
      i: integer; rd: char;
   begin
   for i := 1 to number do
     begin
     read(f, rd);
     if (ch <> rd) or eoln(f) or eof(f) then
        pass := false
     end;
   end;

begin
   pass := true;
   rewrite(f);
   i := 1;   Maxd := 1;
   repeat
      writeln(f, i, 'Z', -i, 'ZZ' );
      i := 10 * i;   Maxd := Maxd + 1;
   until i > maxint div 10;
   reset(f);
   TotalWidth := charstoZ;
   reset(f);
   IntDigits := 1;
   repeat
      for sign := false to true do
         begin
         if TotalWidth >= IntDigits + 1 then
            begin
            check( ' ', TotalWidth - IntDigits - 1);
            if sign then
               check( '-', 1)
            else
               check( ' ', 1);
            end
         else if sign then
            check( '-', 1);
         check( '1', 1);
         check( '0', IntDigits - 1);
         check( 'Z', 1);
         end;
      readln(f);
      IntDigits := IntDigits + 1;
   until Maxd = IntDigits;
   if pass then
      begin
      writeln(' OUTPUT FROM TEST...6.9.3.1-9');
      write(' The default output width for integers');
      writeln(' is',TotalWidth:5,' characters');
      writeln(' IMPLEMENTATION DEFINED...6.9.3.1-9 (IMPDEF10)')
      end
   else
      writeln(' FAIL...6.9.3.1-9 (IMPDEF10)')
end.
