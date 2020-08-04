{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.2.4-7, FILE=DEV177, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This program deviates since both operands of a set union operation }
{:must possess set-types.                                            }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV177(output);
type
   colour = (blue, green, yellow, pink, red);
   colourset = set of colour;
var
   cc, union : colourset;
begin
   cc:=[blue, green];
   union:=cc + yellow;
   writeln(' DEVIATES...6.7.2.4-7 (DEV177)')
end.
