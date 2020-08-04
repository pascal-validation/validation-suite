{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.2-13, FILE=DEV123, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that the type of a function declared forward      }
{:which is then re-defined between forward and actual specification  }
{:is detected.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV123(output);
var
  num : real;
function fun : integer; forward;
function fun : real;
  begin
    fun := 1.0;
  end;
begin
  num := fun;
  writeln(' DEVIATES...6.6.2-13 (DEV123)');
end.
