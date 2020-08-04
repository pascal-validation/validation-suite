{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.1-2, FILE=CONF002, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that upper-case and lower-case exponent-markers   }
{:are equivalent.                                                    }
{                                                                    }
{ This test is not relevant to processors with only one letter-case. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Reclassified and revised when DP7185 corrected this        }
{         loophole in earlier drafts.  Moved from test 6.1.5-6 to    }
{         current position to correspond to DP7185.                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF002(output);
var
   i : real;
begin
   { Additionally we assume that equality tests OUGHT to work under
     the conditions in this program. }
   i:=123e2;
   if i = 123E2 then
      writeln(' PASS...6.1.1-2 (CONF002)')
   else
      writeln(' FAIL...6.1.1-2 (CONF002)')
end.
