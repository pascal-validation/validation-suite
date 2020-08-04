{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.4-4, FILE=ERR45T, CLASS=ERRORHANDLING, LEVEL=0,         }
{ NUMBER=28                                                          }
{                                                                    }
{:This program causes an error to occur by the call of the procedure }
{:pack such that the index-type of the unpacked array is exceeded.   }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{   V5.3: Placed 'ERROR...' as the first line executed.              }
{         The error number '(D.nn)' has been added to the            }
{         'ERROR NOT DETECTED' line.                                 }
{                                                                    }

program ERR45T(output);
type
   bit = 0 .. 1;
   unpk = array [ 0 .. 3 ] of bit;
   pk = packed array [ 1 .. 4 ] of bit;
var
   a: unpk;
   z: pk;
   i: 0 .. 3;
begin
   writeln(' ERROR...6.6.5.4-4 (ERR45T)');
   for i := 0 to 3 do
      a[i] := 0;
   pack(a, 1, z);
   writeln(' ERROR NOT DETECTED...6.6.5.4-4 (D.28)')
end.
