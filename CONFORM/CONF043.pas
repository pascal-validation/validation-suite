{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-1, FILE=CONF043, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program checks the possible syntax productions for enumerated }
{:types.                                                             }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF043(output);
type
   singularitytype = (me);
   switch          = (on,off);
   maritalstatus   = (married,divorced,widowed,single);
   colour          = (red,pink,orange,yellow,green);
   cardsuit        = (heart,diamond,spade,club);
var
   i : singularitytype;
begin
   i:=me;
   writeln(' PASS...6.4.2.3-1 (CONF043)')
end.
