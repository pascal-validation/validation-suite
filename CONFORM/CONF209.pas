{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-3, FILE=CONF209, CLASS=CONFORMANCE, LEVEL=0              }
{                                                                    }
{:The identifier after 'program' has no significance within a        }
{:program. Hence this program should be acceptable.                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test derived from a processor bug.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF209(output);
var
   t6p10d3: integer;
begin
   t6p10d3 := 1;
   writeln(' PASS...6.10-3 (CONF209)')
end.
