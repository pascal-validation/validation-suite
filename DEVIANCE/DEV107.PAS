{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.5.3.3-1, FILE=DEV107, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates by using an array-variable (instead of a        }
{:record-variable) in a field-designator.                            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV107(output);
type
   rec = record
            a : integer;
            b : char
         end;
var
   a : array[1..10] of rec;
   b : char;
begin
   a.b := 'A';
   writeln(' DEVIATES...6.5.3.3-1 (DEV107)')
end.
