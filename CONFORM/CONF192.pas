{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9-1, FILE=CONF192, CLASS=CONFORMANCE, LEVEL=0               }
{                                                                    }
{:This program attempts to perform recursive I/O using a different   }
{:file for the second I/O action.                                    }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameters removed.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF192(output);
var
   f1,f2:text;
   b,c  :integer;

function a(i:integer):integer;
begin
   writeln(f2,i);
   a:=i
end;

begin
   rewrite(f1);
   rewrite(f2);
   writeln(f1,a(1));
   reset(f1);
   reset(f2);
   readln(f1,b);
   readln(f2,c);
   if (b=1) and (c=1) then
      writeln(' PASS...6.9-1 (CONF192)')
   else
      writeln(' FAIL...6.9-1 (CONF192)')
end.
