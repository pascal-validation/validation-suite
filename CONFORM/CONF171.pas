{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-2, FILE=CONF171, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a processor will handle a case-statement     }
{:where the case-constants are not close together.                   }
{                                                                    }
{ Most processors issue a jump table for a case, regardless of its   }
{ structure. It is easy to optimise case-statements to generate      }
{ conditional statements if this is more compact. Processors which   }
{ employ simple strategies for implementation of case-statements     }
{ may fail this test.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF171(output);
var
   i,j:integer;
begin
   i:=-1000;
   for j:=1 to 2 do
      case i of
      -1000: i:=-i;
      1000: writeln(' PASS...6.8.3.5-2 (CONF171)')
      end
end.
