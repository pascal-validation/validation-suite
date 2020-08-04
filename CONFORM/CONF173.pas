{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.7-2, FILE=CONF173, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a repeat-statement containing no statements  }
{:is executed until the expression is true.                          }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF173(output);
var
  a:integer;

function bool : boolean;
begin
   a:=a+1;
   bool := a>=5
end;

begin
   a:=0;
   repeat
   until bool;
   if (a=5) then
      writeln(' PASS...6.8.3.7-2 (CONF173)')
   else
      writeln(' FAIL...6.8.3.7-2 (CONF173)')
end.
