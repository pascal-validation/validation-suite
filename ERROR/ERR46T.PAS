{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-5, FILE=ERR46T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=29                                                          }
{                                                                    }
{:This program causes an error to occur by use of the procedure      }
{:unpack such that the parameter of ordinal-type is not assignment   }
{:compatible with the index-type of the unpacked array parameter.    }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR46T(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 0 .. 15;
begin
   writeln(' ERROR...6.6.5.4-5 (ERR46T)');
   for i := 0 to 15 do
      z[i] := true;
   unpack(z, a, 0);
   writeln(' ERROR NOT DETECTED...6.6.5.4-5 (D.29)')
end.
