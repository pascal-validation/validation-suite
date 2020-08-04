{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.8-2, FILE=CONF176, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the processor will accept a while-statement  }
{:containing no statements.                                          }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF176(output);
var
   a:integer;

function bool:boolean;
begin
   a:=a+1;
   bool:= (a>=5)
end;

begin
   a:=0;
   while not bool do ;
   if (a=5) then
      writeln(' PASS...6.8.3.8-2 (CONF176)')
   else
      writeln(' FAIL...6.8.3.8-2 (CONF176)')
end.
