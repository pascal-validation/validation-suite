{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-14, FILE=ERR28P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=18                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR28P(output);
type
   subrange = 1..10;
var
   f : file of subrange;
   int : integer;
begin
   int := 3;
   rewrite(f);
   write(f,int*int);
   writeln(' PRETEST...6.6.5.2-14 (ERR28P)')
end.
