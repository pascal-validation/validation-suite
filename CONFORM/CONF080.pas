{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-2, FILE=CONF080, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks type compatibility of subranges.                  }
{                                                                    }
{ Two types are compatible if they are identical or if one is a      }
{ subrange of the other, or if both are subranges of the same type.  }
{ This program tests these points, but with only subranges of the    }
{ same type having some overlap.                                     }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Test revised and improved. Was previously 6.4.5-6.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF080(output);
type
   colour   = (red,pink,orange,yellow,green,blue,brown);
   colourtoo= colour;
var
   col1  : colour;
   col2  : colourtoo;
   subcol1  : red..yellow;
   subcol2  : orange..blue;
   counter : 0..3;
begin
   counter := 0;
   col1:=red;
   col2:=red;
   if col1 = col2 then counter:=counter+1;
   subcol1:=red;
   if col1 = subcol1 then counter:=counter+1;
   subcol1:=yellow;
   subcol2:=yellow;
   if subcol1 = subcol2 then counter:=counter+1;
   if counter = 3 then
      writeln(' PASS...6.4.5-2 (CONF080)')
   else
      writeln(' FAIL...6.4.5-2 (CONF080)')
end.
