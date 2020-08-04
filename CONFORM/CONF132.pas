{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-15, FILE=CONF132, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test contains calls of pack and unpack in which the           }
{:index-types of the two arrays do not possess the same type.        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }
 
program CONF132(output); 
const 
   ABCD = 'ABCD'; 
type 
   enum = (one,two,three,four); 
   onefour = 1..4; 
var 
   pac1, pac2 : packed array[onefour] of char; 
   unpac      : array[enum] of char; 
begin 
   pac1 := ABCD; 
   unpack(pac1,unpac,one); 
   pack(unpac,one,pac2);
   if pac1 <> pac2 then 
      writeln(' FAIL...6.6.5.4-15 (CONF132)') 
   else 
      writeln(' PASS...6.6.5.4-15 (CONF132)') 
end.
