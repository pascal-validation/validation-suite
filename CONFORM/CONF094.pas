{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-1, FILE=CONF094, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests the syntax for functions.                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check added. Write for FAIL elaborated.              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF094(output);
var
   a ,
   twopisquared : real;
   b : integer;

function power(x : real; y : integer):real;  { y>=0 }
var
   w,z : real;
   i : 0..maxint;
begin
   w:=x;
   z:=1;
   i:=y;
   while i > 0 do
   begin
      { z*(w tothepower i)=x tothepower y }
      if odd(i) then z:=z*w;
      i:=i div 2;
      w:=sqr(w)
   end;
   { z=x tothepower y }
   power:=z
end;

function twopi : real;
begin
   twopi:=6.283185
end;

begin
   a:=twopi;
   b:=2;
   twopisquared:=power(a,b);
   if (twopisquared > 39.40) and (twopisquared < 39.50)
   then
      writeln(' PASS...6.6.2-1 (CONF094)')
   else
      writeln(' FAIL...6.6.2-1 (CONF094)')
end.
