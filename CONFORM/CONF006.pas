{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.2-3, FILE=CONF006, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the implementation of the .. token.               }
{                                                                    }
{ If the lexical analyser of a Pascal processor is entirely separate }
{ from the syntax analysis, a three-character lookahead may be       }
{ required to recognize the .. token when it immediately follows an  }
{ integer.  (Processors which know that only integers are valid      }
{ in the context may not need to look ahead.)  This test checks that }
{ the processor recognizes the situation correctly - it occurs       }
{ frequently elsewhere in the package also.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from 6.1.2-8.                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF006(output);
type
   t = 8..15;
var
   m : t;
begin
   m := 11;
   writeln(' PASS...6.1.2-3 (CONF006)')
end.

