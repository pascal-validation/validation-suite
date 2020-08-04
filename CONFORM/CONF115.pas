{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.5-1, FILE=CONF115, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that functions may be passed to procedures and  }
{:functions as parameters.                                           }
{                                                                    }
{ Similar to 6.6.3.4-1.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test modified slightly to add write for FAIL.              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF115(output);
var
   i,counter : integer;
function a : integer;
   begin
      a:=1
   end;
procedure b(function e : integer);
   begin
      counter:=e
   end;
function d(function e : integer) : integer;
   begin
      d:=counter+e
   end;

begin
   b(a);
   i:=d(a);
   if i=2 then
      writeln(' PASS...6.6.3.5-1 (CONF115)')
   else
      writeln(' FAIL...6.6.3.5-1 (CONF115)')
end.
