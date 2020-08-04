{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.5-7, FILE=ERR60P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=42                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR60P(output);
var
   f       : text;
   a,b,c,d : char;
begin
   rewrite(f);
   writeln(f,'ABC');
   writeln(f,'DEF');
   reset(f);
   read(f,a,b,c);
   readln(f);
   if not eoln(f) then
      d := 'D';
   writeln(' PRETEST...6.6.6.5-7 (ERR60P)')
end.
