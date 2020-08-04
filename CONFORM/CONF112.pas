{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.4-1, FILE=CONF112, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that procedures may be passed to other          }
{:procedures and functions as parameters.                            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test modified slightly to add write for FAIL.              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF112(output);
var
   i,counter : integer;
procedure a;
   begin
      counter:=1
   end;
procedure b(procedure e);

   begin
      e
   end;
procedure c;
   begin
      counter:=counter+1
   end;
function d(procedure e) : integer;
   begin
      e;
      d:=counter
   end;

begin
   b(a);

   i:=d(c);
   if i=2 then
      writeln(' PASS...6.6.3.4-1 (CONF112)')
   else
      writeln(' FAIL...6.6.3.4-1 (CONF112)')
end.
