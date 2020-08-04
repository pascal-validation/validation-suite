{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-5, FILE=LEV1F14, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that a bound-identifier cannot be used in a       }
{:constant-definition.                                               }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F14(output);
var
   a: array [ 1 .. 2 ] of char;
procedure p( var x: array [ l..u: integer] of char);
   const
      m = l;
   begin
   x[m] := 'a';
   end;
begin
if false then
   p(a);
writeln( ' DEVIATES...6.6.3.7.1-5 (LEV1F14)' )
end.
