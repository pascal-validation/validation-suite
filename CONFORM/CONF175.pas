{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.8-1, FILE=CONF175, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a while-statement is not entered if the      }
{:initial value of the Boolean expression is false.                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writes revised.                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF175(output);
var
   bool:boolean;
   counter:integer;
begin
   counter:=0;
   bool:=false;
   while bool do
   begin
      counter:=counter+1;
      bool:=false
   end;
   if (counter=0) then
      writeln(' PASS...6.8.3.8-1 (CONF175)')
   else
      writeln(' FAIL...6.8.3.8-1 (CONF175)')
end.
