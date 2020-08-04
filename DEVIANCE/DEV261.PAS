{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.10-19, FILE=DEV261, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This checks that page cannot be applied to standard output when    }
{:output is not a program parameter.                                 }
{                                                                    }
{ Note this is an irregular test since output cannot be used in the  }
{ program header.                                                    }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test suggested by Mike Oakes, Prospero Software.       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV261;
begin
    page
end.
