{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.3-4, FILE=CONF058, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that a tag-field may be redefined elsewhere in    }
{:the declaration part.                                              }
{                                                                    }
{ Test similar to 6.4.3.3-2.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment revised, and value test added.                     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF058(output);
type
   which = (white,black,warlock,sand);
var
   thing : which;
   polex : record
             case which:boolean of
               true: (realpart:real;
                      imagpart:real);
               false:(theta:real;
                      magnit:real)
           end;
begin
   thing := black;
   polex.which:=true;
   polex.realpart:=0.5;
   polex.imagpart:=0.8;
   if (thing = black) and polex.which then
      writeln(' PASS...6.4.3.3-4 (CONF058)')
   else
      writeln(' FAIL...6.4.3.3-4 (CONF058)')
end.
