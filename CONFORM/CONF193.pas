{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9-2, FILE=CONF193, CLASS=CONFORMANCE, LEVEL=0               }
{                                                                    }
{:This program attempts to perform recursive I/O using the same file }
{:for the second I/O action.                                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Program parameter removed and reclassified from QUALITY.   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF193(output);
var
   f:text;
   b,c:integer;

function a(i:integer):integer;
begin
   writeln(f,i);
   a:=i
end;

begin
   rewrite(f);
   writeln(f,a(1));
   reset(f);
   readln(f,b);
   readln(f,c);
   if (b=1) and (c=1) then
      writeln(' PASS...6.9-2 (CONF193)')
   else
      writeln(' FAIL...6.9-2 (CONF193)')
end.
