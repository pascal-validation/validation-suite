{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.5.3-3, FILE=DEV147, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program checks that nil cannot be a parameter of new.         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV147(output);
begin
   new(nil);
   writeln(' DEVIATES...6.6.5.3-3 (DEV147)')
end.
