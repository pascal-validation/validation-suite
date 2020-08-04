{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-29, FILE=DEV235, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test checks that a case statement with no case-list-elements  }
{:is rejected.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV235(output);
var
  int : integer;
begin
  int := 3;
  case int of
    {empty};
  end;
  writeln(' DEVIATES...6.8.3.9-29 (DEV235)');
end.
