{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.2-14, FILE=DEV156, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates because the actual parameter of an arithmetic   }
{:function must be either an integer-type or a real-type.            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV156(output);
var
   a : real;
begin
   a:=sqr('4');
   writeln(' DEVIATES...6.6.6.2-14 (DEV156)')
end.
