{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.6.2-5, FILE=ERR50P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=34                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR50P(output);
var
   m    : real;
   i, j : integer;
begin
   i:=256;
   j:=i*2;
   j:=j-252;
   m:=sqrt(j-i);
   writeln(' PRETEST...6.6.6.2-5 (ERR50P)')
end.
