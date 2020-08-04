{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-7, FILE=DEV115, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests the processors actions for a procedure declared }
{:as forward, but no matching subsequent procedure declaration for   }
{:the forward procedure occurs.                                      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Semi-colon added before writeln(' DEVIATES Comment         }
{         tidied up. Was previously 6.6.1-6.                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV115(output);
var
   c : integer;
procedure two(var b : integer);
   forward;
procedure one(var a : integer);
begin
   a:=a+1;
   if a = 1 then two(a)
end;
begin
   c:=0;
   one(c);
   writeln(' DEVIATES...6.6.1-7 (DEV115)')
end.
