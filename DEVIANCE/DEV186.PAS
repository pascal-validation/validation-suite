{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.5-9, FILE=DEV186, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates because the only relational-operators that are  }
{:permitted in a relational expression containing set operands are : }
{:'=', '<=', '>=' and '<>'.                                          }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV186(output);
var
   colourset : set of (red, green, blue, yellow);
   bool : boolean;
begin
   colourset := [green, blue];
   bool := ( (colourset > [red, green]) or
             (colourset < [blue, yellow]) );
   writeln(' DEVIATES...6.7.2.5-9 (DEV186)')
end.
