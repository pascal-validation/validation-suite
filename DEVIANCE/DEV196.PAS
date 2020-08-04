{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-7, FILE=DEV196, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test illustrates the dangers of permitting a jump into a      }
{:with-statement.                                                    }
{                                                                    }
{ This test illustrates the problems of access to a reference that   }
{ has not been set-up caused by a jump into a with-statement.        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV196(output);
label
   1;
type
   rec = record
         y: integer;
         end;
   ptrec = ^rec;
var
   x: ptrec;
   done: boolean;
begin
   new(x);
   x^.y := 100;
   done := false;
   if done then
      with x^ do
         1:
         begin
         writeln(' DEVIATES...6.8.1-7 (DEV196)', done, y);
         y := y + 1
         end;
   if not done then
      begin
      done := true;
      goto 1
      end
   else
      writeln(' DEVIATES...6.8.1-7 (DEV196)')
end.
