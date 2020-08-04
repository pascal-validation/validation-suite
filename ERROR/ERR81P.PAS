{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.1-9, FILE=ERR81P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=57                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR81P(output);
var
   ch : char;
   f : text;
begin
   rewrite(f);
   writeln(f,'ONE LINE');
   reset (f);
   while not eof(f) do
      read(f,ch);
   writeln(' PRETEST...6.9.1-9 (ERR81P)')
end.
