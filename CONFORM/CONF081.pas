{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-3, FILE=CONF081, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests that two subranges of the same type with no     }
{:overlap are considered as compatible by the processor.             }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write revised. Was previously 6.4.5-7.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF081(output);
type
   color = (red,pink,orange,yellow,green,blue,brown);
var
   col1 : red..yellow;
   col2 : green..brown;
begin
   col1:=yellow;
   col2:=green;
   if col1 < col2 then writeln(' PASS...6.4.5-3 (CONF081)')
                  else writeln(' FAIL...6.4.5-3 (CONF081)')
end.
