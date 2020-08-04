{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.2-19, FILE=DEV143, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since get must be supplied with a parameter.    }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV143(output);
begin
   get;
   writeln(' DEVIATES...6.6.5.2-19 (DEV143)')
end.
