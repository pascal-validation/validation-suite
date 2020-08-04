{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-3, FILE=CONF087, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This program tests that an index expression is                     }
{:assignment-compatible with the index-type specified in the         }
{:definition of the array-type.                                      }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF087(output);
type
   colour = (red,pink,orange,yellow,green);
   intensity = (bright,dull);
var
   array1 : array[yellow..green] of boolean;
   array2 : array[colour] of intensity;
   array3 : array[1..99] of integer;
   colour1 : red..yellow;
   i      : integer;
begin
   array1[yellow]:=true;
   colour1:=yellow;
   array1[colour1]:=false;
   array2[colour1]:=bright;
   array3[1]:=0;
   i:=2;
   array3[i*3+2]:=1;
   writeln(' PASS...6.4.6-3 (CONF087)')
end.
