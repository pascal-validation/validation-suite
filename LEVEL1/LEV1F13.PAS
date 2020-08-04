{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-4, FILE=LEV1F13, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that an assignment to a bound-identifier is not   }
{:permitted.                                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F13(output);
var
   a: array [ 1 .. 2 ] of integer;
procedure p( x: array [ l..u: integer] of integer);
   begin
   l := 1;
   end;
begin
if false then
   begin
   a[1] := 1; a[2] := 2;
   p(a);
   end;
writeln( ' DEVIATES...6.6.3.7.1-4 (LEV1F13)' )
end.
