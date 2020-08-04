{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.1-5, FILE=ERR80P, CLASS=ERRORHANDLING, LEVEL=0,        }
{ NUMBER=56                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR80P(output);
var
   f:text;
   r:real;
begin
   rewrite(f);
   writeln(f,'123.456ABC');
   reset(f);
   read(f,r);
   writeln(' PRETEST...6.9.1-5 (ERR80P)')
end.
