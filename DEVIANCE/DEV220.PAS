{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.5-22, FILE=DEV220, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a constant cannot be used as a for loop      }
{:control variable.                                                  }
{                                                                    }
{ Modification History :                                             }
{   V5.0 New test, suggested by Peter Robertson.                     }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV220(output);
const
  con = 1;
var
  n : integer;
begin
  n := 0;
  for con := 1 to 10 do n := n + con;
  writeln(' DEVIATES...6.8.3.5-22 (DEV220)');
end.
