{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.4.1-3, FILE=CONF202, CLASS=CONFORMANCE, LEVEL=0         }
{                                                                    }
{:This test checks that the literal constant 0.0 is correctly        }
{:written to a textfile (its exact representation can be derived     }
{:directly from the Standard).                                       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF202(output);
var
   f : text;
   i, j, ExpDigits, ActWidth : integer;
   fail : boolean;

procedure Determine(var ExpDigits:integer);
var
   f : text;
begin
   rewrite(f);
   writeln(f,0.0:6);
   reset(f);
   while f^ <> '+'  do
      get(f);
   ExpDigits := 0;
   get(f);
   while not eoln(f) do
      begin
      ExpDigits := ExpDigits + 1;
      get(f)
      end;
end;

begin
   fail := false;
   determine(ExpDigits);
   rewrite(f);
   for i := 6 to 20 do
      writeln(f, 0.0:i, 1.0:i);
   reset(f);
   for i := 6 to 20 do
      begin
      if i < ExpDigits + 6 then
         ActWidth := ExpDigits + 6
      else
         ActWidth := i;
      for j := 1 to 2*ActWidth do
         get(f);
      if not eoln(f) then
         fail := true;
      readln(f)
      end;
   if fail then
      writeln(' FAIL...6.9.3.4.1-3 (CONF202)')
   else
      writeln(' PASS...6.9.3.4.1-3 (CONF202)')
end.
