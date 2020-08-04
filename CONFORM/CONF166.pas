{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.1-8, FILE=CONF166, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a label in a recursive procedure can be the  }
{:destination of a goto-statement.                                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF166(output);

var
   sum : integer;
procedure p;
label
   111;
var
   s: integer;
   procedure r;
   var
      s: integer;
      begin
      s := sum;
      p;
      sum := sum + s
      end;
   procedure q;
      begin
      if sum < 10 then
         r
      else
         goto 111
      end;
   begin
   sum := sum + 1;
   if sum < 5 then
      p;
   s := sum;
   q;
   sum := sum + 100;
   111: sum := sum + s
   end;
begin
   sum := 0;
   p;
   if sum = 9440 then
      writeln(' PASS...6.8.1-8 (CONF166)')
   else
      writeln(' FAIL...6.8.1-8 (CONF166)')
end.
