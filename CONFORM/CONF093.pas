{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-2, FILE=CONF093, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests the implementation of forward directives,       }
{:recursive activation, and multilevel referencing of a var          }
{:parameter in procedures.                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Output of FAIL added.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF093(output);
var
   c : integer;

procedure one(var a : integer);
   forward;

procedure two(var b : integer);
begin
   b:=b+1;
   one(b)
end;

procedure one;
begin
   a:=a+1;
   if a = 1 then two(a)
end;

begin
   c:=0;
   one(c);
   if c = 3 then
      writeln(' PASS...6.6.1-2 (CONF093)')
  else
     writeln(' FAIL...6.6.1-2 (CONF093)')
end.
