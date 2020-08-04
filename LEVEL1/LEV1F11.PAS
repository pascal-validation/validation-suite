{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-2, FILE=LEV1F11, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that explicit bounds to a conformant array cannot }
{:be given in the call.                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F11(output);
var
   a: array [ 1 .. 2 ] of integer;
procedure p( var x: array [ l..u : integer] of integer);
   begin
   x[l] := 3;
   x[u] := 4;
   end;
begin
if false then
   p(a, 1, 2);
writeln( ' DEVIATES...6.6.3.7.1-2 (LEV1F11)' )
end.
