{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-4, FILE=CONF082, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that string types with the same number of         }
{:components are compatible.                                         }
{                                                                    }
{ Was previously 6.4.5-8.                                            }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Writes changed.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF082(output);
var
   string1 : packed array[1..4] of char;
   string2 : packed array[1..4] of char;
begin
   string1:='ABCD';
   string2:='EFGH';
   if 'ABC' = 'ABC' then
      if string1 <> string2 then
         writeln(' PASS...6.4.5-4 (CONF082)')
      else
         writeln(' FAIL...6.4.5-4, STRINGS(1) (CONF082)')
   else
      writeln(' FAIL...6.4.5-4, STRINGS(2) (CONF082)')
end.
