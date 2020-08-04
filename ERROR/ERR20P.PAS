{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-6, FILE=ERR20P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=14                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR20P(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);
   get(fyle);
   writeln(' PRETEST...6.6.5.2-6 (ERR20P)')
end.
