{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-5, FILE=DEV202, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that a procedure with empty parameter brackets is }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.0 New test.                                                   }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV202(output);
var
  global : integer;
procedure proc();
  var
    local : integer;
  begin
    local := 42;
    global := local * 42;
  end;
begin
  proc( {no parameters} );
  writeln(' DEVIATES...6.8.2.3-5 (DEV202)');
end.
