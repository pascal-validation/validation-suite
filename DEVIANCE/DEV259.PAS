{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-17, FILE=DEV259, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests that EOF cannot be applied to standard input    }
{:when input is not program parameter.                               }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test suggested by Mike Oakes of Prospero Software.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV259(output);
begin
     if not eof then writeln(' DEVIATES...6.10-17 (DEV259)')
                else writeln(' DEVIATES...6.10-17 (DEV259)')
end.
