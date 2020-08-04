{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-16, FILE=DEV258, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks that a program with a missing 'end.' is rejected. }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Roberson.                     }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV258(output);
begin
  begin
    writeln(' DEVIATES...6.10-16 (DEV258)');
  end;
{end.}
