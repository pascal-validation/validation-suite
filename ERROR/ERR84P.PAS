{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.9.3.1-3, FILE=ERR84P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=58                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR84P(output);
var
   f:text;
   r,s,t:real;
begin
   rewrite(f);
   r:=0.9;
   s:=1.0;
   t:=1.1;
   write(f,r,s:10:1,t);
   writeln(' PRETEST...6.9.3.1-3 (ERR84P)')
end.
