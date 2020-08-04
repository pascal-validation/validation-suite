{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-2, FILE=CONF134, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the implementation of the arithmetic function   }
{:sqr. Both real and integer expressions are used.                   }
{                                                                    }
{ Note: There is also a QUALITY test of the sqr function carried out }
{ as part of test 6.7.2.2-15.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Altered to allow 4 digit accuracy. Write for FAIL          }
{         revised. Comment expanded.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF134(output); 
var 
   i,counter : integer; 
   variable : real; 
begin 
   counter := 0; 
   for i:= -10 to 10 do 
   begin 
      if sqr(i) = i*i then 
         counter := counter + 1 
   end; 
   variable := -10.3; 
   while (variable < 10.3) do 
   begin 
      if (abs(sqr(variable) - variable * variable) < 0.001) then 
         counter := counter+1; 
      variable := variable + 0.9 
   end; 
   if (counter = 44) then
      writeln(' PASS...6.6.6.2-2 (CONF134)') 
   else 
      writeln(' FAIL...6.6.6.2-2 (CONF134)') 
end.
