{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-5, FILE=DEV113, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests if the processor allows the formal parameter    }
{:list to be included in the subsequent procedure declaration of a   }
{:forward procedure.                                                 }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write elaborated. Was previously 6.6.1-4.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV113(output);
var
   c : integer;
procedure one(var a : integer);
   forward;
procedure two(var b : integer);
begin
   b:=b+1;
   one(b)
end;
procedure one(var a : integer);
begin
   a:=a+1;
   if a = 1 then two(a)
end;
begin
   c:=0;
   one(c);
   writeln(' DEVIATES...6.6.1-5 (DEV113)')
end.
