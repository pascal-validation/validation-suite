{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-9, FILE=ERR23P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=12                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR23P(output);
type
   fyle = file of char;
var
   f : fyle;
begin
   rewrite(f);
   f^ := 'Z';
   put(f);
   writeln(' PRETEST...6.6.5.2-9 (ERR23P)')
end.
