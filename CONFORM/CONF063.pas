{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.4-1, FILE=CONF063, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program tests that set-types are permitted.                   }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Revised to add operations.                                 }
{                                                                    }

program CONF063(output);
type
   colour   = (red,blue,pink,green,yellow);
   setone   = set of colour;
   settwo   = set of blue..green;
   setthree = set of boolean;
   setfour  = set of 1..10;
   setfive  = set of 0..3;
   setsix   = set of (heart,diamond,spade,club);
var
  v1: setone;  v2: settwo;  v3:setthree;
  v4: setfour; v5: setfive; v6:setsix;
begin
  v1 := [red .. green];
  v2 := v1 - [red];
  v3 := [true] + [false];
  v4 := [11] - [11];
  v5 := [0 .. 4] * v4;
  v6 := [heart, diamond] + [spade .. club];
  if (v1 <> [red, blue, pink, green]) or
     ([blue .. green] <> v2) or
     not (true in v3) or
     ([] <> v4) or
     ([0 .. 3] * [3 .. 0] <> v5) then
       writeln(' FAIL...6.4.3.4-1')
  else
    writeln(' PASS...6.4.3.4-1 (CONF063)')
end.
