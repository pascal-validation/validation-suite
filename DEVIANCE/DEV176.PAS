{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-3, FILE=DEV176, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program is invalid since there are no monadic operators on    }
{:sets.                                                              }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV176(output);
var r, s, t: set of 1..10;
begin
   r := [1];
   s := [];
   t := +r;
   r := -s;
   writeln(' DEVIATES...6.7.2.4-3 (DEV176)')
end.
