{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.3.8-2, FILE=LEV1F43, CLASS=ERRORHANDLING, LEVEL=1,     }
{ NUMBER=59                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F43(output);

type
   one = 0..1;
   two = 0..1;
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
q(x);
writeln(' PRETEST...6.6.3.8-2 (LEV1F43)');
end.
