{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.2.3-3, FILE=CONF045, CLASS=CONFORMANCE, LEVEL=0           }
{                                                                    }
{:This program illustrates the difficulties of when a type is        }
{:defined.                                                           }
{                                                                    }
{ It is valid Pascal, since the uses follow the defining point.      }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program CONF045(output);
var
   x: array [(male, female), male .. female ] of integer;
begin
x[male, male] := 1;
if x[pred(female), pred(female)] <> 1 then
   writeln(' FAIL...6.4.2.3-3 (CONF045)')
else
   writeln(' PASS...6.4.2.3-3 (CONF045)')
end.
