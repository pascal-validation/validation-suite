{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.3-3, FILE=ERR54P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=35                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR54P(output);
var
   reel : real;
   i    : integer;
begin
   reel := 300;
   i := trunc(reel*1.5);
   writeln(' THE VALUE OF I IS ',i);
   writeln(' PRETEST...6.6.6.3-3 (ERR54P)')
end.
