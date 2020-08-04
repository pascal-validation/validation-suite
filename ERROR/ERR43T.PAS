{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-2, FILE=ERR43T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=26                                                          }
{                                                                    }
{:This program causes an error to occur by use of the procedure pack }
{:such that the parameter of ordinal-type is not assignment          }
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

program ERR43T(output);
type
   pak = packed array [ 0 .. 15 ] of boolean;
var
   a: array [ 1 .. 16 ] of boolean;
   z: pak;
   i: 1 .. 16;
begin
   writeln(' ERROR...6.6.5.4-2 (ERR43T)');
   for i := 1 to 16 do
      a[i] := true;
   pack(a, 0, z);
   writeln(' ERROR NOT DETECTED...6.6.5.4-2 (D.26)')
end.
