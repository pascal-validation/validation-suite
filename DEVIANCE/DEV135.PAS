{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.5-2, FILE=DEV135, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks functional compatibility in that function-types   }
{:are required to be identical.                                      }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV135(output);
type
   natural=0..maxint;
var
   k:integer;
function actual(i:natural):natural;
begin
   actual:=i
end;
procedure p(function formal(i:natural):integer);
begin
   k:=formal(10)
end;
begin
   p(actual);
   writeln(' DEVIATES...6.6.3.5-2 (DEV135)')
end.
