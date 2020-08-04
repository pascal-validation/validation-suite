{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.3-1, FILE=CONF136, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the implementation of the transfer functions   }
{:trunc and round.                                                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Output of FAIL added.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF136(output); 
var 
   i, 
   truncstatus, 
   roundstatus : integer; 
   j : real;
begin
   truncstatus:=0; 
   roundstatus:=0; 
   if (trunc(3.7)=3) and (trunc(-3.7)=-3) then 
      truncstatus:=truncstatus+1 
   else 
      writeln(' FAIL...6.6.6.3-1, TRUNC FUNCTION (CONF136)'); 
 
   if (round(3.7)=4) and (round(-3.7)=-4) then 
      roundstatus:=roundstatus+1 
   else
      writeln(' FAIL...6.6.6.3-1, ROUND FUNCTION (CONF136)'); 
 
   j:=0; 
   for i:=-333 to 333 do 
   begin 
      j:=i div 100; 
      if j<0 then 
         if (trunc(j-0.5)=round(j)) then 
            begin 
               truncstatus:=truncstatus+1;
               roundstatus:=roundstatus+1
            end
         else
            writeln(' FAIL...6.6.6.3-1 (CONF136),',
                    ' TRUNC/ROUND FUNCTIONS(1)')
      else
         if (trunc(j+0.5)=round(j)) then
            begin
               truncstatus:=truncstatus+1;
               roundstatus:=roundstatus+1
            end
         else
            writeln(' FAIL...6.6.6.3-1 (CONF136),',
                    ' TRUNC/ROUND FUNCTIONS(2)')
   end;

   if (truncstatus=668) and (roundstatus=668) then
      writeln(' PASS...6.6.6.3-1 (CONF136)')
  else
      writeln(' FAIL...6.6.6.3-1 (CONF136)')
end.
