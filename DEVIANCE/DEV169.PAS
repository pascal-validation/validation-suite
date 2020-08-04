{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-19, FILE=DEV169, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that mal-formed set constructor is rejected.      }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV169(output);
type
  numset = set of 1..10;
var
  set1 : numset;
begin
  set1 := [ 1, {missing}, 10];
  writeln(' DEVIATES...6.7.1-19 (DEV169)');
end.
