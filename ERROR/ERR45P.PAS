{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-4, FILE=ERR45P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=28                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR45P(output);
type
   bit = 0 .. 1;
   unpk = array [ 0 .. 3 ] of bit;
   pk = packed array [ 1 .. 4 ] of bit;
var
   a: unpk;
   z: pk;
   i: 0 .. 3;
begin
   for i := 0 to 3 do
      a[i] := 0;
   pack(a, 0, z);
   writeln(' PRETEST...6.6.5.4-4 (ERR45P)')
end.
