{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.4-2, FILE=CONF138, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the implementation of chr.                     }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write for FAIL revised.                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF138(output); 
var 
   letter : char; 
   counter : integer; 
begin 
   counter:=0; 

   for letter:='0' to '9' do 
      if chr(ord(letter))=letter then 
         counter:=counter+1;
 
   if counter=10 then 
      writeln(' PASS...6.6.6.4-2 (CONF138)')
   else 
      writeln(' FAIL...6.6.6.4-2 (CONF138)')
end.
