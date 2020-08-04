{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-6, FILE=DEV203, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that an attempt to pass an actual parameter to a  }
{:parameterless procedure is rejected.                               }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV203(output);
var
  num : integer;
procedure thing;
  begin
    num := 0;
  end;
begin
  thing(42);
  writeln(' DEVIATES...6.8.2.3-6 (DEV203)');
end.
