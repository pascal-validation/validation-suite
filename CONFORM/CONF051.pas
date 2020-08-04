{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-1, FILE=CONF051, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests all the valid productions for an array          }
{:declaration from the syntax.                                       }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised. Three-dimensional array added.            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF051(output);
type
   t1          = 0..1;
   cards       = (two,three,four,five,six,seven,eight,nine,ten,jack,
                  queen,king,ace);
   suit        = (heart,diamond,spade,club);
   hand        = array[cards] of suit;
   picturecards= array[jack..king] of suit;
   played      = array[cards] of array[heart..diamond] of boolean;
   playedtoo   = array[cards,heart..diamond] of boolean;
   a3          = array[t1] of array[t1] of array[t1] of boolean;
begin
   writeln(' PASS...6.4.3.2-1 (CONF051)')
end.
