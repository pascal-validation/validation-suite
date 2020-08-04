{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.2-5, FILE=DEV070, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:Strings must have a subrange of integers as an index-type.         }
{                                                                    }
{ It is incorrect to have a subrange of an enumerated-type as the    }
{ index-type, even if the ord of the lower bound is one.             }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Comment changed.                                           }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV070(output);
type
   colour = (red,blue,yellow,green);
   cl1 = blue..green;
var
   s:packed array[cl1] of char;
begin
   s:='ABC';
   writeln(' DEVIATES...6.4.3.2-5 (DEV070)')
end.
