{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-14, FILE=DEV096, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This program checks that integer and real var parameters are       }
{:distinct.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Write changed.                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV096(output);
var i: integer; x: real;
procedure p( var y: real; var j: integer );
   begin
   y := 1.5;  j := 2
   end;
begin
i := 3; x := 4.5;
p( i, x);
writeln(' THE VALUE OF I IS ', i);
writeln(' THE VALUE OF X IS ', x);
writeln(' DEVIATES...6.4.5-14 (DEV096)')
end.
