{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.3.3-11, FILE=ERR03P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR03P(output);
type
   two = (a,b);
var
   variant : record
               case tagfield:two of
                  a : (m : integer;
                       l : integer);
                  b : (n : integer;
                       o : integer)
             end;
   i : integer;
begin
   variant.tagfield:=b;
   variant.n:=1;
   variant.o:=1;
   variant.tagfield:=b;
   variant.n:=1;
   i:=variant.o;
   writeln(' PRETEST...6.4.3.3-11 (ERR03P)')
end.
