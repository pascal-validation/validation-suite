{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-5, FILE=ERR46P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=29                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR46P(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 0 .. 15;
begin
   for i := 0 to 15 do
      z[i] := true;
   unpack(z, a, 1);
   writeln(' PRETEST...6.6.5.4-5 (ERR46P)')
end.
