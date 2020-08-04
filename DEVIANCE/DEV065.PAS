{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-8, FILE=DEV065, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that a mal-formed subrange declaration is         }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV065(output);
type
  small = 1 .. {missing};
var
  num : small;
begin
  num := 1;
  writeln(' DEVIATES...6.4.2.4-8 (DEV065)');
end.
