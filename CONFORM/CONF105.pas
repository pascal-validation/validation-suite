{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-9, FILE=CONF105, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the scope of parameter identifiers is        }
{:separate from that of the function result.                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.2: New test, suggested by Atholl Hay, UMIST.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF105(output);
type
   t = 0..10;
var
   i: integer;
function f( t: integer): t;
   begin
   f := t
   end;

begin
i := f(0);
if (i <> 0) or (f(10) <> 10) then
   writeln(' FAIL...6.6.3.1-9 (CONF105)')
else
   writeln(' PASS...6.6.3.1-9 (CONF105)')
end.
