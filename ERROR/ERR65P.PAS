{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.7.2.2-11, FILE=ERR65P, CLASS=ERRORHANDLING, LEVEL=0,     }
{ NUMBER=46                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR65P(output);
var
   i, j, k : integer;
begin
   i:=6;
   j:=1;
   k:=i mod j;
   writeln(' PRETEST...6.7.2.2-11 (ERR65P)')
end.
