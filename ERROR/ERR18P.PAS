{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-4, FILE=ERR18P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=11                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR18P(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABC');
   reset(fyle);
   writeln(' PRETEST...6.6.5.2-4 (ERR18P)')
end.
