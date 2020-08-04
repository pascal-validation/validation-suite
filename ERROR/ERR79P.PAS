{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.1-4, FILE=ERR79P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=54                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR79P(output);
var
   f:text;
   i:integer;
begin
   rewrite(f);
   writeln(f,'123ABC');
   reset(f);
   read(f,i);
   writeln(' PRETEST...6.9.1-4 (ERR79P)')
end.
