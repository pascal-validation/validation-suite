{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-10, FILE=ERR24P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=13                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR24P(output);
var
   f : file of integer;
begin
   rewrite (f);
   write(f,42);
   reset(f);
   writeln(' PRETEST...6.6.5.2-10 (ERR24P)')
end.
