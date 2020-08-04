{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.3-21, FILE=ERR42P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=04                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR42P(output);
var
   p,q:^integer;
begin
   new(p);
   p^:=5;
   q:=p;
   dispose(p);
   writeln(' PRETEST...6.6.5.3-21 (ERR42P)')
end.
