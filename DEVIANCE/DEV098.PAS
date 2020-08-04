{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-17, FILE=DEV098, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that an array of integers is not compatible with  }
{:a packed array of integers.                                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV098(output);
type
   range = 1..10;
var
   packarray : packed array[range] of integer;
   unpackarray : array[range] of integer;
   i : range;
begin
   for i := 1 to 10 do
      unpackarray[i] := i;
   packarray := unpackarray;
   writeln(' DEVIATES...6.4.5-17 (DEV098)')
end.
