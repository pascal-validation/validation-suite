{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.6-5, FILE=DEV140, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that parameter list congruity is correctly        }
{:implemented.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Compatibility changed to congruity in comment.             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV140(output);
type
   natural = 0..maxint;
procedure actual(i:integer; j:integer; n:natural);
begin
   i:=n
end;
procedure p(procedure formal(a:integer;b:integer));
var
   k,l:integer;
begin
   k:=1; l:=2;
   formal(k,l)
end;
begin
   p(actual);
   writeln(' DEVIATES...6.6.3.6-5 (DEV140)')
end.
