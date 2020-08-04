{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-1, FILE=CONF156, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks the operation of set operators.                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for PASS shortened. Was previously 6.7.2.4-2.        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF156(output);
var
   a,b,c,d:set of 0..10;
   counter:integer;
begin
   counter :=0;
   a:=[0,2,4,6,8,10];
   b:=[1,3,5,7,9];
   c:=[];
   d:=[0,1,2,3,4,5,6,7,8,9,10];
   if (a+b=d) then
      counter:=counter+1;
   if (d-b=a) then
      counter := counter+1;
   if (d*b=b) then
      counter:=counter+1;
   if(d*b-b=c) then
      counter:=counter+1;
   if (a+b+c=d) then
      counter:=counter+1;
   if(counter=5) then
      writeln(' PASS...6.7.2.4-1 (CONF156)')
   else
      writeln(' FAIL...6.7.2.4-1 (CONF156)')
end.
