{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.2.3-4, FILE=DEV201, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that calling a procedure from within an           }
{:expression is rejected.                                            }
{                                                                    }
{ Modification History :                                             }
{   V5.0 New test.                                                   }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV201(output);
var
  int1, int2 : integer;
procedure proc(var param : integer);
  begin
    param := 3;
  end;
begin
  int1 := 3;
  int2 := 3 * proc(int1);
  writeln(int2);
  writeln(' DEVIATES...6.8.2.3-4 (DEV201)');
end.
