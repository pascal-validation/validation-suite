{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-1, FILE=CONF131, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that pack and unpack are implemented in this    }
{:processor.                                                         }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Deleted 'as' in comment. Test of pack result added, and    }
{         write for FAIL elaborated.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF131(output); 
type
   colourtype = (red,pink,orange,yellow,green,blue); 
var 
   unone    : array[3..24] of char; 
   pacone   : packed array[1..4] of char; 
   untwo    : array[4..8] of colourtype; 
   pactwo   : packed array[6..7] of colourtype; 
   i        : integer; 
   colour   : colourtype; 
begin 
   pacone:='ABCD'; 
   unpack(pacone,unone,5); 
   colour:=red; 
   for i:=4 to 8 do 
   begin 
      untwo[i]:=colour; 
      colour:=succ(colour) 
   end; 
   pack(untwo,5,pactwo); 
   if (unone[5]='A') and (pactwo[7]=orange) then 
      writeln(' PASS...6.6.5.4-1 (CONF131)') 
   else
      writeln(' FAIL...6.6.5.4-1 (CONF131)') 
end.
