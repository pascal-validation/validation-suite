{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.2-2, FILE=CONF036, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This test checks that the values within the range -maxint..+maxint }
{:are values of integer type.                                        }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Value check added. Write in case of failure revised.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF036(output);
type
   natural = 0..maxint;
   whole = -maxint..+maxint;
var
   i : natural;
   j : whole;
   k : integer;
begin
   i:=maxint;
   j:=-maxint;
   k:=maxint;
   if (i = k) and (k = -j) and (k > j) then
      writeln(' PASS...6.4.2.2-2 (CONF036)')
   else
      writeln(' FAIL...6.4.2.2-2 (CONF036)')
end.
