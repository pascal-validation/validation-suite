{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.6-12, FILE=ERR10P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=50                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR10P(output);
type
   colour = (red,pink,orange,yellow,green,blue);
   subone = red..orange;
   subtwo = pink..yellow;
var
   setone : set of subtwo;
   settwo : set of subtwo;
begin
   settwo:=[pink,yellow];
   setone:=settwo;
   writeln(' PRETEST...6.4.6-12 (ERR10P)')
end.
