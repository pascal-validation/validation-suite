{                Pascal Validation Suite  Version 5.7                }
{                                                                    }
{          (C) Copyright 1982, British Standards Institution         }
{                                                                    }
{ TEST 6.6.3.7.1-9, FILE=LEV1F18, CLASS=DEVIANCE, LEVEL=1            }
{                                                                    }
{:This test checks that type real is not permitted as an index-type  }
{:of a conformant array schema.                                      }
{                                                                    }
{ Note that this is invalid even if no call is made.                 }
{                                                                    }
{ Modification History :                                             }
{   V3.1: New test.                                                  }
{   V5.2: File header comments reformatted and file name added to    }
{         TEST line and output lines.                                }
{         Output on pass reformatted for new report style.           }
{                                                                    }

program LEV1F18(output);

procedure p(var x: array [l..u: real] of integer);
   begin
   end;
begin
writeln(' DEVIATES...6.6.3.7.1-9 (LEV1F18)')
end.
