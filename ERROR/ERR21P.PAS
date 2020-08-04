{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-7, FILE=ERR21P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=09                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR21P(output);
type
   fyle = file of integer;
var
   f : fyle;
begin
   rewrite(f);
   write(f,42);
   reset(f);
   f^ := 1234;
   writeln(' PRETEST...6.6.5.2-7 (ERR21P)')
end.
