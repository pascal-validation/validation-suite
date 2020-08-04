{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.5.5-2, FILE=ERR15P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=06                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR15P(output);
var
   fyle : text;
procedure naughty(var f : char);
   begin
      if f='H' then
         ;
   end;
begin
   rewrite(fyle);
   fyle^:='H';
   naughty(fyle^);
   writeln(' PRETEST...6.5.5-2 (ERR15P)')
end.
