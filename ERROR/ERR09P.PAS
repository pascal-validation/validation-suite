{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.6-11, FILE=ERR09P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=01                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR09P(output);
type
   colour = (red,pink,orange,yellow,green);
var
   v     : colour;
   urray : array[red..orange] of boolean;
begin
   v:=pink;
   urray[succ(v)]:=true;
   writeln(' THE ORDINAL VALUE OF V IS ', ord(v));
   writeln(' PRETEST...6.4.6-11 (ERR09P)')
end.
