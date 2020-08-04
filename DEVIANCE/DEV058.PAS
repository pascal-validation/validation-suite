{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-6, FILE=DEV058, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:An empty identifier-list is not permitted in an enumerated-type    }
{:definition.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test from BNI.                                         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV058(output);
type
   empty=( );
begin
   writeln(' DEVIATES...6.4.2.3-6 (DEV058)')
end.
