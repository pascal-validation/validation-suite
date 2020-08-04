{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ PRETEST 6.6.5.4-6, FILE=ERR47P, CLASS=ERRORHANDLING, LEVEL=0,      }
{ NUMBER=30                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program ERR47P(output);
type
   unpk = array [ 1 .. 2 ] of char;
var
   a: unpk;
   z: packed array [ 1 .. 2 ] of char;
begin
   z:= 'ab';
   unpack(z, a, 1);
   writeln(' PRETEST...6.6.5.4-6 (ERR47P)')
end.
