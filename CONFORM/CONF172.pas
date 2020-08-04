{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.7-1, FILE=CONF172, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a repeat-statement is executed at least      }
{:once.                                                              }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF172(output);
var
   counter:integer;
   bool:boolean;
begin
   bool:=true;
   counter:=0;
   repeat
      counter:=counter+1
   until bool;
   if(counter=1) then
      writeln(' PASS...6.8.3.7-1 (CONF172)')
   else
      writeln(' FAIL...6.8.3.7-1 (CONF172)')
end.
