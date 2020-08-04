{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.2.1-8, FILE=DEV036, CLASS=DEVIANCE, LEVEL=0                 }
{                                                                    }
{:This test checks to see that an erroneous ordering of the          }
{:declaration-parts of a program is detected.                        }
{                                                                    }
{ The Standard specifies a particular ordering:                      }
{ label/const/type/var/proc.                                         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test to test ordering of declarations.                 }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV036(output);
var
  i:integer;
type
  sr = 0..10;
procedure p(j:sr);
begin
   if j <> 3 then writeln(' THE VALUE OF J IS ', j)
end;
begin
   i := 3;
   p(i);
   writeln(' DEVIATES...6.2.1-8 (DEV036)')
end.
