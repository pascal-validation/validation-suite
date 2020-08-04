{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-14, FILE=DEV248, CLASS=DEVIANCE, LEVEL=0              }
{                                                                    }
{:This test deviates since the expression 'e' can only be of real    }
{:type when 'FracDigits' is used in a write procedure.               }
{                                                                    }
{ Modification History :                                             }
{   V5.1: New test by A. W. Idema ( NPL Nov 1987 ).                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV248(output);
var
   f : text;
   e : integer;
   TotalWidth : integer;
   FracDigits : integer;
begin
     rewrite(f);
     e := 3;
     TotalWidth := 4;
     FracDigits := 2;
     write(f,e:TotalWidth:FracDigits);
     writeln(' DEVIATES...6.9.3.1-14 (DEV248)')
end.
