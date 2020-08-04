{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.4.1-2, FILE=CONF117, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a predefined function can be redefined.      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment corrected.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF117(output);
var
   x: integer;

function abs(y:integer): integer;
   begin
   abs := 0
   end;

begin
   x := 10;
   if abs(x)=0 then
      writeln(' PASS...6.6.4.1-2 (CONF117)')
   else
      writeln(' FAIL...6.6.4.1-2 (CONF117)')
end.
