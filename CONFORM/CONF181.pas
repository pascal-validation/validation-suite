{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.8.3.9-23, FILE=CONF181, CLASS=CONFORMANCE, LEVEL=0          }
{                                                                    }
{:This test checks that if the statement of the for statement is not }
{:executed, the initial-value and the final-value do not have to be  }
{:assignment-compatible with the type possessed by the               }
{:control-variable.                                                  }
{                                                                    }
{                                                                    }
{ Modification History :                                             }
{   V4.1: New test.                                                  }
{   V4.3: Above comment re-worded for clarity.                       }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF181(output);
var
   i : 0..10;
begin
   for i := maxint to maxint - 1 do;
   writeln(' PASS...6.8.3.9-23 (CONF181)')
end.
