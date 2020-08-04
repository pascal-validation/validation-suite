{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-8, FILE=DEV178, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program deviates since both operands on which a set operation }
{:is performed, must have the same canonical set-of-T type.          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV178(output);
type
   weekdays = (monday, tuesday, wednesday, thursday, friday,
               saturday, sunday);
   colour   = (blue, green, red, yellow, pink);
   daysset  = set of weekdays;
   colourset= set of colour;
var
   dd, intersection : daysset;
   cc : colourset;
begin
   dd:=[friday, saturday, sunday];
   cc:=[blue, yellow];
   intersection:=dd*cc;
   writeln(' DEVIATES...6.7.2.4-8 (DEV178)')
end.
