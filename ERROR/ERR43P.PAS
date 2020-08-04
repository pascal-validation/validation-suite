{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-2, FILE=ERR43P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=26                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR43P(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 1 .. 16;
begin
   for i := 1 to 16 do
      a[i] := true;
   pack(a, 1, z);
   writeln(' PRETEST...6.6.5.4-2 (ERR43P)')
end.
