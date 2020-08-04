{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.5-12, FILE=DEV094, CLASS=DEVIANCE, LEVEL=0                }
{                                                                    }
{:This test checks if comparison of strings, whose lengths differ,   }
{:is rejected.                                                       }
{                                                                    }
{ The Pascal Standard permits compatibility only between             }
{ string-types having the same number of components. Some processors }
{ may allow compatibility between string-types with different        }
{ numbers of components.                                             }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Writes revised.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV094(output);
begin
   if 'CAT' < 'HOUND' then
      writeln(' DEVIATES...6.4.5-12 (DEV094), STRING(1)')
    else writeln(' DEVIATES...6.4.5-12 (DEV094), STRING(2)')
end.
