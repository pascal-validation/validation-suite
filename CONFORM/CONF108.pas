{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-1, FILE=CONF108, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that variable-parameters have been implemented    }
{:correctly.                                                         }
{                                                                    }
{ Jensen and Wirth state that the actual variables corresponding to  }
{ formal variable parameters should be distinct. The axiomatic       }
{ definition also includes non-local variables used by the procedure }
{ in this restriction.                                               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF108(output);
var a, b: integer;
procedure swap(var p, q: integer);
   var temp: integer;
   begin
   temp := p;
   p := q;
   q := temp
   end;

begin
   a := 1;  b := 2;
   swap(a, b);
   swap(a, a);
   if (b <> 1) or (a <> 2) then
     writeln(' FAIL...6.6.3.3-1 (CONF108)')
   else
     writeln(' PASS...6.6.3.3-1 (CONF108)')
end.
