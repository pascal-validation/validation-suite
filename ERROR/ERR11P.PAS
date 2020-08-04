{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.6-13, FILE=ERR11P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=08                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR11P(output);
type
   colour   = (red,pink,orange,yellow,green,blue);
   subone   = red..green;
   settwo   = set of yellow..blue;
var
   setone : set of subone;
procedure test(a : settwo);
begin
   writeln(' PRETEST...6.4.6-13 (ERR11P)')
end;

begin
   setone:=[yellow,green];
   test(setone)
end.
