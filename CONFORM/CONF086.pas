{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.6-2, FILE=CONF086, CLASS=CONFORMANCE, LEVEL=0             }
{                                                                    }
{:This test checks the use of assignment compatibility in actual and }
{:formal parameters.                                                 }
{                                                                    }
{ Similar to 6.4.6-1.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF086(output);
type
   colour = (red,pink,yellow,green);
   subcol1 = yellow..green;
   subcol2 = set of colour;
   subcol3 = set of pink..green;
var
   a        : integer;
   b        : real;
   colour1  : colour;
   colour2  : pink..green;
   colour3  : set of colour;
   colour4  : set of yellow..green;

procedure compat(i : integer; j : real;
                 col1 : colour; col2 : subcol1;
                 col3 : subcol2; col4 : subcol3);
begin
end;

begin
   compat(2,2.4,yellow,yellow,[pink],[pink]);
   a:=2;
   b:=3.1;
   colour1:=pink;
   colour2:=green;
   colour3:=[yellow];
   colour4:=[yellow];
   compat(a,b,colour1,colour2,colour3,colour4);
   compat(a,a,colour2,colour2,colour4,colour4);
   writeln(' PASS...6.4.6-2 (CONF086)')
end.
