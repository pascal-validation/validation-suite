{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.1-11, FILE=DEV126, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This program checks that a semicolon separating formal-parameter-  }
{:sections cannot be omitted.                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.3: New test                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV126(output);
var
   first, second: integer;
procedure p(var i: integer var j: integer);
   begin
   i := 2;
   j := 3;
   end;
begin
if false then
   begin
   first := 4;
   second := 5;
   p(first,second);
   end;
writeln(' DEVIATES...6.6.3.1-11 (DEV126)')
end.
