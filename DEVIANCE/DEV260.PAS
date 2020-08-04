{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-18, FILE=DEV260, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This program tests that EOLN cannot be applied to standard file    }
{:input when input is not a program parameter.                       }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test suggested by Mike Oakes of Prospero Software.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV260(output);
begin
     if not eoln then writeln(' DEVIATES...6.10-18 (DEV260)')
                 else writeln(' DEVIATES...6.10-18 (DEV260)')
end.
