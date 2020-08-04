{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.1-4, FILE=IMDEFB29, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{:This test checks that at least 13 nested real expressions are      }
{:permitted.                                                         }
{                                                                    }
{ Note that the '+' is a real, not integer '+' which cannot be       }
{ determined until the final part of the expression is read.         }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.0: Short-form message and output comments changed.            }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB29(output);
var
   x : real;
begin
x := 1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+(1+2.0))))))))))));
if abs(x - 15.0) <=  0.001 then
  begin
    writeln(' OUTPUT FROM TEST...6.7.1-4');
    writeln(' At least 13 nested real expressions are permitted');
    writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.7.1-4 (IMDEFB29)');
  end
else
   writeln(' FAIL...6.7.1-4 (IMDEFB29)')
end.
