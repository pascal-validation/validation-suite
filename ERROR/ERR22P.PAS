{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-8, FILE=ERR22P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=10                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR22P(output);
var
   f : text;
begin
   rewrite (f);
   page(f);
   writeln(' PRETEST...6.6.5.2-8 (ERR22P)')
end.
