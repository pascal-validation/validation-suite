{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.5-4, FILE=CONF091, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a value may be assigned to a buffer-variable }
{:while mode=inspection.                                             }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF091(output);
var
   f : text;
   string : packed array[1..10] of char;
   i : 0..10;
begin
   rewrite(f);
   i := 0;
   writeln(f,'123456789');
   reset(f);
   while not eof(f) do
      begin
      f^ := 'A';
      get(f)
      end;
   reset(f);
   while not eof(f) do
      begin
      i := i + 1;
      string[i] := f^;
      get(f)
      end;
   if string = '123456789 ' then
      writeln(' PASS...6.5.5-4 (CONF091)')
   else
      writeln(' FAIL...6.5.5-4 (CONF091)')
end.
