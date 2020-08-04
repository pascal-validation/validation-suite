{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-10, FILE=CONF106, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks the scope of procedures combined with nesting.    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test. Based on a suggestion from D.Hedley, Liverpool   }
{         Univ.                                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF106(output);
var
   pos: integer;

   tra: packed array[1..27] of char;
   fail: boolean;
procedure trace( name: char);
   begin
   if pos=28 then
      fail := true
   else
      begin
      tra[pos] := name;
      pos := pos + 1
      end
   end;
procedure b(limit: integer);
   begin trace('b') end;
procedure c(limit: integer);

   begin trace('c') end;
procedure d(limit: integer);
   begin trace('d') end;
procedure a(limit: integer);
   procedure b(limit: integer);
      procedure c(limit: integer);
         procedure d(limit: integer);
            begin
            trace('x')
            end;
         begin
         trace('y');
         if limit > 0 then
            begin
            b(limit-1); c(limit-1); d(limit-1)

            end
         end;
      begin
      trace('z');
      if limit > 0 then
         begin
         b(limit-1); c(limit-1); d(limit-1)
         end
      end;
   begin
   if limit > 0 then
      begin
      b(limit-1); c(limit-1); d(limit-1)
      end
   end;

begin
fail := false;
pos := 1;
a(4);
b(4); c(4); d(4);
if fail or (tra <> 'zzzzydyzyxdyzzydyzyxxdcdbcd') then
   writeln(' FAIL...6.6.3.1-10 (CONF106)',tra)
else
   writeln(' PASS...6.6.3.1-10 (CONF106)')
end.
