{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.10-11, FILE=DEV238, CLASS=DEVIANCE, LEVEL=0             }
{                                                                    }
{:This test checks that a with statement with no record identifier   }
{:is rejected.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV238(output);
type
  rec = record
          count : integer;
        end;
var
  nothing : rec;
begin
  with {nothing} do count := 0;
  writeln(' DEVIATES...6.8.3.10-11 (DEV238)');
end.
