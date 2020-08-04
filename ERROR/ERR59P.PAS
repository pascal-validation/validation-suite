{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.5-6, FILE=ERR59P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=40                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR59P(output);
var
   fyle    : text;
   endfyle : boolean;
begin
   rewrite(fyle);
   endfyle:= eof(fyle);
   writeln(' PRETEST...6.6.6.5-6 (ERR59P)')
end.
