{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.1-6, FILE=DEV114, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:If the processor deviates by permitting the formal parameter list  }
{:to be included in the subsequent procedure declaration of a        }
{:forward procedure (6.6.1-5), does it check the parameter list is   }
{:the same.                                                          }
{                                                                    }
{ The second formal parameter list should be flagged as an error.    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write elaborated. Was previously 6.6.1-5.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV114(output);
var
   c : integer;
procedure one(var a : integer);
   forward;
procedure two(var b : integer);
begin
   b:=b+1;
   one(b)
end;
procedure one(a : integer);
begin
   a:=a+1;
   if a = 1 then two(a)
end;
begin
   c:=0;
   one(c);
   writeln(' DEVIATES...6.6.1-6 (DEV114)')
end.
