{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.1-1, FILE=CONF001, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks that matching upper-case and lower-case letters   }
{:are equivalent in identifiers and word-symbols if they are         }
{:permitted.                                                         }
{                                                                    }
{ This test does not apply to processors with only one letter-case.  }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Output of FAIL added.                                      }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF001(output);
var
   conform  : integer;

Begin
   BEGIN
      Conform:=1;
      CONFORM:=2;
      If conform = 2 then
         writeln(' PASS...6.1.1-1 (CONF001)')
      else
         writeln(' FAIL...6.1.1-1 (CONF001)')
   enD
end.
