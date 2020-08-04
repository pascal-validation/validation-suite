{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-2, FILE=CONF052, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that an index-type may be an ordinal-type.        }
{                                                                    }
{ BOOLEAN, CHAR, INTEGER and some user-defined type names can be     }
{ used as an index type. This program tests if the processor will    }
{ permit these except for INTEGER, which is included in a separate   }
{ program.                                                           }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check added. Write revised. Was previously           }
{         6.4.3.2-3                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF052(output);
type
   digits   = '0'..'9';
   colour   = (red,pink,orange,yellow);
   intensity   = (bright,dull);
var
   alltoo   : array[boolean] of boolean;
   numeric  : array[digits] of integer;
   colours  : array[colour] of intensity;
   code     : array[char] of digits;
begin
   numeric['0']:=0;
   colours[pink]:=bright;
   alltoo[true]:=false;
   code['A']:='0';
   if (numeric['0'] = 0) and (colours[pink] = bright) and
      (alltoo[true] = false) and (code['A'] = '0') then
      writeln(' PASS...6.4.3.2-2 (CONF052)')
   else
      writeln(' FAIL...6.4.3.2-2 (CONF052)')
end.
