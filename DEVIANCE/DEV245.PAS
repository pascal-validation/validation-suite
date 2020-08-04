{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.9.3.1-5, FILE=DEV245, CLASS=DEVIANCE, LEVEL=0               }
{                                                                    }
{:This test deviates since the expression denoting FracDigits in the }
{:write procedure can only have integer-type.                        }
{                                                                    }
{ Modification History :                                             }
{   V4.0: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{                                                                    }

program DEV245(output);
var
   a, fd : real;
   f1    : text;
   tw    : integer;
begin
   rewrite(f1);
   a:=1.5;
   tw:=5;
   fd:=2.0;
   write(f1,a:tw:fd);
   writeln(' DEVIATES...6.9.3.1-5 (DEV245)')
end.
