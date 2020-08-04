{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-2, FILE=CONF142, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the function odd.                               }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment corrected, function changed to be identical to     }
{         Standard. Also section added to test near maxint and       }
{         -maxint.                                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF142(output);
var
   i,counter : integer;
function myodd(x:integer):boolean;
   begin
      myodd := (abs(x) mod 2 = 1)
   end;
begin
   counter:=0;
   for i:=-10 to 10 do
      if odd(i) then
      begin
         if myodd(i) then counter := counter+1 
      end 
      else 
      begin 
         if not myodd(i) then counter := counter+1 
      end;
   i := maxint - 10; 
   while i < maxint do 
      begin 
      i := i + 1; 
      if myodd (i) = odd (i) then 
         counter := counter + 1; 
      if myodd (-i) = odd (-i) then
         counter := counter + 1;
      end;
   if counter=41 then
      writeln(' PASS...6.6.6.5-2 (CONF142)')
   else
      writeln(' FAIL...6.6.6.5-2 (CONF142)')
end.
