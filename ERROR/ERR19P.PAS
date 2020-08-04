{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.2-5, FILE=ERR19P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=16                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR19P(output);
var
   fyle : text;
begin
   rewrite(fyle);
   writeln(fyle,'ABCDEFG');
   reset(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   get(fyle);
   writeln(' PRETEST...6.6.5.2-5 (ERR19P)')
end.
