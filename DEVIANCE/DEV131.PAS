{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.3-7, FILE=DEV131, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that an actual variable-parameter of the form     }
{:'(variable)' is rejected by the processor.                         }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test from Paul Gilmartin.                              }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV131(output);
var
   x : integer;
procedure p(var y : integer);
begin
   y := y + 1;
   writeln(' DEVIATES...6.6.3.3-7 (DEV131)')
end;
begin
   x := 0;
   p((x))
end.
