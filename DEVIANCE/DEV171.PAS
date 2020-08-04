{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.2-6, FILE=DEV171, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program is invalid because the operands of the div operation  }
{:are real.                                                          }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV171(output);
var x, y: real;
begin
   x := 1.0;  y := 2.0;
   x := x div y;
   writeln(' DEVIATES...6.7.2.2-6 (DEV171)')
end.
