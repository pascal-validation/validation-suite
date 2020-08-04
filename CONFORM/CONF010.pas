{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.5-2, FILE=CONF010, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program simply tests if very long numbers are permitted.      }
{                                                                    }
{ The value should be representable despite its length.              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: 4-digit check added. Spaces added in writes.               }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF010(output);
const
   reel = 123.456789012345678901234567890123456789;
begin
   if (reel > 123.5) or
      (reel < 123.4) then
      writeln(' FAIL...6.1.5-2 (CONF010)')
   else
      writeln(' PASS...6.1.5-2 (CONF010)')
end.
