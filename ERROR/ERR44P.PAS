{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-3, FILE=ERR44P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=27                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR44P(output);
type
   unpk = array [ 1 .. 2 ] of char;
var
   a: unpk;
   z: packed array [ 1 .. 2 ] of char;
begin
   a[1] := 'a'; a[2] := 'b';
   pack(a, 1, z);
   writeln(' PRETEST...6.6.5.4-3 (ERR44P)')
end.
