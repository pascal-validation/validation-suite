{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-7, FILE=DEV255, CLASS=DEVIANCE, LEVEL=0                  }
{                                                                    }
{:This test deviates because the program-parameter has not been      }
{:declared in the variable-declaration-part.                         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V4.2: Test moved.                                                }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV255(f, output);
begin
   writeln(' DEVIATES...6.10-7 (DEV255)')
end.
