{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.1-1, FILE=CONF049, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that array, set, file and record types can be     }
{:declared as packed.                                                }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised. Was previously 6.4.3.1-3.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF049(output);
type
   urray    = packed array[1..10] of char;
   rekord   = packed record
                  bookcode : integer;
                  authorcode : integer
              end;
   fyle     = packed file of urray;
   card     = (heart,diamond,spade,club);
   sett     = packed set of card;
begin
   writeln(' PASS...6.4.3.1-1 (CONF049)')
end.
