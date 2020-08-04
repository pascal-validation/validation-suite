{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-13, FILE=ERR27P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=17                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR27P(output);
type
   digits = (one,two,three,four);
   subrange = one..two;
var
   f : file of digits;
   sub : subrange;
begin
   rewrite(f);
   f^ := two;
   put(f);
   reset(f);
   sub := f^;
   get(f);
   writeln(' PRETEST...6.6.5.2-13 (ERR27P)')
end.
