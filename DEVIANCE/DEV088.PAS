{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.4-3, FILE=DEV088, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:Pointers to items in the stack are not allowed. The ^ symbol is    }
{:not permitted to act as an operator giving the reference to a      }
{:variable.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV088(output);
var
   p: ^integer;
   x:integer;
begin
   x:=10;
   p:=^x;
   writeln(' DEVIATES...6.4.4-3 (DEV088)')
end.
