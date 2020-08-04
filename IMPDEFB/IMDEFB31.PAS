{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.7.3-1, FILE=IMDEFB31, CLASS=IMPLEMENTATIONDEFINEDBEHAVIOUR, }
{ LEVEL=0                                                            }
{                                                                    }
{:This test checks if at least 6 nested function calls are possible. }
{                                                                    }
{ Modification History :                                             }
{   V3.0: New test.                                                  }
{   V4.2: Short-form message changed and included in output.         }
{   V5.0: Short-form and output comments changed.                    }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program IMDEFB31(output);
var x: real;
begin
   x := sqrt(sqrt(sqrt(sqr(sqr(sqrt(16.0))))));
   if (x > 2.001) or (x < 1.999) then
      writeln(' FAIL...6.7.3-1 (IMDEFB31),',
              ' NESTED FUNCTION CALLS (X = ',x,')')
   else
    begin
     writeln(' OUTPUT FROM TEST...6.7.3-1');
     writeln(' At least 6 nested function calls are possible');
     writeln(' IMPLEMENTATION DEFINED BEHAVIOUR...6.7.3-1 (IMDEFB31)');
    end
end.
