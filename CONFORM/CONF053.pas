{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-3, FILE=CONF053, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that an array can have extreme index values as  }
{:its first (and only in this case) valid value.                     }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF053(output);
var
   small: array[ -maxint .. -maxint] of integer;
   large: array[  maxint ..  maxint] of integer;
begin
   small[-maxint] := 1;
   large[maxint] := small[-maxint];
   if large[maxint] <> 1 then
      writeln(' FAIL...6.4.3.2-3 (CONF053)')
   else
      writeln(' PASS...6.4.3.2-3 (CONF053)')
end.
