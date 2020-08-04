{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.8-2, FILE=LEV1F44, CLASS=ERRORHANDLING, LEVEL=1,        }
{ NUMBER=60                                                          }
{                                                                    }
{:This program sees if the largest and smallest bounds of an array   }
{:lie within the bounds of the formal conformant array schema.       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{   V5.3: Placed 'ERROR' as the first line executed.                 }
{   V5.4: Added 5.3 comment                                          }
{   V5.7: Error number changed to D.60, as per ISO 7185:1990.        }
{                                                                    }

program LEV1F44(output);

type
   one = 0..1;
   two = 1..2;
var
   x: array [one] of integer;
procedure p(var a: array [l..u: two] of integer);
   begin
   end;

procedure q(var b: array [l..u: integer] of integer);
   begin
   p(b)
   end;
begin
writeln(' ERROR...6.6.3.8-2 (LEV1F44)');
q(x);
writeln(' ERROR NOT DETECTED...6.6.3.8-2 (D.60)')
end.
