{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.4-5, FILE=DEV062, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program checks that strings are rejected in a subrange        }
{:declaration.                                                       }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV062(output);
type
   firstindex = 'AB' .. 'CD';
begin
   writeln(' DEVIATES...6.4.2.4-5 (DEV062)')
end.
