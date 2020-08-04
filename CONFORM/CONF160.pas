{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-1, FILE=CONF160, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests the use of relational operators on strings.     }
{                                                                    }
{ The operators denote lexicographic ordering according to the       }
{ ordering of the character set.                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Writes for FAIL revised.                                   }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF160(output);
type
   string=packed array[1..7] of char;
var
   string1,
   string2 : string;
begin
   string1:='STRING1';
   string2:='STRING2';
   if (string1<>string2) and (string1<string2) then
   begin
      string1:='STRINGS';
      string2:='STRINGZ';
      if (string1<>string2) and (string1<string2) then
         writeln(' PASS...6.7.2.5-1 (CONF160)')
      else
         writeln(' FAIL...6.7.2.5-1, STRING COMPARISON(1) (CONF160)')
   end
   else
      writeln(' FAIL...6.7.2.5-1, STRING COMPARISON(2) (CONF160)')
end.
