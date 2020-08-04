{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-2, FILE=CONF178, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that extreme values may be used in a              }
{:for-statement.                                                     }
{                                                                    }
{ This will break a simply implemented for loop. In some processors  }
{ the succ test may fail at the last increment and cause             }
{ wraparound(overflow) - leading to an infinite loop.                }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Test extended to include 'maxint downto' and '-maxint      }
{         to'.                                                       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF178(output);
var
   i,j:integer;
begin
   j:=0;
   for i:= (maxint-10) to maxint do
     j:=j+1;
   for i:= (-maxint+10) downto -maxint do
      j:=j+1;
   for i:= maxint downto (maxint-10) do
      j:=j+1;
   for i:= -maxint to (-maxint+10) do
      j:=j+1;
   if j = 44 then
      writeln(' PASS...6.8.3.9-2 (CONF178)')
   else
      writeln(' FAIL...6.8.3.9-2 (CONF178)')
end.
