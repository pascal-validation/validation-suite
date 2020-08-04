{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.5.3.2-2, FILE=ERR12P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=01                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR12P(output);
var
   urray : array[1..10,1..10] of integer;
   i     : integer;
begin
   i:=3;
   urray[i*2,i*3]:=0;
   writeln(' PRETEST...6.5.3.2-2 (ERR12P)')
end.
