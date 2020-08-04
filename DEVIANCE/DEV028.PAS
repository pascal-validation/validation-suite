{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.1.7-16, FILE=DEV028, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks that use of double-quote (") to delimit an output }
{:text string is rejected.                                           }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test, suggested by Peter Robertson.                    }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV028(output);
begin
  writeln(" DEVIATES...6.1.7-16 (DEV028)");
end.
