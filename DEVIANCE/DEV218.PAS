{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-20, FILE=DEV218, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a for statement with no do part is rejected. }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV218(output);
var
  int : integer;
begin
  for int := 3 to 5 {do}
  writeln(' DEVIATES...6.8.3.5-20 (DEV218)');
end.
