{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.1-10, FILE=ERR82P, CLASS=ERRORHANDLING, LEVEL=0,       }
{ NUMBER=55                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR82P(output);
type
   subrange = 1..10;
var
   sub : subrange;
   f : text;
begin
   rewrite(f);
   writeln(f,'1 234');
   reset(f);
   read(f,sub);
   writeln(' PRETEST...6.9.1-10 (ERR82P)')
end.
