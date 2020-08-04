{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-3, FILE=CONF016, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program checks that a apostrophe-image can appear as a char   }
{:constant and as an element of a string.                            }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Program and comment revised to become a more strict test   }
{         for the feature.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF016(output);
const
   quote = '''';
var
   s:packed array[1..5]of char;
begin
   s:='CAN''T';
   if (s[4]=quote)and(s[5]='T') then
      writeln(' PASS...6.1.7-3 (CONF016)')
   else
      writeln(' FAIL...6.1.7-3 (CONF016)')
end.
