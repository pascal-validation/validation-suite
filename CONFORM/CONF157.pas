{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-2, FILE=CONF157, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the operations of set operators on sets of     }
{:constants and variables.                                           }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Write for PASS shortened. Was previously 6.7.2.4-3.        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF157(output);
var
   a,b,c:set of 0..10;
   counter:integer;
begin
   counter:=0;
   a:=[0,2,4,6,8,10];
   b:=[1,3,5,7,9];
   c:=[0,1,2,3,4,5,6,7,8,9,10];
   if(a+[]=a) then
      counter:=counter+1;
   if(a+b=c) then
      counter:=counter+1;
   if(a+[1,3,5,7,9]=c) then
      counter:=counter+1;
   if(a-[]=a) then
      counter:=counter+1;
   if(c-a=b) then
      counter:=counter+1;
   if(c-[0,2,4,6,8,10]=b) then
      counter:=counter+1;
   if(a*a=a) then
      counter:=counter+1;
   if(a*[]=[]) then
      counter:=counter+1;
   if(a*b=[]) then
      counter:=counter+1;
   if(a*c=a) then
      counter:=counter+1;
   if(counter=10) then
      writeln(' PASS...6.7.2.4-2 (CONF157)')
   else
      writeln(' FAIL...6.7.2.4-2, (CONF157)')
end.
