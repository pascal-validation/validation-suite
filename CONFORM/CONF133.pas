{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-1, FILE=CONF133, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the implementation of the arithmetic function   }
{:abs. Both real and integer expressions are used.                   }
{                                                                    }
{ Note: There is also a QUALITY test of the abs function carried out }
{ as part of test 6.7.2.2-15.                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Superfluous const pi removed. Write for FAIL revised.      }
{         Comment expanded.                                          }
{   V4.3: Values 10.3 and 0.9 replaced with 10.25 and 0.875          }
{         respectively.                                              }
{   V5.0: Test for counter=44 changed to counter=45.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF133(output);
var
   i, counter : integer;
   r : real;
function myabs1(i : integer):integer;
   begin
      if i<0 then
         myabs1:=-i
      else
         myabs1:=i
   end;
function myabs2(r:real):real;
   begin
      if r<0 then
         myabs2:=-r
      else
         myabs2:=r
   end;
begin
   counter:=0;
   for i:=-10 to 10 do
   begin
      if abs(i)=myabs1(i) then
         counter:=counter+1
   end;

   r:=-10.25;
   while r<10.25 do
   begin
      if abs(r)=myabs2(r) then
         counter:=counter+1;
      r:=r+0.875
   end;

   if counter=45 then
      writeln(' PASS...6.6.6.2-1 (CONF133)') 
   else 
      writeln(' FAIL...6.6.6.2-1 (CONF133)') 
end.
