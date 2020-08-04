{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.4.1-2, FILE=DEV053, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test deviates since the defining-point of a type-identifier   }
{:occurs at the end of its type-definition.                          }
{                                                                    }
{ The following two examples contain the use of a type-identifier in }
{ its own definition.                                                }
{                                                                    }
{ Modification History :                                             }
{   V3.0: Comment and write changed.                                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV053(output);
type
   x  = record
            xx : x
        end;
   y  = array[0..1] of y;
begin
   writeln(' DEVIATES...6.4.1-2 (DEV053)')
end.
