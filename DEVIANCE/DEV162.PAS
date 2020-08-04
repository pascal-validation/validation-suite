{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.6.5-3, FILE=DEV162, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test checks that the function odd is restricted to integer    }
{:parameters.                                                        }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Spelling correction in comment, and write revised.         }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV162(output);
var
   x:real;
begin
   x:=1.0;
   if odd(x) then
      writeln(' DEVIATES...6.6.6.5-3 (DEV162), REAL ODD')
   else
      writeln(' DEVIATES...6.6.6.5-3 (DEV162), MESS - ODD')
end.
