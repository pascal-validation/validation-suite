{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-13, FILE=DEV189, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that use of the set comparison operator between a }
{:set and a non-set type is rejected.                                }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV189(output);
type
  small = 1 .. 10;
  numset = set of small;
var
  set1 : numset;
  val : small;
begin
  set1 := [2];
  if set1 = 2 then val := 2;
  writeln(' DEVIATES...6.7.2.5-13 (DEV189)');
end.
