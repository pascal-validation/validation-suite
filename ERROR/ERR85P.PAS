{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.3.1-7, FILE=ERR85P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=58                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR85P(output);
var
   f:text;
   r,s,t:real;
   fd:integer;
begin
   rewrite(f);
   r:=0.9;
   s:=0.0;
   t:=1.1;
   fd:=pred(2);
   write(f,r,s:10:fd,t);
   writeln(' PRETEST...6.9.3.1-7 (ERR85P)')
end.
