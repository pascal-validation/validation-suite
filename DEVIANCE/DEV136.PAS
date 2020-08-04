{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.6-1, FILE=DEV136, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that constants are not permitted as var           }
{:parameters.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV136(output);
const
   x=1;
var
   y:integer;
procedure assign(var p:integer);
begin
   p:=100
end;
begin
   assign(y);
   assign(x);   {disallowed}
   writeln(' DEVIATES...6.6.3.6-1 (DEV136)')
end.
