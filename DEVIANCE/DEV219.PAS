{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-21, FILE=DEV219, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a missing control variable in a for loop is  }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV219(output);
var
  a, b : integer;
begin
  a := 0;
  b := 1;
  for {missing} := 1 to 10 do b := b + 1;
  writeln(' DEVIATES...6.8.3.5-21 (DEV219)');
end.
