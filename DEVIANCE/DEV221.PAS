{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.7-5, FILE=DEV221, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that a repeat statement with no until part is     }
{:rejected.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V5.0: New test.                                                  }
{   V5.1: Program header changed from 'program p' to 'program t'.    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV221(output);
begin
  repeat
    writeln(' DEVIATES...6.8.3.7-5 (DEV221)');
  {until false}
end.
