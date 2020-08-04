{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.3-5, FILE=LEV1F36, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that the actual parameter corresponding to a      }
{:variable conformant array is not a string.                         }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F36(output);

const
   str = 'abc';
procedure p(var st: packed array [l..u: integer] of char);
   begin
   end;
begin
p(str);
writeln(' DEVIATES...6.6.3.7.3-5 (LEV1F36)')
end.
