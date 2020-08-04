{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-7, FILE=ERR48P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=31                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR48P(output);
type
   bit = 0 .. 1;
   unpk = array [ 0 .. 3 ] of bit;
   pk = packed array [ 1 .. 4 ] of bit;
var
   a: unpk;
   z: pk;
   i: 1 .. 4;
begin
   for i := 1 to 4 do
      z[i] := 0;
   unpack(z, a, 0);
   writeln(' PRETEST...6.6.5.4-7 (ERR48P)')
end.
