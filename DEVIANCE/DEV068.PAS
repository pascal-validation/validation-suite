{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.3.1-5, FILE=DEV068, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the type-denoter contains an applied      }
{:occurrence of the identifier in the type-definition.               }
{                                                                    }
{ Modification History :                                             }
{   V4.0: Initial comment corrected.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV068(output);
type thing = record
             a: integer;
             b: thing
             end;
var
   x: thing;
begin
   x.a := 1;
   x.b.a := 2;
   writeln(' DEVIATES...6.4.3.1-5 (DEV068)')
end.
