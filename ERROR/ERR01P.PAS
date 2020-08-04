{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.2.3.5-1, FILE=ERR01P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=43                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR01P(output);

procedure q;
var
   i,j : integer;
begin
   i:=2;
   j:=3
end;

procedure r;
var
   i,j : integer;
begin i := 3;
   j := i-4;
   writeln(' PRETEST...6.2.3.5-1 (ERR01P)')
end;

{Program body}
begin
   q;
   r
end.
