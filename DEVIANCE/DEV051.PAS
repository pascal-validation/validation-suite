{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.3-8, FILE=DEV051, CLASS=DEVIANCE, LEVEL=0                   }
{                                                                    }
{:This program repeats some checks on the incorrect use of signed    }
{:constants in other contexts.                                       }
{                                                                    }
{ The other tests are constrained to use plus because of the higher  }
{ probability that unary plus is regarded as a null operation.       }
{ Pascal-P is a frequent source of this error.                       }
{                                                                    }
{ Modification History :                                             }
{   V3.1: Test rewritten.                                            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV051(output);
const
   dot='.'; stars='****'; truth=true;
   minusdot=-dot;
   minusstars=-stars;
   minustruth=-truth;
var
   ch :char;
   bo :boolean;
   cs :packed array [1..4] of char;
begin
   ch := minusdot;
   ch := -dot;
   cs := minusstars;
   bo := minustruth;
   writeln(' DEVIATES...6.3-8 (DEV051)')
end.
