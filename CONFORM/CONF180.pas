{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-4, FILE=CONF180, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the order of evaluation of the limit           }
{:expressions in a for-statement.                                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writes revised. Was previously 6.8.3.9-15.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF180(output);
var
   i,j,k:integer;

function f(var k:integer) : integer;
begin
   k:=k+1;
   f:=k
end;

begin
   k:=0;
   j:=0;
   for i:=f(k) to f(k)+10 do
      j:=j+1;
   if (j=12) then
      writeln(' PASS...6.8.3.9-4 (CONF180)')
   else
      writeln(' FAIL...6.8.3.9-4 (CONF180)')
end.
