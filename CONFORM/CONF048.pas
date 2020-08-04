{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-2, FILE=CONF048, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the ordinal values of a variable of          }
{:subrange-type correspond to the host-type.                         }
{                                                                    }
{ Even if a variable is of a subrange type, the values it may take   }
{ on are of its host enumeration type.                               }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test to check ord on subranges.                        }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF048(output);
type
   chesstype=(pawn,knight,bishop,castle,queen,king);
   piece=knight..king;
   century=1901..2000;
var
   year:century;
   which:piece;
begin
   year:=1980;
   which:=knight;
   if (ord(year)=1980) and (ord(which)=1) then
      writeln(' PASS...6.4.2.4-2 (CONF048)')
   else
      writeln(' FAIL...6.4.2.4-2 (CONF048)')
end.
