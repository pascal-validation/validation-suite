{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.3.3-10, FILE=ERR02P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=02                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR02P(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a: (m:integer);
                  b: (n:integer)
             end;
   i : integer;
begin
   variant.tagfield:=a;
   variant.m:=1;
   i:=variant.m;
   writeln(' PRETEST...6.4.3.3-10 (ERR02P)')
end.
