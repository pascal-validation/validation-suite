{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.3.3-13, FILE=ERR05P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR05P(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a:(m:integer;
                     l:integer);
                  b:(n:integer;
                     o:integer)
             end;
   i : integer;
begin
   variant.n:=1;
   variant.o:=1;
   variant.m:=1;
   i:=variant.m;
   writeln(' PRETEST...6.4.3.3-13 (ERR05P)')
end.
