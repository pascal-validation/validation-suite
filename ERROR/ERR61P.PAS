{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.5-8, FILE=ERR61P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=41                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR61P(output);
var
   f : text;
   endline : boolean;
begin
   rewrite (f);
   write (f,'end');
   reset (f);
   endline := eoln(f);
   writeln(' PRETEST...6.6.6.5-8 (ERR61P)')
end.
