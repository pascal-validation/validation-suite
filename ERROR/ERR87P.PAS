{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.5-4, FILE=ERR87P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=09                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR87P(output);

var
   f : text;
   c : char;

begin
     rewrite(f);
     write(f,'.');
     reset(f);
     read(f,c);
     writeln(' PRETEST...6.9.5-4 (ERR87P)')
end.
