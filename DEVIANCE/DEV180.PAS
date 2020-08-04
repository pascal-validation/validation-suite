{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-10, FILE=DEV180, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that / may not be used as a set operator.         }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV180(output);
type
  letter = 'A' .. 'Z';
var
  set1, set2: set of letter;
begin
  set1 := ['A' .. 'F'];
  set2 := ['A' .. 'E'];
  set1 := set1 / set2;
  writeln(' DEVIATES...6.7.2.4-10 (DEV180)');
end.
