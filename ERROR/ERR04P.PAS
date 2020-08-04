{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.4.3.3-12, FILE=ERR04P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR04P(output);
type
   two = (a,b);
var
   variant : record
               case two of
                  a : (m : integer);
                  b : (n : integer)
             end;
   i : integer;
begin
   variant.m:=2;
   i:=variant.m;
   writeln(' PRETEST...6.4.3.3-12 (ERR04P)')
end.
