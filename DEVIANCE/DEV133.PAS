{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.4-5, FILE=DEV133, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that an attempt to pass a function as an actual   }
{:parameter to a procedure which requires a procedure as a formal    }
{:parameter is rejected.                                             }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV133(output);
procedure accept(procedure thing);
  begin
    thing;
  end;
function wrong : integer;
  begin
    wrong := 42;
  end;
begin
  accept(wrong);
  writeln(' DEVIATES...6.6.3.4-5 (DEV133)');
end.
