{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-4, FILE=DEV061, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the lower-bound of a subrange-type should }
{:be less than or equal to the upper-bound.                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and writing revised. Was previously 6.4.2.4-3.     }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV061(output);
type
   mixedup = 100..0;
   reverse = 'Z'..'A';
begin
   writeln(' DEVIATES...6.4.2.4-4 (DEV061)')
end.
