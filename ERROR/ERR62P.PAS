{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-8, FILE=ERR62P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=45                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR62P(output);
var
   i, j, k : integer;
begin
   i:=6;
   j:=1;
   k:=i div j;
   writeln(' THE VALUE OF K IS ',k);
   writeln(' PRETEST...6.7.2.2-8 (ERR62P)')
end.
