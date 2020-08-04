{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-2, FILE=CONF095, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests that forward declaration and recursion in       }
{:functions is permitted.                                            }
{                                                                    }
{ Similar to 6.6.1-2.                                                }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF095(output);
var
   c : integer;
function one(a : integer) : integer;
   forward;

function two(b : integer) : integer;
var
   x : integer;
begin
   x:=b+1;
   x:=one(x);
   two:=x
end;

function one;
var
   y : integer;
begin
   y:=a+1;
   if y=1 then y:=two(y);
   one:=y
end;

begin
   c:=0;
   c:=one(c);
   if c = 3 then
      writeln(' PASS...6.6.2-2 (CONF095)')
   else
      writeln(' FAIL...6.6.2-2 (CONF095)')
end.
