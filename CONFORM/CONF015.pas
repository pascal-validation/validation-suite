{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-2, FILE=CONF015, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests if strings are permitted up to a length of 68   }
{:characters.                                                        }
{                                                                    }
{ The Pascal Standard does not place an upper limit on the length of }
{ strings.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Check on value added. Writes revised.                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF015(output);
type
   string1 = packed array[1..68] of char;
   string2 = packed array[1..33] of char;
var
   alpha : string1;
   i     : string2;
begin
   alpha:=
'ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOP'
 ;
   i:='IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII';
   if (alpha[9] = i[32]) then
      writeln(' PASS...6.1.7-2 (CONF015)')
   else
      writeln(' FAIL...6.1.7-2 (CONF015)')
end.
