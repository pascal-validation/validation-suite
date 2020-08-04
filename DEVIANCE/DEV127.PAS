{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.2-1, FILE=DEV127, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:The assignment compatibility rules prohibit a type with a file     }
{:component being used as a value parameter.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed and reset changed to rewrite.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV127(output);
type
   f = record
       x: integer;
       y: text
       end;
var
   v: f;
procedure p( q: f);
   begin
   rewrite( q.y )
   end;
begin
   v.x := 1;
   p(v);
   writeln(' DEVIATES...6.6.3.2-1 (DEV127)')
end.
