{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-7, FILE=DEV204, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that an attempt to call a procedure without a     }
{:required parameter is rejected.                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV204(output);
var
  num : integer;
procedure thing(x : integer);
  begin
    num := x;
  end;
begin
  thing{missing parameter};
  writeln(' DEVIATES...6.8.2.3-7 (DEV204)');
end.
